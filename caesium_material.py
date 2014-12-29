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
    def __init__(self):
        self.arrangement = tokei_arrangement
        self.force_pitches = ["bf", "cs'", "d'", "e'", "fs'", "g'"]
        self.force_pitch_ranges = None
        self.ma_pitch = "a'"
        self.force_harmonic_stack = [0, 3, 7, 7, 12]
        self.ma_harmonic_stack = [0, 0, 1, 7]
        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-99), 
            TallyParallelIntervals(interval_ratings=[(0,-20), (7,-11)]), 
            TallyMelodicIntervals(interval_ratings=[(0, -99), (1,9), (2,12), (3,9), (4,9), (5,6), (6,-6), (10,-8), (11,-20), (12,-2)], over_incremental_multiplier=(12,-60))
        ]


# ----------------------------------------------------------------------------
# TO DO... still think it would be better to inherit from CloudPitches...
# (could also organize it better in conjunction with CloudPitches)
class ForceCloud1(ForceData):
    def __init__(self, autoload=True):
        super().__init__()
        self.force_line_base = [p for p in joinalter_2(self.force_pitches, self.ma_pitch)]
        self.ma_base = [self.ma_pitch for i in range(24)]

        self.filename="caesium_force_cloud_1.dat"

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

        # create a new cloud... if autoload and the file exists, data will be auto loaded
        self.cloud = CloudPitches(project=tokei_project, filename=self.filename, autoload=autoload, pitch_ranges=self.force_pitch_ranges) 
        self.cloud.auto_move_into_ranges = True

        # if cloud data not already loaded, get our pitch lines, and load them
        if not self.cloud.is_loaded:
            self.cloud.init_data(pitch_lines=self.get_pitch_lines())
            self.cloud.randomize_all_columns() 
        
        for app in self.tally_apps:
            self.cloud.add_tally_app(app)            

        self.cloud.move_into_ranges()

        self.cloud.get_tallies()


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

