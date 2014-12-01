from abjad import *

from arrangement import Arrangement

import random

def get_diatonic_spread(pitch_line):
    pass

class TallyAppBase:

    line_weights = None # could be used to make the tally count more at given spots
    column_weights = None # could be used to make the tally count more at given spots

    def __init__(self, line_weights=None, column_weights=None):
        self.line_weights=line_weights
        self.column_weights=column_weights

    def tally_line(self, cloud, line_index):
        pass

    def tally_column(self, cloud, column_index):
        pass

    def tally_pitch(self, cloud, line_index, column_index):
        pass

    def tally_pitch_across_lines(self, cloud, line_index, column_index, across_line_index):
        pass

    def tally_pitch_across_columns(self, cloud, line_index, column_index, across_colum_index):
        pass

class TallyMelodicIntervals(TallyAppBase):
    def __init__(self, interval_ratings=[], over_incremental_add=None, by_pitch_class=False, bidirectional=True, line_weights=None, column_weights=None):
        # default is to dock off 100 points for parallel unisons/octaves
        self.interval_ratings = interval_ratings
        self.by_pitch_class = by_pitch_class
        self.bidirectional = bidirectional
        self.over_incremental_add = over_incremental_add
        super().__init__(line_weights=line_weights, column_weights=column_weights)

    def tally_pitch(self, cloud, line_index, column_index):
        # only makes sense starting from 2nd column:
        if column_index > 0:
            melodic_interval = cloud.pitch_lines[line_index][column_index] - cloud.pitch_lines[line_index][column_index-1]
            if self.bidirectional:
                melodic_interval = abs(melodic_interval)
            if self.by_pitch_class:
                melodic_interval = melodic_interval % 12
            for i,rating in self.interval_ratings:
                if melodic_interval == i:
                    cloud.add_tally(line_index, column_index, rating)
                    cloud.add_tally(line_index, column_index - 1, rating)
            # can be used to dock for big jumps
            if self.over_incremental_add is not None:
                if abs(melodic_interval) > self.over_incremental_add[0]:
                    over_rating = (abs(melodic_interval) - self.over_incremental_add[0]) * self.over_incremental_add[1]
                    cloud.add_tally(line_index, column_index, over_rating)


class TallyParallelIntervals(TallyAppBase):
    def __init__(self, interval_ratings=[(0,-100),], by_pitch_class=True, line_weights=None, column_weights=None):
        # default is to dock off 100 points for parallel unisons/octaves
        self.interval_ratings = interval_ratings
        self.by_pitch_class = by_pitch_class
        super().__init__(line_weights=line_weights, column_weights=column_weights)

    def tally_pitch_across_lines(self, cloud, line_index, column_index, across_line_index):
        # only makes sense starting from 2nd column:
        if column_index > 0:
            melodic_interval_1 = cloud.pitch_lines[line_index][column_index] - cloud.pitch_lines[line_index][column_index-1]
            melodic_interval_2 = cloud.pitch_lines[across_line_index][column_index] - cloud.pitch_lines[across_line_index][column_index-1]
            #if motion is parallel...
            if melodic_interval_1 == melodic_interval_2:
                interval = abs(cloud.pitch_lines[line_index][column_index] - cloud.pitch_lines[across_line_index][column_index])
                if self.by_pitch_class:
                    interval = interval % 12
                for i,rating in self.interval_ratings:
                    if interval == i:
                        cloud.add_tally(line_index, column_index, rating)
                        cloud.add_tally(across_line_index, column_index, rating)


                
        

