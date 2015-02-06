from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble, TokeiFree

from calliope.tools import music_from_durations, transpose_pitches, get_pitch_number, box_music, make_harmonics, replace_pitch

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

        # self.add_part(name='harmony_3', instrument=instrumenttools.Cello(instrument_name="Harmony 3", short_instrument_name="har.3"), clef="bass")

        # use shime or not???
        # self.remove(self.parts["shime"])
        del self.parts["shime"]

        # maybe switch E and D?
        self.is_previous_instance = is_previous_instance

        self.material["pitch"]["long_cycle"]=["C#2","F#2","D2","E2"]

        self.material["pitch"]["cycle"]=["C#3","F#3","E3","D3"]

        self.material["rhythm"]["kairos_a_1"] = "c1 "
        self.material["rhythm"]["kairos_a_2"] = "c8( c4. ~ c2) "
        self.material["rhythm"]["kairos_a_3"] = "r4 r8 c8( ~ c4 c4         c2.) "
        self.material["rhythm"]["kairos_a_4"] = "c4(       c4. c8 ~ c4 c4        c2.) "
        self.material["rhythm"]["kairos_a_5"] = "c8( c8 ~     c4.) "
        self.material["rhythm"]["kairos_a_6"] = "c8( c4 c4) "
        self.material["rhythm"]["kairos_a_7"] = "c2. "
        self.material["rhythm"]["kairos_a_8"] = "c8( c8) "

        self.material["pitch"]["kairos_a"]=[["C#4",   "C#4","D4",   "C#4","E4","D4",   "C#4","E4","D4","F#4",
                            "C#4",   "C#4","D4",   "C#4","F#4","E4",   "F#4",   "C#4", "D4"]]

        self.material["rhythm"]["kairos_b"]=["""r2 c2 | c4.( c8 ~ c2) | r4 r8 c8( ~ c2 ~ | c4. c8 ~ c2 ~ | 
                            c2.) c4( | c2.) c4( | c4.) c8( ~ c8 c4.) | c4( c8 c8 c4) c4"""]

        self.material["pitch"]["kairos_b"]=[["A4","E4","A4",   "E4","F#4",   "D4","E4",   
                            "E4","A4",   "E4","A4",   "F#4","C#5","D5","E4",   "E4","A4"]]

        self.material["rhythm"]["soft_2bar_swell"] = "r8 c4.\\pp\\< ~  c2\\p\\> ~ | c1\\pp "

        self.material["rhythm"]["taiko_ji"] = "c4_don c8_do[ c_ko] " * 8
        
        self.material["rhythm"]["bar_rest"] = "R1 "

        self.material["rhythm"]["fill_notes"]="c1 "*8

        self.material["rhythm"]["taiko_fast"] = "c8_don[ c16_do c_ko] "

        self.material["rhythm"]["_s4"] = "s4 "


        self.material["kairos_a_parts"] = []
        self.material["kairos_b_parts"] = []

        self.material["wind_parts"]=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2","bassoon1","bassoon2"]
        # putting instruments high to low (trumpets first) for ease of arranging
        self.material["brass_parts"]=["trumpet1","trumpet2","horn1","horn2","horn3","horn4","trombone1","trombone2","tuba"]

        self.done = False

        #self.kai_material()


    def replace_pitch(self, material, pitch, other_pitch):
        self.material["pitch"][material] = replace_pitch(self.material["pitch"][material], pitch=pitch, other_pitch=other_pitch)


    def arrange_harmonics(self, fundamentals=None, fundamental_material=None, harmonics=[0], **kwargs):
        # TO DO... this is SO similar to arranging pitches in Bubble... maybe combine into a tools function?

        if fundamentals is None and isinstance(fundamental_material, str):
            fundamentals=self.material["pitch"][fundamental_material][0]

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

    def kai_arrange_material(self, material, *args, **kwargs):
        parts_names_material = material + "_parts" 
        if parts_names_material  in self.material:
            self.arrange_music(
                    part_names=self.material[parts_names_material], 
                    pitch_material=material, 
                    rhythm_material=material, 
                    respell=["sharps"],
                    *args, **kwargs)

    def kai_holds(self):
        self.kai_arrange_material("holds")

    def kai_harmonics(self):
        self.kai_arrange_material("harmonics")

    def kai_cloud(self):
        self.kai_arrange_material("cloud")

    def kai_cycles(self):
        if not self.done:
            self.arrange_music(part_names=["harmony_2"], pitch_material=["cycle"],rhythms=["c1 ~ c1~ c1   c1~ c1   c1~ c1 c1"])

    def kai_low(self):
        if not self.done:
            self.arrange_music(part_names=["harmony_3"], rhythm_material=["fill_notes"], pitch_material=["low"])

    def kai_kairos(self):
        self.material["rhythm"]["kairos_a"] = [" ".join(
                                [self.material["rhythm"][k] 
                                    for k in ["kairos_a_1","kairos_a_2","kairos_a_3","kairos_a_4",
                                        "kairos_a_5","kairos_a_6","kairos_a_7","kairos_a_8"]
                                ])]
        if not self.done:
            self.material["kairos_a_parts"].append("line_1")
            self.material["kairos_b_parts"].append("line_2")

        self.kai_arrange_material("kairos_a")
        self.kai_arrange_material("kairos_b")

class KaiFree(KaiMaterial, TokeiFree):
    pass

class KaiMelody(KaiMaterial):
    pass 

class KaiJi(KaiMaterial):
    def kai_material(self):
        self.add_taiko_material(self.material["rhythm"]["taiko_ji"])
 
#--------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------


