from abjad import *

from arrangement import TokeiArrangement


# cycles and transformations...

# a cycle includes:
#  - musical data (e.g. key pitches, sequences/matrices, focus instruments, )

# transformations:
# - add musical data (all musical data added via transformations in the first place)


# transformations can be applied to:
# - all 

#question... multiple simultaneous cicles going on?? (assume no)

#
class TransformBase:

    apply_start_flag = None
    apply_stop_flag = None
    apply_start_iter = None # the cycle iteration to start on... if negative, will count from the end (e.g. -1 will start on the last cycle, -2 on the second to last)
    apply_stop_iter = None # the cycle iteration to stop on... likewise, if negative, will count from the end
    apply_flags = []
    is_loop_active = False

    def is_active(self, loop_iter, loop_total, flags):
        # make "loop inactive" if this cycle is flagged with the loop stop flag or iteration 
        # (note we give priority to stopping over starting... if they ever both apply)
        if (
            self.apply_stop_flag in flags or 
            loop_iter == self.apply_stop_iter or 
            (self.apply_stop_iter is not None and self.apply_stop_iter < 0 and loop_iter == self.apply_stop_iter + loop_total)
        ):
            self.is_loop_active = False
        # otherwise make "loop active" if this cycle is flagged with the loop start flag or iteration 
        elif (
            self.apply_start_flag in flags or 
            loop_iter == self.apply_start_iter or 
            (self.apply_start_iter is not None and self.apply_start_iter < 0 and loop_iter == self.apply_start_iter + loop_total)
        ):
            self.is_loop_active = True        

        return self.is_loop_active or any(f in self.apply_flags for f in flags)


    def apply(self, cycle, previous_cycle):
        pass

class ArrangementProperties():
    part_name = None
    before_durations = None
    durations = None
    after_durations = None
    transposition = 0

class AddPitch(TransformBase):
    def __init__(self, data_name, pitch):
        self.data_name = data_name
        self.pitch = pitch

    def apply(self, cycle, previous_cycle):
        cycle.data[self.data_name] = self.pitch

class ArrangePitch(TransformBase):
    
    def __init__(self, data_name, arrangement_properties):
        self.data_name = data_name
        self.arrangement_properties = arrangement_properties

    def apply(self, cycle, previous_cycle):
        my_music = scoretools.Container()
        
        # TO DO... handle before and after durations

        my_music.extend(scoretools.make_notes(cycle.data[self.data_name], self.arrangement_properties.durations))
        cycle.arrangement.parts[self.arrangement_properties.part_name].extend(my_music)


class Cycle:
    """
    Represents a single cycle
    """
    data = {} # a dictionary for all kinds of music data
    flags = []
    arrangement = TokeiArrangement()

class CycleLoop:
    cycles = []
    transforms = []

    def __init__(self):
        self.cycles.append(Cycle())

    def apply_transforms(self):
        # question... should musical data be copied from cycle to cycle... ?
        # ...or should each cycle's data be constructed simply by replaying all the transformations each time? (assume the later)
        i = 0
        for cycle in self.cycles:
            for transform in self.transforms:
                previous_cycle = self.cycles[i-1] if i > 0 else None
                if transform.is_active(i, len(self.cycles), cycle.flags):
                    transform.apply(cycle, previous_cycle)
            i += 1

    def make_arrangement(self):
        arrangement = self.cycles[0].arrangement
        for cycle in self.cycles[1:]:
            arrangement.append_arrangement(cycle.arrangement)
        return arrangement

music = CycleLoop()

# is this the best way to deal with the meter and measures??
basic_arrangement = ArrangementProperties()
basic_arrangement.durations = [durationtools.Duration(4,4), durationtools.Duration(4,4), durationtools.Duration(4,4)]
basic_arrangement.part_name="flute1"

add_a_ji = AddPitch("ji", "a''")
add_a_ji.apply_start_iter = 0
music.transforms.append(add_a_ji)

arrange_ji_flute = ArrangePitch("ji", basic_arrangement)
arrange_ji_flute.apply_start_iter = 0
music.transforms.append(arrange_ji_flute)

music.apply_transforms()

music_arrangement = music.make_arrangement()

print(music.cycles[0].data)

show(music_arrangement.make_score())