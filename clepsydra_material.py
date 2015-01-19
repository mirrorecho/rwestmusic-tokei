from abjad import *
import os
import settings

# any way to avoid this sys path part??

#TO DO
# - if possible...
# - L / R notes on music!!
# - proportional music... 

from tokei import TokeiArrangement
from calliope.work import Project, Arrangement
from calliope.cycles.loop import CycleLoop, Cycle
from calliope.cycles.transform import *
from calliope.cloud.pitches import * 
from calliope.tools import get_pitch_range, get_pitch_number, music_from_durations


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
        # NEED TO FIX...
        # self.relative_pitches = [p if i in (0,3,4,6,7,9,10) for i, p in enumerate(self.relative_pitches)]
        self.durations = "r4 c8( c c4 c4) r4 c2( c4) c2. r4"

# STILL WORKING ON THIS...
class StreamHint2(StreamHint1):
    def __init__(self, ref_pitch="E4"):
        super.__init__(ref_pitch=ref_pitch)
        self.relative_pitches[4] += 12
        #self.relative_pitches = [p if i in (0,1,3,4,6,7,9,10) for i, p in enumerate(self.relative_pitches)]
        self.durations = "c8( c4) c( c4) c8( c4.) c4-- c4-- c4-- c4.-- c4.-- r4"

class StreamHint3(StreamHint2):
    pass


class TaikoMaterial():
    def __init__(self):
        self.line ="R1 " * 3

    def get_music_string(self):
        return self.line

    def get_music(self):
        return music_from_durations(self.get_music_string())

    def show(self):
        arr = TokeiArrangement(layout="standard", name="clepsydra-taiko-material", time_signature=TimeSignature((4,4)))
        arr.parts["taiko1"].extend(self.get_music())
        arr.show_pdf(part_names=["taiko1"])   

# better to go this route?
taikos = {}
taikos["doko"] = "r8^do c8^ko "

class TaikoIntro(TaikoMaterial):
    def __init__(self):
        self.line1 = "c8^do c^ko " * 8
        self.line1 += "c8->^do c8->^don r4 r4 c8->^do c8->^do "
        self.line2 = "c8^do c^don r4^KATA r2 | R1 | c8^do c^don r4^KATA r2 "

    def get_music_string(self):
        return (self.line1 * 2) + (self.line2 * 4)


class TaikoMelody(TaikoMaterial):
    def __init__(self):
        self.line1 = "r4^KATA r8 c8\\p\\<^do c^do c^ko c^do c\\mf->^don |  r8 c^don  r c^don  r c^do c4->^don |  c8->^do c^don r8 c^do c^do c^don r4 "
        self.line2 = "c8^do c^don r8  c^ka r8  c^ka r8  c^ka      |  c4^don   r8 c^don r8 c^don r8 c\\p\\<^do |  c^do c^ko c^do c\\mf->^don r2^KATA "

    def get_music_string(self):
        return self.line1 + self.line2

taiko_music = TaikoMaterial()
taiko_music.line = TaikoIntro().get_music_string() + (TaikoMelody().get_music_string()) * 2

taiko_music.show()

