from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble, TokeiFree

from calliope.tools import music_from_durations, transpose_pitches, get_pitch_number, box_music

# any way to avoid this sys path part??

# BEFORE REHEARSAL TODAY:
# - - - odaiko/shime parts throughout... rough draft (by 11:40)
# - - - rough arrangement... (by 12:20)
# - - - - - - TEMPOS
# - - - - - - # of repetitions
# - - - - - - # of repetitions
# - - - kata... (by 12:40)
# - - - taiko parts inputed/adjusted and printable (or fallback time)  (by 1:20)
# - - - double check & adjust... rethink games (by 1:40)

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
                measures_durations=[(4,4)]*8, 
                rest_measures="R1 "*8,
                is_previous_instance = False,
                ):

        super().__init__(name="kairos-material", measures_durations=measures_durations)

        # use shime or not???
        # self.remove(self.parts["shime"])
        # del self.parts["shime"]

        # maybe switch E and D?
        self.is_previous_instance = is_previous_instance

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

        self.material["rhythm"]["taiko_ji"] = "c4_don c8_do[ c_ko] " * 8
        
        self.material["rhythm"]["bar_rest"] = "R1 "

        self.material["rhythm"]["fill_notes"]="c1 "*8

        self.material["rhythm"]["taiko_fast"] = "c8_don[ c16_do c_ko] "

        #self.kai_material()

    def replace_kairos_A(self, other_pitch):
        self.material["pitch"]["kairos_b"]=[p if p!= "A4" else other_pitch for p in self.material["pitch"]["kairos_b"]]

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

    # TO DO... remove this override (text length on was making stuff look weird here...)
    # def prepare_score(self):
                
    #     self.fill_empty_parts_with_rests()


    def add_taiko_material(self, rhythm):
        # note... for this to work, taiko material must always be strings I assume
        self.material["rhythm"]["taiko"] = rhythm
        self.material["rhythm"]["taiko1"] = rhythm * 2
        self.material["rhythm"]["taiko2"] = copy.deepcopy(self.previous_kai.material["rhythm"]["taiko"]) + rhythm

    # all the kai functions are placeholders that can be overriden in the inherited classes 
    def kai_material(self):
        pass

    def kai_holds(self):
        pass

    def kai_harmonics(self):
        pass

    def kai_cloud(self):
        pass

    def kai_kairos(self):
        if "kairos_a_parts" in self.material:
            self.arrange_music(
                part_names=self.material["kairos_a_parts"], 
                pitch_material=["kairos_a"], 
                rhythm_material=["kairos_a"],)
        if "kairos_b_parts" in self.material:
            self.arrange_music(
                part_names=self.material["kairos_b_parts"], 
                pitch_material=["kairos_b"], 
                rhythm_material=["kairos_b"],)

class KaiFree(KaiMaterial, TokeiFree):
    pass

class KaiMelody(KaiMaterial):
    pass 

class KaiJi(KaiMaterial):
    def kai_material(self):
        self.add_taiko_material(self.material["rhythm"]["taiko_ji"])
 
#-------------------------------------

class Kai1(KaiMelody, KaiFree):
    def kai_material(self):
        super().kai_material()
        # TO DO... add box music here
        self.add_taiko_material("c4_dan c8_da c8_da r2\\fermata " + "s1 "*3)
    

class Kai1Ji(KaiJi, KaiFree):
    def kai_material(self):
        super().kai_material()
        # TO DO... add box music here
        self.add_taiko_material("c4_dan  c8_da[  c8_da]^\"repeat slowing down\"  s2 | " + "s1 "*3)

class Kai2(KaiMelody):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material("r2 r4 r8[ c16 c] | c4 c8 c r2 | "  * 2)
        self.material["pitch"]["holds"] = [["C#4", "D4", "C#4"]]
        # TO DO... this should decresc back down!
        hold_rh = "r4 c2.\\pp\\<   ~  c2\\p r2 "
        self.material["rhythm"]["holds"] = [hold_rh + "R1 " + hold_rh + hold_rh + "R1 "]
        # # TO DO... DON'T LIKE HOW THIS IS THE 1st VIOLINS SECTION AT ALL... REALLY SHOULD RE-ARRANGE
        # (better a solo string)
        self.material["kairos_a_parts"] = ["violinI"]

    def kai_holds(self):
        self.arrange_music(part_names=["bassoon1"], pitch_material="holds", rhythm_material="holds")

    def kai_harmonics(self):
        self.arrange_harmonics( 
                part_names=["flute1","flute2","oboe1"], 
                fundamental_material="low",
                rhythm_material=[["soft_2bar_swell"]*2 + ["bar_rest"]*4],
                harmonics=[10,6,8],
                respell=["sharps"])
        # TO DO... this transpose is in theory not allowed (may not sound as I want?) ...rearrange?
        self.arrange_harmonics( 
                part_names=["violinII","oboe2","oboe3"], 
                fundamentals=[self.material["pitch"]["kairos_a"][2]],
                rhythm_material=[["bar_rest"]+["soft_2bar_swell"]*2 + ["bar_rest"]*3],
                harmonics=[9,5,4],
                transpose=[-12],
                respell=["sharps"])

class Kai2Ji(KaiJi):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material(("c4_dan c8_da c_da "*3 + "c4_ka r4 | ") *2)
        # # TO DO... DON'T LIKE HOW THIS IS THE 1st VIOLINS SECTION AT ALL... REALLY SHOULD RE-ARRANGE
        # (better a solo string)
        self.material["kairos_b_parts"] = ["violinI"]

class Kai3(KaiMelody):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material("R1 " * 8)  

class Kai3Ji(KaiJi):
    def kai_material(self):
        super().kai_material()
        # self.add_taiko_material("r4_tsu c8_do c8_ko "*8 ) # offbeat ji?

class Kai4(KaiMelody):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material("""r4_tsu c4_don r4_tsu c4_don | 
                    r4_tsu c8_do[ c8_don] r8[ c8_do] c4_don | 
                    c4_don c8_do c8_ko r4_tsu c8_do c8_ko 
                    r4_tsu c8_do[ c8_don] r8[ c8_do] c4_don | """)  

class Kai4Ji(KaiJi):
    def kai_material(self):
        super().kai_material()
        # self.add_taiko_material("c8_do-> c_ko c_do-> c_ko-> "*8) # all hits ji?

class Kai5(KaiMelody):
    def kai_material(self):
        super().kai_material()
        fast = self.material["rhythm"]["taiko_fast"]
        self.add_taiko_material("r2 r4 "+fast+"c8_do c_ko r4 r4 "+fast+"c8_do[ c_ko] "*2 +"r4 "+fast+"c8_do[ c_ko] "*3 + fast)  

class Kai5Ji(KaiJi):
    def kai_material(self):
        super().kai_material()

class Kai6(KaiMelody):
    def kai_material(self):
        super().kai_material()
        fast = self.material["rhythm"]["taiko_fast"]
        self.add_taiko_material((fast + "c8_don c8_don ")*4 + "c8_do[ c_do] c_do[ c_don] r[ c_do] " + fast + "c16_do[ c_ko c8_don] r[ c_don] r[ c_do] c4_don ") 

# use this one or not??
class Kai6All(Kai6):
    def kai_material(self):
        super().kai_material()
