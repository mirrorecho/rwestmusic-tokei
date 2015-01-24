from abjad import *
import os
import settings

# any way to avoid this sys path part??

#TO DO
# - muffle taiko during ma?
# - EVERYONE DIFFERENT (at least one spot!!!)
# - my copyright

from tokei import TokeiBubble

# need to import all of this?
from calliope.work import Project, Bubble
from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *
from calliope.cloud.pitches import * 
from calliope.tools import get_pitch_range, get_pitch_number, music_from_durations


import copy


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

class Stream():
    def __init__(self, ref_pitch="E4"):
        self.relative_pitches = [0, 2, 0, -2, -3, 0, -5, -7, -2, -9, 3, -2]
        self.ref_pitch = get_pitch_number(ref_pitch)
        self.next_ref_pitch = ref_pitch + 1
        # maybe durations works better as a list instead of a string?
        self.rhythm = "c8( c c) c( c4) c8( c4.) c4-- c4-- c4-- c4.-- c4.-- r4"
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
                        durations=rhythm, 
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

class ClepsydraMaterial(TokeiBubble):
    def __init__(self, time_signature=TimeSignature((4,4)), measures_durations=[(4,4)]*3 ):

        super().__init__(layout="standard", name="clepsydra-material", time_signature=time_signature, measures_durations=measures_durations )
        self.add_part(name='line_1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 1", short_instrument_name="ln.1"))
        self.add_part(name='line_2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 2", short_instrument_name="ln.2"))
        self.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        self.add_part(name='harmony_2', instrument=instrumenttools.Violin(instrument_name="Harmony 2", short_instrument_name="har.2"))
        self.add_part(name='harmony_3', instrument=instrumenttools.Cello(instrument_name="Harmony 3", short_instrument_name="har.3"), clef="bass")

        self.empty_measures = Container("R1 " * 3)

        # note, this would typically start on the pickup before a strong beat (before ichi or san)
        self.material["rhythm"]["taiko_cresc"] = "c8\\p\\<_do c_do[ c_ko] c_do[ c\\mf->_don] "
        self.material["rhythm"]["taiko_melody_1"] = "r4 r8 " + self.material["rhythm"]["taiko_cresc"] + "r8 c_don r c_don  r c_do c4->_don |  c8_da\\p\\< c_da    r c_da    c_da c_da    r c_da"
        self.material["rhythm"]["taiko_melody_2"] = "c8_da[ c_da]\\mp   c_ka[\\p c_ka]    r8  c_ka   r8  c_ka   |  c4_don\\mf   r8 c_don r8 c_don r8 " + self.material["rhythm"]["taiko_cresc"] + "r2"

        self.material["rhythm"]["taiko_do_don"] = "c8->_do c8->_don r4 r4 c8->_do c8->_do "

        self.material["rhythm"]["taiko_intro_1"] = "c8_do[ c_ko] "*8 + self.material["rhythm"]["taiko_do_don"]
        self.material["rhythm"]["taiko_intro_2"] = "c8_do c_don r4^KATA r2 | R1 | c8_do c_don r4^KATA r2 "

    def add_taiko_melody(self):
        self.arrange_music(part_names=["taiko1","taiko2"], rhythm_material=[[
            "taiko_melody_1", "taiko_melody_2"
            ]])

    def prepare_score(self):
        
        self.fill_empty_parts_with_rests()

        for part_name in self.parts:
            if part_name in ["taiko1","taiko2","odaiko"]:
                text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
                attach(text_length_on, self.parts[part_name][0])
                dynamic_up = indicatortools.LilyPondCommand('dynamicUp', 'before')
                attach(dynamic_up, self.parts[part_name][0])

music = CycleLoop(bubble_type=ClepsydraMaterial)
music.add_cycle(add_flags=["start"])
music.add_cycle(add_flags=["after_start"])
music.add_cycle()
music.add_cycle(add_flags=["before_movin"])
music.add_cycle(add_flags=["start_movin"])
music.add_cycle(add_flags=["final"])

music.add_rhythm_material("push",  "c4\\downbow " * 12)
music.add_rhythm_material("push",  "c4\\upbow " * 12, apply_flags=["after_start"])

music.arrange_music(
        pitch_material=["ji"], 
        rhythm_material = ["push"],
        part_names = ["violinI"],
        stop_flag="start_movin"
        )

music.apply_transforms()

bubble = music.make_bubble()
bubble.show_pdf()

# c = ClepsydraMaterial()
# c.add_taiko_melody()
#c.show_pdf()


# taiko_music = TaikoMaterial()
# taiko_music.line = TaikoIntro().get_music_string() + (TaikoMelody().get_music_string()) * 2

# taiko_music.show()

