from abjad import *
import os

from arrangement import TokeiArrangement
from cycles.loop import CycleLoop, Cycle
from cycles.transform import *
from cloud.pitches import * 


empty_arrangement = TokeiArrangement()

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
        self.arrangement = empty_arrangement
        self.force_pitches = ["bf", "cs'", "d'", "e'", "fs'", "g'"]
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

        self.filepath = self.arrangement.project_path + "/data/caesium_force_cloud_1.dat"
        
        if autoload and os.path.isfile(self.filepath):
            self.cloud = CloudPitches(project="rwestmusic-tokei", filepath=self.filepath)        
        else:
            self.init_cloud()            
        
        for app in self.tally_apps:
            self.cloud.add_tally_app(app)            

        self.cloud.get_tallies()


    def init_cloud(self):
        pitch_lines = []

        for i, transpose in enumerate(self.force_harmonic_stack):
            pitch_lines.append(
                [get_pitch_number(pitch) + transpose for pitch in self.force_line_base]
                )

        for i, transpose in enumerate(self.ma_harmonic_stack):
            pitch_lines.append(
                [get_pitch_number(pitch) + transpose for pitch in self.ma_base]
                )

        self.cloud = CloudPitches(pitch_lines=pitch_lines, project="rwestmusic-tokei", filepath=self.filepath)


        self.cloud.randomize_all_columns()

    def tally_loop(self):
        self.cloud = CloudPitches.tally_loop(cloud=self.cloud, filepath=self.filepath)