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

class AddData(TransformBase):
    def __init__(self, name, value):
        self.name = name
        self.value = value

    def apply(self, cycle, previous_cycle):
        cycle.data[self.name] = self.value

class ModTransposePitch(TransformBase):
    def __init__(self, pitch_data_name, transposition):
        self.pitch_data_name = pitch_data_name
        self.transposition = transposition

    def apply(self, cycle, previous_cycle):
        if previous_cycle is not None:
            print("applying transposition")
            previous_pitch = previous_cycle.data[self.pitch_data_name]
            new_pitch = previous_pitch.transpose(self.transposition)
            print(new_pitch)
            cycle.data[self.pitch_data_name] = new_pitch

class ArrangePitch(TransformBase):
    
    def __init__(self, pitch_data_name, arrangement_properties):
        self.pitch_data_name = pitch_data_name
        self.arrangement_properties = arrangement_properties

    def apply(self, cycle, previous_cycle):
        my_music = scoretools.Container()
        
        # TO DO... handle before and after durations

        my_music.extend(scoretools.make_notes(cycle.data[self.pitch_data_name], cycle.data["measures_durations"]))
        cycle.arrangement.parts[self.arrangement_properties.part_name].extend(my_music)


class Cycle:
    """
    Represents a single cycle
    """
    data = {} # a dictionary for all kinds of music data
    flags = []
    arrangement = TokeiArrangement()

    def __init__(self):
        # measures durations used in many transformations... default to 1 measure of 4/4
        self.data["measures_durations"] = [(4,4)]


class CycleLoop:
    cycles = []
    transforms = []

    def flag_index(flag):
        """
        returns the index of the first instance of the specified flag in cycles
        """
        for i, cycle in enumerate(self.cycles):
            if flag in cycle.flags:
                return i

    def add_cycle(self, index=None, add_flags=[]):
        cycle = Cycle()
        if index is None:
            self.cycles.append(cycle)
        else:
            self.cycles.insert(index, cycle)
        cycle.flags = add_flags
        return cycle

    def add_cycle_before(self, flag, add_flags=[]):
        index = self.flag_index(flag)
        if index is not None:
            return self.add_cycle(index, add_flags)

    def add_cycle_after(self, flag, add_flags=[]):
        index = self.flag_index(flag)
        if index is not None:
            return self.add_cycle(index + 1, add_flags)

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
music.add_cycle(add_flags=['start'])
music.add_cycle()
music.add_cycle(add_flags=['start_movin'])
music.add_cycle()
music.add_cycle()
music.add_cycle(add_flags=['final'])


# is this the best way to deal with the meter and measures??
flute1_arrangement = ArrangementProperties()
flute1_arrangement.part_name="flute1"

flute2_arrangement = ArrangementProperties()
flute2_arrangement.part_name="flute2"

add_cycle_durations = AddData("measures_durations", [durationtools.Duration(4,4) for i in range(3)])
add_cycle_durations.apply_start_iter = 0
music.transforms.append(add_cycle_durations)

add_a_ji = AddData("pitch_ji", "a''")
add_a_ji.apply_start_iter = 0
music.transforms.append(add_a_ji)

add_ref_pitch = AddData("ref_pitch", pitchtools.NumberedPitch("e''"))
add_ref_pitch.apply_start_flag = 'start'
add_ref_pitch.apply_stop_flag = 'start_movin'
music.transforms.append(add_ref_pitch)

mod_ref_pitch_up1 = ModTransposePitch("ref_pitch", 1)
mod_ref_pitch_up1.apply_start_flag = 'start_movin'
music.transforms.append(mod_ref_pitch_up1)

add_stream_intervals = AddData("stream_intervals", [0, 2, 0, -2, -3, 0, -5, -7, -2, -9, 3, -2])
add_stream_intervals.apply_start_iter = 0
music.transforms.append(add_stream_intervals)

arrange_ji_flute = ArrangePitch("pitch_ji", flute1_arrangement)
arrange_ji_flute.apply_start_iter = 0
music.transforms.append(arrange_ji_flute)

arrange_ref_pitch_flute2= ArrangePitch("ref_pitch", flute2_arrangement)
arrange_ref_pitch_flute2.apply_start_iter = 0
music.transforms.append(arrange_ref_pitch_flute2)

music.apply_transforms()

music_arrangement = music.make_arrangement()

show(music_arrangement.make_score())