class Kai1(KaiMelody, KaiFree):
    def kai_material(self):
        super().kai_material()
        # TO DO... add box music here
        self.add_taiko_material("c4_dan c8_da c8_da r2\\fermata " + "s1 "*3)
        self.material["kairos_a_parts"] = ["violinII_1"]
        self.material["rhythm"]["kairos_a_7"]="c1\\fermata "
        self.material["rhythm"]["kairos_a_8"]=""
        self.material["pitch"]["kairos_a"] = [["C#5","C#5","D5","C#5","D5"]]
        self.material["cloud_parts"]=["violinI_2","violinI_3","violinI_4","violinI_5",
                    "violinII_2","violinII_3","violinII_4","violinII_5",]
        self.material["holds_parts"] = ["violinI_1"]
        self.done = True

    def kai_cloud(self):
        self.kai_arrange_material("cloud", 
            # harmonics_make=[True]
            )

#--------------------------------------------------------------------------------------------
class Kai1Ji(KaiJi, KaiFree):
    def kai_material(self):
        super().kai_material()
        # TO DO... add box music here
        self.add_taiko_material("c4_dan  c8_da[  c8_da]^\"repeat slowing down\"  s2 | " + "s1 "*3)
        self.material["kairos_a_parts"] = ["viola_1"]
        self.material["kairos_b_parts"] = ["violinII_1"]
        self.material["cloud_parts"]=["flute1","flute2","violinI_2","violinI_3","violinI_4","violinI_5",
                    "violinII_2","violinII_3","violinII_4","violinII_5","viola_2","viola_3"]
        self.material["holds_parts"] = ["violinI_1"]
        self.done=True


#--------------------------------------------------------------------------------------------
class Kai2(KaiMelody, KaiFree):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material("r2 r4 r8[ c16 c] | c4 c8 c r2 | "  * 2)
        # # TO DO... DON'T LIKE HOW THIS IS THE 1st VIOLINS SECTION AT ALL... REALLY SHOULD RE-ARRANGE
        # (better a solo string)
        self.material["holds_parts"] = ["violinI_1", "bassoon1", "bassoon2"]
        self.material["kairos_a_parts"] = ["trumpet1"]
        self.material["kairos_b_parts"] = ["viola_1"]
        self.material["cloud_parts"]=["flute1","flute2","violinI_2","violinI_3","violinI_4","violinI_5",
                    "violinII_2","violinII_3","violinII_4","violinII_5","viola_2","viola_3"]

    def kai_kairos(self):
        super().kai_kairos()
        self.attach_dynamics(dynamics=[["p"]], part_names=["trumpet1"])
        self.attach_markup([["bucket mute"]], part_names=["trumpet1"])

#--------------------------------------------------------------------------------------------
class Kai2Ji(KaiJi):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material(("c4_dan c8_da c_da "*3 + "c4_ka r4 | ") *2)
        # # TO DO... DON'T LIKE HOW THIS IS THE 1st VIOLINS SECTION AT ALL... REALLY SHOULD RE-ARRANGE
        # (better a solo string)
        self.material["kairos_a_parts"] = ["flute1"]
        self.material["kairos_b_parts"] = ["trumpet1"]
        self.material["low_parts"] = ["bass"]

    def kai_low(self):
        self.kai_arrange_material("low", 
            transpose=[12]
            )

    # TO DO... move outa here...?
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
                fundamentals=[self.material["pitch"]["kairos_a"][0][2]],
                rhythm_material=[["bar_rest"]+["soft_2bar_swell"]*2 + ["bar_rest"]*3],
                harmonics=[9,5,4],
                transpose=[-12],
                respell=["sharps"])

#--------------------------------------------------------------------------------------------
class Kai3(KaiMelody):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material("R1 " * 8)  
#--------------------------------------------------------------------------------------------
class Kai3Ji(KaiJi):
    def kai_material(self):
        super().kai_material()
        # self.add_taiko_material("r4_tsu c8_do c8_ko "*8 ) # offbeat ji?
#--------------------------------------------------------------------------------------------
class Kai4(KaiMelody):
    def kai_material(self):
        super().kai_material()
        self.add_taiko_material("""r4_tsu c4_don r4_tsu c4_don | 
                    r4_tsu c8_do[ c8_don] r8[ c8_do] c4_don | 
                    c4_don c8_do c8_ko r4_tsu c8_do c8_ko 
                    r4_tsu c8_do[ c8_don] r8[ c8_do] c4_don | """)  
#--------------------------------------------------------------------------------------------
class Kai4Ji(KaiJi):
    def kai_material(self):
        super().kai_material()
        # self.add_taiko_material("c8_do-> c_ko c_do-> c_ko-> "*8) # all hits ji?
#--------------------------------------------------------------------------------------------
class Kai5(KaiMelody):
    def kai_material(self):
        super().kai_material()
        fast = self.material["rhythm"]["taiko_fast"]
        self.add_taiko_material("r2 r4 "+fast+"c8_do c_ko r4 r4 "+fast+"c8_do[ c_ko] "*2 +"r4 "+fast+"c8_do[ c_ko] "*3 + fast)  
#--------------------------------------------------------------------------------------------
class Kai5Ji(KaiJi):
    def kai_material(self):
        super().kai_material()
#--------------------------------------------------------------------------------------------
class Kai6(KaiMelody):
    def kai_material(self):
        super().kai_material()
        fast = self.material["rhythm"]["taiko_fast"]
        self.add_taiko_material((fast + "c8_don c8_don ")*4 + "c8_do[ c_do] c_do[ c_don] r[ c_do] " + fast + "c16_do[ c_ko c8_don] r[ c_don] r[ c_do] c4_don ") 
#--------------------------------------------------------------------------------------------
# use this one or not??
class Kai6All(Kai6):
    def kai_material(self):
        super().kai_material()
