from abjad import *

# QUESTION.... IS THERE ALREADY SOMETHING BUILT INTO ABJAD TO DO THIS KIND OF THING?
class CellPlayer:

    # intervals = []
    # current_start_pitch = 0

    def __init__(self, intervals=[], start_pitch= 0):
        self.intervals = intervals
        self.current_start_pitch = start_pitch

    # TO DO... how to incorporate rests?
    def play_notes(self, durations):
        # a cute way to convert the list of intervals to a list of relative pitches (always starting on 0)
        relative_pitches = [sum(self.intervals[:x]) for x in range(len(self.intervals))]
        
        #now create absolute pitches from relative pitches
        pitches = [self.current_start_pitch + x for x in relative_pitches]

        # the new start pitch (for the next go-around) is just the sum of all the intervals:
        self.current_start_pitch += sum(self.intervals)
        
        # make the notes
        notes = scoretools.make_notes(pitches, durations, decrease_durations_monotonically=False)

        return notes



score = Score([])

down4_cell = CellPlayer(intervals=[-2,-2,-1,-2], start_pitch=0)

test_staff = scoretools.Staff()

test_staff.extend(down4_cell.play_notes(durations=[(1,4)]))
test_staff.extend(down4_cell.play_notes(durations=[(1,4)]))

score.extend([
    test_staff
    ])

show(score)

