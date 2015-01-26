from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble

from calliope.tools import music_from_durations, transpose_pitches, get_pitch_number

# any way to avoid this sys path part??

# BEFORE REHEARSAL TODAY:
# - - - kairos draft taiko parts (by 11:20)
# - - - odaiko/shime parts throughout... rough draft (by 11:40)
# - - - rough arrangement... (by 12:20)
# - - - - - - TEMPOS
# - - - - - - # of repetitions
# - - - - - - # of repetitions
# - - - kata... (by 12:40)
# - - - taiko parts inputed/adjusted and printable (or fallback time)  (by 1:20)
# - - - double check & adjust... rethink games (by 1:40)
# - - - leave to print it! (by 1:40)

#TO DO
# - fast straight hits on taiko with alternating crescendos...
# - hand-playing
# - (here or maybe another movement)... short fast series of 16th notes as accent (esp. mixed into hand playing)
# - free taiko
# - tie/slur between 2 halves of melody
# - pitch class, not exact pitch?
# - longer ties

# class KaiLine():
#     half1_pitches = "cs    cs d     cs e d       cs e d fs cd        cs d      cs fs  e       fs     cs d"
#     half1_durations = "c1 | c8 c1 r8"
#     half1 = "cs1 | cs8 d4. d2 | "
#     bass_ = "cs1 ~ | cs1 | fs1 ~ | cs1"


class KaiMaterial(TokeiBubble):
    def __init__(self, 
                time_signature=TimeSignature((4,4)), 
                measures_durations=[(4,4)]*8, 
                rest_measures="R1 "*8):

        super().__init__(name="kairos-material", time_signature=time_signature, measures_durations=measures_durations)
        self.add_part(name='line_1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 1", short_instrument_name="ln.1"))
        self.add_part(name='line_2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 2", short_instrument_name="ln.2"))
        self.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        self.add_part(name='harmony_2', instrument=instrumenttools.Cello(instrument_name="Harmony 2", short_instrument_name="har.2"), clef="bass")

        self.remove(self.parts["shime"])
        del self.parts["shime"]

        # maybe switch E and D?
        self.material["pitch"]["long_cycle"]=["C#2","F#2","D2","E2"]

        self.material["pitch"]["cycle"]=["C#3","F#3","E3","D3"]

        self.material["rhythm"]["kairos_a"]="""c1 | c8( c4. ~ c2) | r4 r8 c8( ~ c4 c4 | c2.) c4( | 
                        c4. c8 ~ c4 c4 | c2.) c8( c8 ~ | c4.) c8( c4 c4) | c2. c8( c8) """

        self.material["pitch"]["kairos_a"]=["C#4",   "C#4","D4",   "C#4","E4","D4",   "C#4","E4","D4","F#4",
                    "C#4",   "C#4","D4",   "C#4","F#4","E4",   "F#4",   "C#4", "D4"]

        self.material["rhythm"]["kairos_b"]="""r2 c2 | c4.( c8 ~ c2) | r4 r8 c8( ~ c2 ~ | c4. c8 ~ c2 ~ | 
                    c2.) c4( | c2.) c4( | c4.) c8( ~ c8 c4.) | c4( c8 c8 c4) c4"""

        self.material["pitch"]["kairos_b"]=["A4","E4","A4",   "E4","F#4",   "D4","E4",   
                    "E4","A4",   "E4","A4",   "F#4","C#5","D5","E4",   "E4","A4"]

        self.material["rhythm"]["soft_2bar_swell"] = "r8 c4.\\pp\\< ~  c2\\p\\> ~ | c1\\pp "
        self.material["rhythm"]["bar_rest"] = "R1 "

        # TO DO... add repeats / free measure around this
        fast = "c8_don c16_do c_ko "

        self.material["rhythm"]["fill_notes"]="c1 "*8

        self.material["rhythm"]["taiko_1_ji"]="c4_dan c8_da c8_da r2\\fermata " + "s1 "*3
        self.material["rhythm"]["taiko_0_line"]=self.material["rhythm"]["taiko_1_ji"] # makes looping easier
        self.material["rhythm"]["taiko_1_line"]="c4_dan  c8_da[  c8_da]^\"repeat slowing down\"  s2 | " + "s1 "*3

        self.material["rhythm"]["taiko_2_ji"] = ("c4_dan c8_da c_da "*3 + "c4_ka r4 | ")*2
        self.material["rhythm"]["taiko_2_line"]= "r2 r4 r8[ c16 c] | c4 c8 c r2 | "  * 2

        self.material["rhythm"]["taiko_3_ji"] = "c4_don\\pp c8_do c_ko "*7 + "c4_ka r4 | "
        self.material["rhythm"]["taiko_3_line"]= "R1 | "*4

        self.material["rhythm"]["taiko_4_ji"] = "r4_tsu c8_do c8_ko "*8
        self.material["rhythm"]["taiko_4_line"]= """r4_tsu c4_don r4_tsu c4_don | 
                    r4_tsu c8_do[ c8_don] r8[ c8_do] c4_don | c4_don c8_do c8_ko r4_tsu c8_do c8_ko 
                    r4_tsu c8_do[ c8_don] r8[ c8_do] c8_do[ c8_ko] | """

        self.material["rhythm"]["taiko_5_ji"] = "c8_do-> c_ko c_do-> c_ko-> "*8
        self.material["rhythm"]["taiko_5_line"]= "r2 r4 "+fast+"c8_do c_ko r4 r4 "+fast+"c8_do[ c_ko] "*2 +"r4 "+fast+"c8_do[ c_ko] "*3 + fast

        self.material["rhythm"]["taiko_6_ji"] = "c4_don\\f c8_do c8_ko " + "c4_don c8_do c8_ko "*7
        line_6_post = "c16_do[ c_ko c_do c_ko] c8_don[ c8_don] "+fast+ "c4_don "
        self.material["rhythm"]["taiko_6_line"] =  line_6_post
        self.material["rhythm"]["taiko_6_line"] += fast + "c4_don " + fast + "c4_don "
        self.material["rhythm"]["taiko_6_line"] += "c8_do[ c_ko] c8_do[ c8_don] r8[ c8_do] "+fast
        self.material["rhythm"]["taiko_6_line"] += line_6_post

    def arrange_harmonics(self, fundamentals=None, fundamental_material=None, harmonics=[0], **kwargs):
        # TO DO... this is SO similar to arranging pitches in Bubble... maybe combine into a tools function?

        if fundamentals is None and isinstance(fundamental_material, str):
            fundamentals=self.material["pitch"][fundamental_material]

        pitches = []

        for i, part_name in enumerate(kwargs["part_names"]):
            arrange_fundamental = get_pitch_number(fundamentals[i % len(fundamentals )])
            arrange_harmonic = harmonics[i % len(harmonics )]

            pitches.append([pitchtools.NumberedPitch.from_hertz(261.6 * (2**(arrange_fundamental/12)) * arrange_harmonic)])

        self.arrange_music(pitches=pitches,**kwargs)

    def prepare_score(self):
        
        self.fill_empty_parts_with_rests()

        # for part_name in self.parts:
        #     if part_name in ["taiko1","taiko2"]:
        #         text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
        #         if len(self.parts[part_name]) > 0:
        #             attach(text_length_on, self.parts[part_name][0])


class KaiFree(KaiMaterial):
    def __init__(self, time_signature=TimeSignature((4,4)), measures_durations=[(4,4)]*8):

        super().__init__(time_signature=time_signature, measures_durations=measures_durations,)

