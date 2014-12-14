from abjad import *
from arrangement import TokeiArrangement, Part, PianoStaffPart
from cycles.transform import AddData

class Cycle:
    """
    Represents a single cycle
    """
    data = {} # a dictionary for all kinds of music data
    flags = []
    arrangement = None

    def __init__(self):
        # measures durations used in many transformations... default to 1 measure of 4/4
        self.data["measures_durations"] = [(4,4)]
        # to do... don't restrict this to a tokei arrangement??
        self.arrangement = TokeiArrangement()

    def fill_skips(self):
        """
        fills empty parts in this cycle's arrangement with measures of full length skips so that cycles align properly
        """
        # TO DO... this could be better... 
        for part_name, part in self.arrangement.parts.items():
            if part.is_simultaneous:
                for part_line in part:
                    if len(part_line.select_leaves()) == 0:
                        part_line.extend(scoretools.make_spacer_skip_measures([d.pair for d in self.data["measures_durations"]]))
            elif len(part.select_leaves()) == 0:
                part.extend(scoretools.make_spacer_skip_measures([d.pair for d in self.data["measures_durations"]]))

class CycleLoop:
    cycles = []
    transforms = []

    def flag_index(self, flag):
        """
        returns the index of the first instance of the specified flag in cycles
        """
        for i, cycle in enumerate(self.cycles):
            if flag in cycle.flags:
                return i

    def add_transform(self, transform):
        self.transforms.append(transform)

    def add_data(self, name, value, **kwargs):
        self.add_transform(AddData(
                        name, 
                        value=value,
                        **kwargs
                        ))

    def add_cycle(self, index=None, add_flags=[]):
        cycle = Cycle()
        if index is None:
            self.cycles.append(cycle)
        else:
            self.cycles.insert(index, cycle)
        cycle.flags = add_flags

    def add_cycle_before(self, flag, add_flags=[]):
        index = self.flag_index(flag)
        if index is not None:
            self.add_cycle(index, add_flags)

    def add_cycle_after(self, flag, add_flags=[]):
        index = self.flag_index(flag)
        if index is not None:
            self.add_cycle(index + 1, add_flags)

    def apply_transforms(self):
        i = 0
        for cycle in self.cycles:
            for transform in self.transforms:
                previous_cycle = self.cycles[i-1] if i > 0 else None
                if transform.is_active(i, len(self.cycles), cycle.flags):
                    transform.apply(cycle, previous_cycle)
            i += 1

    def make_arrangement(self):
        for cycle in self.cycles:
            cycle.fill_skips()
        arrangement = self.cycles[0].arrangement
        for cycle in self.cycles[1:]:
            arrangement.append_arrangement(cycle.arrangement)
        return arrangement