class CloudPitches:

    def __init__(self, project, pitch_lines):
        self.project = project
        # QUESTION ... better to use abjad's pitchtools.PitchArray()?
        self.pitch_lines = pitch_lines
        self.num_lines = len(pitch_lines)
        self.num_columns = len(pitch_lines[0])
        self.dont_touch_pitches = None # [[]] # for future use
        self.tally_apps = []
        
        self.reset_tally()

        self.voice_ranges = [["[A3 A5]"]] # TO DO... extrapolate last entry for total # of lines/columns
        self.auto_move_into_ranges = True
        self.octave_transpositions_allowed = True

    def reset_tally(self):
        # fill initial tallies with 0s 
        # also QUESTION: is pitch-by-pitch tally enough? or should the entire lines/columns be tallied as well?
        self.tallies = [[0 for c in range(self.num_columns)] for l in range(self.num_lines)]
        # using a running total to avoid looping/summing up repeatedly to get total... does this even make a difference?
        self.tally_total = 0        

    def add_tally(self, line_index, column_index, value):
        self.tallies[line_index][column_index] += value
        self.tally_total += value

    def add_tally_app(self, tally_app):
        self.tally_apps.append(tally_app)

    def get_tallies(self):
        self.reset_tally()
        for line_index in range(self.num_lines):
            
            # line tallies for all apps
            for app in self.tally_apps:
                app.tally_line(self, line_index)
            
            for column_index in range(self.num_columns):
                
                if line_index == 0:
                    #column tallies for all apps
                    for app in self.tally_apps:
                        app.tally_column(self, column_index)
                
                for app in self.tally_apps:
                    #note/melodic interval tallies for all apps
                    app.tally_pitch(self, line_index, column_index)

                for across_line_index in range(line_index):
                    for app in self.tally_apps:
                        #cross-line tallies (e.g. voice leading) for all lines before this one
                        app.tally_pitch_across_lines(self, line_index, column_index, across_line_index) 

                for across_column_index in range(column_index):
                    for app in self.tally_apps:
                        #cross-column tallies (e.g. overall voice direction)... QUESTION - will this even be useful?
                        app.tally_pitch_across_columns(self, line_index, column_index, across_column_index) 

    # WORTH IT...?
    # def voice_leading_interval(line_index1, line_index2, column_index):
    #     inverval_line1 = cloud[line_index1][column_index] - cloud[line_index1][column_index-1]
    #     inverval_line2 = cloud[line_index2][column_index] - cloud[line_index2][column_index-1]
    #     return interval_line1 - interval_line2 if cloud[line_index1][column_index] > cloud[line_index2][column_index] else interval_line2 - interval_line1

    def column(self, column_index):
        return [line[column_index] for line in self.pitch_lines]

    def tallies_column(self, column_index):
        return [line[column_index] for line in self.tallies]

    def worst_column_index(self):
        column_sums = [sum(self.tallies_column(c)) for c in range(self.num_columns)]
        return column_sums.index(min(column_sums))

    def column_swap2_weighted(self, column_index):
        tallies_column = self.tallies_column(column_index)
        # RESEARCH THIS STATEMENT... HOW DOES IT WORK?
        indeces_sorted = [i[0] for i in sorted(enumerate(tallies_column), key=lambda x:x[1])]
        swap1 = None
        swap2 = None
        # TO DO... document this
        for i in range(self.num_lines):
            if swap1 is not None and random.randrange(0,5) < 3:
                swap2 = indeces_sorted[i]
                print("Swapping " + str(swap1) + " with " + str(swap2) + " ... now it's ...")
                self.pitch_lines[swap1][column_index], self.pitch_lines[swap2][column_index] = self.pitch_lines[swap2][column_index], self.pitch_lines[swap1][column_index]
                break
            if random.randrange(0,2) == 0:
                swap1 = indeces_sorted[i]




    def randomize_column(self, column_index):
        # any more efficient way to do this...?        
        # TO DO... DON'T RANDOMIZE dont_touch_pitches
        # a new list for the column
        new_column = [x[column_index] for x in self.pitch_lines]
        # randomize the new column
        random.shuffle(new_column, random.random)
        for i, line in enumerate(self.pitch_lines):
            line[column_index] = new_column[i]

    def randomize_all_columns(self):
        for c in range(self.num_columns):
            self.randomize_column(c)

    def rearrange(self):
        pass
    

    def save(self):
        pass

    def load(self):
        pass

    def show(self):
        arrangement = Arrangement(project=self.project, title="Cloud Pitch Lines", name="cloud-pitches-show")
        for i, line in enumerate(self.pitch_lines):
            arrangement.add_part(name="line" + str(i), instrument=instrumenttools.Instrument(instrument_name="Line " + str(i), short_instrument_name=str(i)))
            line_music = scoretools.make_notes(line, durationtools.Duration(1,4))
            arrangement.parts["line" + str(i)].extend(line_music)

        # TO DO... remove bar lines (or barlines every note?)
        # TO DO... show scores!

        arrangement.show_pdf()

    # TO DO... figure out how to build up a library of these weigting functions... such as:
    # - no parallel pitch classes
    # - no repeated notes
    # - no triple repeated notes
    # - repetitions only allowed at certain positions
    # - minor on bottom
    # - limit voice diatonic spread
    # - small to large interval spread (and vice versa)
    # - voices going up / going down
    # - nice melodic intervals
    # - emphasize repeated notes

