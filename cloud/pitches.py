from abjad import *

from arrangement import Arrangement

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

class TallyNoParallels(TallyAppBase):
        pass

class CloudPitches:

    def __init__(self, project, pitch_lines):
        self.project = project
        # QUESTION ... better to use abjad's pitchtools.PitchArray()?
        self.pitch_lines = pitch_lines
        self.num_lines = len(pitch_lines)
        self.num_columns = len(pitch_lines[0])
        self.dont_touch_pitches = None # [[]] # for future use
        self.tally_apps = []
        
        # fill initial tallies with 0s 
        # also QUESTION: is pitch-by-pitch tally enough? or should the entire lines/columns be tallied as well?
        self.tallies = [[0] * num_columns] * num_lines
        # using a running total to avoid looping/summing up repeatedly to get total... does this even make a difference?
        self.tally_total = 0

        self.voice_ranges = [["[A3 A5]"]] # TO DO... extrapolate last entry for total # of lines/columns
        self.auto_move_into_ranges = True
        self.octave_transpositions_allowed = True

    def add_tally(self, line_index, column_index, value):
        self.tallies[line_index][column_index] += value
        self.tally_total += value

    def add_tally_app(self, tally_app):
        self.tally_apps.append(tally_app)

    def get_tallies(self):
        for line_index in range(num_lines):
            
            # line tallies for all apps
            for app in self.tally_apps:
                app.tally_line(self, line_index)
            
            for column_index in range(num_columns):
                
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
                        #cross-column tallies (e.g. voice leading) for all lines before this one
                        app.tally_pitch_across_lines(self, line_index, column_index, across_line_index) 


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

