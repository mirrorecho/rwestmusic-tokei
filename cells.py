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