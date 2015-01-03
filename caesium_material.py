from abjad import *
import os

# any way to avoid this sys path part??
import sys
sys.path.append("/Users/randallwest/Code/mirrorecho")

from tokei import TokeiArrangement
from calliope.work import Project, Arrangement
from calliope.cycles.loop import CycleLoop, Cycle
from calliope.cycles.transform import *
from calliope.cloud.pitches import * 

import copy

tokei_arrangement = TokeiArrangement()
tokei_project = tokei_arrangement.project


# ----------------------------------------------------------------------------
# TO DO - TAKE THIS OUT OF caesium.py?

def joinalter(it, delimiter):
    for x in it:
        yield delimiter
        yield x

def joinalter_2(it, delimiter):
    for x in it:
        yield delimiter
        yield x
        yield x
        yield x


class ForceData():
    def __init__(self, filename="caesium_force.dat", autoload=True):
        self.arrangement = tokei_arrangement
        self.filename = filename
        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-99), 
            TallyParallelIntervals(interval_ratings=[(0,-20), (7,-11)]), 
            TallyMelodicIntervals(interval_ratings=[(0, -99), (1,12), (2,22), (3,9), (4,9), (5,6), (6,-6), (7,-4), (10,-8), (11,-20), (12,-4)], over_incremental_multiplier=(12,-60))
        ]

        self.get_pitches()
        self.get_pitch_ranges()

        # create a new cloud... if autoload and the file exists, data will be auto loaded
        self.cloud = CloudPitches(project=tokei_project, filename=self.filename, autoload=autoload, pitch_ranges=self.force_pitch_ranges) 
        self.cloud.auto_move_into_ranges = True

        # if cloud data not already loaded, get our pitch lines, and load them
        if not self.cloud.is_loaded:
            self.get_base_lines()
            self.cloud.init_data(pitch_lines=self.get_pitch_lines())
            self.cloud.randomize_all_columns() 
        
        for app in self.tally_apps:
            self.cloud.add_tally_app(app)            

        self.cloud.move_into_ranges()

        self.cloud.get_tallies()

    def pitches_by_index(self, indices):
        return [self.force_pitches[i] for i in indices]

    def get_pitches(self):
        self.force_pitches = ["bf", "cs'", "d'", "e'", "fs'", "g'"]
        self.ma_pitch = "a'"
        self.force_harmonic_stack = [0, 3, 7]
        self.ma_harmonic_stack = [0, 1, 7]

    def get_pitch_ranges(self):
        self.force_pitch_ranges = None
    
    def get_base_lines(self):
        self.force_line_base = copy.deepcopy(self.force_pitches)
        self.ma_base = [self.ma_pitch for i in range(len(self.force_pitches))]

    def get_pitch_lines(self):
        pitch_lines = []

        for i, transpose in enumerate(self.force_harmonic_stack):
            pitch_lines.append(
                [get_pitch_number(pitch) + transpose for pitch in self.force_line_base]
                )

        for i, transpose in enumerate(self.ma_harmonic_stack):
            pitch_lines.append(
                [get_pitch_number(pitch) + transpose for pitch in self.ma_base]
                )
        return pitch_lines

    def tally_loop(self):
        self.cloud = self.cloud.tally_loop()



# ----------------------------------------------------------------------------
# TO DO... still think it would be better to inherit from CloudPitches...
class ForceCloud1(ForceData):
    def __init__(self, autoload=True):
        super().__init__(filename="caesium_force_cloud_1.dat", autoload=autoload)

    def get_pitches(self):
        super().get_pitches()
        self.force_harmonic_stack.append(7)
        self.force_harmonic_stack.append(12)
        self.ma_harmonic_stack.insert(0,0)

    def get_base_lines(self):
        self.force_line_base = [p for p in joinalter_2(self.force_pitches, self.ma_pitch)]
        self.ma_base = [self.ma_pitch for i in range(24)]

    def get_pitch_ranges(self):
        # flutes:
        self.force_pitch_ranges_high = [pitchtools.PitchRange("[" + str(i+6) + ", " + str(i+17) + "]") for i in range(24)]
        # clarinets:
        self.force_pitch_ranges_mid_high = [pitchtools.PitchRange("[" + str(i) + ", " + str(i+11) + "]") for i in range(24)]
        # oboes: (2 at a time here??)
        self.force_pitch_ranges_mid_low = [pitchtools.PitchRange("[" + str(22-i) + ", " + str((22-i)+11) + "]") for i in range(24)]
        # bassoons:
        self.force_pitch_ranges_low = [pitchtools.PitchRange("[" + str(-2-i) + ", " + str((-2-i)+11) + "]") for i in range(24)]

        self.force_pitch_ranges = []
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_high))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_high))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_high))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_high))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_low))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_low))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_low))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_low))
        self.force_pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_low))


# these are a strings cloud... that stays in place in range and pitch material...
class ForceCloud2(ForceData):
    def __init__(self, autoload=True):
        super().__init__(filename="caesium_force_cloud_2_strings.dat", autoload=autoload)

    def get_pitches(self):
        super().get_pitches()
        self.force_pitches.insert(0, self.ma_pitch)
        self.force_harmonic_stack.append(7)
        self.force_harmonic_stack.append(12)

    def get_base_lines(self):
        self.force_line_base = self.pitches_by_index([0,0,0, 1,1,1, 2,2,2,2,   3,3,3, 4,4,4,4,  5,5,5,5, 6,6,6])
        self.ma_base = [self.ma_pitch for i in range(24)]

    def get_pitch_ranges(self):
        violins_range = [pitchtools.PitchRange("[G3, G5]") for i in range(24)]
        violas_range = [pitchtools.PitchRange("[C3, C5]") for i in range(24)]
        cellos_range = [pitchtools.PitchRange("[F2, C4]") for i in range(24)]
        self.force_pitch_ranges = []
        self.force_pitch_ranges.append(copy.deepcopy(violins_range))
        self.force_pitch_ranges.append(copy.deepcopy(violins_range))
        self.force_pitch_ranges.append(copy.deepcopy(violins_range))
        self.force_pitch_ranges.append(copy.deepcopy(violins_range))
        self.force_pitch_ranges.append(copy.deepcopy(violas_range))
        self.force_pitch_ranges.append(copy.deepcopy(violas_range))
        self.force_pitch_ranges.append(copy.deepcopy(cellos_range))
        self.force_pitch_ranges.append(copy.deepcopy(cellos_range))

def exec_force_cloud_2():
    f2 = ForceCloud2()
    f2.tally_loop()


#exec_force_cloud_2()
