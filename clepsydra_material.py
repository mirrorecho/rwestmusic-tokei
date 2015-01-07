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
from calliope.tools import get_pitch_range, get_pitch_number, get_muisic_from_durations


import copy

# are these needed?
tokei_arrangement = TokeiArrangement()
tokei_project = tokei_arrangement.project

# -------------------------------------------------------------

class WaterCloudBase():
    pass

class WaterCloudWindsUp(WaterCloudBase):
    pass

class WaterCloudStringsUp(WaterCloudBase):
    pass

class WaterCloudStringsEcho(WaterCloudBase):
    pass

class WaterCloudWindsEcho(WaterCloudBase):
    pass

# thought... perhaps all of these fragments could inherit from a base class in tools... with stuff
# for transposing, repeating, changing durations, etc.
class Stream():
    def __init__(self, ref_pitch="E4"):
        self.relative_pitches = [0, 2, 0, -2, -3, 0, -5, -7, -2, -9, 3, -2]
        self.ref_pitch = get_pitch_number(ref_pitch)
        self.next_ref_pitch = ref_pitch + 1
        # maybe durations works better as a list instead of a string?
        self.durations = "c8( c c) c( c4) c8( c4.) c4-- c4-- c4-- c4.-- c4.-- r4"
        self.split_durations = [durationtools.Duration(4,4) for i in range(3)]

    def get_transposed_pitches(self, ref_pitch=None):
        if ref_pitch is None:
            ref_pitch = self.ref_pitch
        else:
            ref_pitch = get_pitch_number(ref_pitch)
        return [p + ref_pitch for p in self.relative_pitches]

    def get_music(self, durations=None, ref_pitch=None):
        if durations is None:
            durations = self.durations
        return get_muisic_from_durations(
                        durations=durations, 
                        pitches=get_transposed_pitches(ref_pitch),
                        split_durations=self.split_durations)

# this one descends down the whole way...
class StreamHint1(Stream):
    def __init__(self, ref_pitch="E4"):
        super.__init__(ref_pitch=ref_pitch)
        self.relative_pitches = [p if i in (0,3,4,6,7,9,10) for i, p in enumerate(self.relative_pitches)]
        self.durations = "r4 c8( c c4 c4) r4 c2( c4) c2. r4"

# STILL WORKING ON THIS...
class StreamHint2(StreamHint1):
    def __init__(self, ref_pitch="E4"):
        super.__init__(ref_pitch=ref_pitch)
        self.relative_pitches[4] += 12
        self.relative_pitches = [p if i in (0,1,3,4,6,7,9,10) for i, p in enumerate(self.relative_pitches)]
        self.durations = "c8( c4) c( c4) c8( c4.) c4-- c4-- c4-- c4.-- c4.-- r4"

class StreamHint3(StreamHint2):
    pass

