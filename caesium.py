from abjad import *

# QUESTION.... IS THERE ALREADY SOMETHING BUILT INTO ABJAD TO DO THIS KIND OF THING?
class IntervalRepeatCell:

    # intervals = []
    # current_start_pitch = 0

    def __init__(self, intervals=[], start_pitch= 0):
        self.intervals = intervals
        self.current_start_pitch = start_pitch
        self.make_pitches()

    def make_pitches(self):
        # a cute way to convert the list of intervals to a list of relative pitches (always starting on 0)
        relative_pitches = [sum(self.intervals[:x]) for x in range(len(self.intervals))]
        
        #now create absolute pitches from relative pitches
        pitch_numbers = [self.current_start_pitch + x for x in relative_pitches]

        self.pitches = pitchtools.PitchArrayRow(pitch_numbers)

    # TO DO... make leaves (e.g. use rests/skips)
    def next(self):
        # the new start pitch (for the next go-around) is just the sum of all the intervals:
        self.current_start_pitch += sum(self.intervals)
        self.make_pitches()
        
    def make_notes(self, durations):
        notes = scoretools.make_notes(self.pitches, durations, decrease_durations_monotonically=False)

        return notes

class PitchArrayArranger()

    voice_ranges = [[0,12]]

    dont_touch_pitches = [[]]

    octave_transpositions_allowed = True

    def __init__(self, pitch_array):
        self.pitch_array = pitch_array

    def save(self):
        pass

    def load(self):
        pass

    def show(self):
        pass

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


    def weight_melodic_interval(self, interval, position):
        pass

    def weight_voice_leading(self, harmonic_interval_1, harmonic_interval_2, position):
        pass

    def weigth_column(self, pitch_column, position):
        pass

    def weight_row(self, pitch_row):
        pass

    def arrange(self, max_tries=9):
        pass

    def get_weights(self):
        pass


score = Score([])

down4_cell = IntervalRepeatCell(intervals=[-2,-2,-1,-2], start_pitch=0)

test_staff = scoretools.Staff()

test_staff.extend(down4_cell.make_notes(durations=[(1,4)]))
down4_cell.next()
test_staff.extend(down4_cell.make_notes(durations=[(1,4)]))

score.extend([
    test_staff
    ])

show(score)

