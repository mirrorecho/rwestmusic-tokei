from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble, TokeiFree

from calliope.tools import *

# TO DO TODAY
# - list of ideas in preparation for taiko session tomorrow (in addition to kairos above)
# - - - wadokei split (PRACTICE)
# - - - wadokei movement section (TO FIGURE OUT)
# - - - see how end of clepsyra sounds (FIGURE OUT PARTICULAR PHRASE ENDINGS)
# - - - practice caesium (esp. with split)
# - - - practice wadokei
# - - - praactice clepsydra (expiremant more with pangs... decide tentative plan)
# - studio setup (play keyboard)?
# - (maybe tech day?)
# - (maybe finalize reverls stuff?)

# SOON (important for the work)
# - numbers, letters, and heirachy naming conventions
# - able to change time signature
# - harmonic ideas DOWN IN CODE f(can view and play at piano)
# - orchestration ideas DOWN IN CODE
# - basic integration with cycles
# - better ji osc arrangement
# - - - dynamics for ji osc
# - use make_music function?
# - move some of this code structure to calliope for general use (with other movements)
# - something to help taiko players here 3 beats per measure
# - auto cautionary naturals


# (later...)
# - make kas X note-heads
# - get dividers to work
# - understand lilypond contexts!
# - make everything proportional while in working mode
# - show harmony #s above harmony reference lines for making it easier to arrange
# - ties of chords don't work in arranging music (not an issue now, since no parts will actually contain chords)

# cycle_measures = [Measure(TimeSignature((9,8)), "c4. r4. r4.") for i in range(3)  ]

# music = scoretools.Context(cycle_measures)

# staff = Staff()
# staff.extend(music)
# attach(Articulation('staccato'), staff[0][0])

# show(staff)

# TO DO... text spacing for taiko ki-ai


# TO DO... something like this could be useful as a class for more generic uses...
class WadoMaterial(TokeiBubble):
    def __init__(self, 
        measures_durations=[(9,8)]*4,
        rest_measures = "R4. R4. R4. "*4,
        ):

        super().__init__(layout="orchestra", name="wadokei-material", measures_durations=measures_durations)

        self.material["rhythm"]["rest"] = "R4. R4. R4."
        self.material["rhythm"]["taiko_rest"] = "r4._tsu r4. r4."

        self.material["rhythm"]['taiko_lead_in']="r4._tsu          c4._don          c4._don"
        self.material["rhythm"]['taiko_down_beat']="c4._don    r4.                   r4."
        self.material["rhythm"]['taiko_up_ka']="r8_tsu[ r c8_don]         r8_tsu[ r c8_do]         c8_ka    c8_ra   c8_ka"
        self.material["rhythm"]['taiko_up_groove']="r8_tsu[ r c8_don]         r8[ r c8_do]          c4_do           c8_ko"
        
        self.material["rhythm"]['taiko_split_don']="c4_do  c8_don r8[ r8 c8_don] r8[ r8 c8_do]"
        self.material["rhythm"]['taiko_split_ka']="c4_ka c8_don r8[ r8 c8_don] r8[ r8 c8_don] "

        # this is a 2-measure phrase...
        self.material["rhythm"]['taiko_conduct']="c4._don   c4._don    r4._tsu   |    c4._ka  c4._don   r4._tsu"

        # the day music is all 4 bars...
        self.material["rhythm"]["taiko_day_ji"] = "c4_do c8_ko "*8
        self.material["rhythm"]["taiko_day_swirl"] = "c4._don r4. | c4._don r4. | r4._tsu  c4._don | c4._don r4."
        self.material["rhythm"]["taiko_day_middle"] = "r4_tsu c8_do  c4._don | "*4
        self.material["rhythm"]["taiko_day_boom"] = "c4._don "*8
        
        self.material["rhythm"]["taiko_day_back_forth"] = "c4._don r4. | "*4
        
        # self.material["rhythm"]["taiko_day_end"] = "c4. "*6 + "c4_do c8_ko c4_do c8_don->"

        # not sure I'll use these...
        self.material["rhythm"]['taiko_triples']="c8_do c_ko c_do "*3
        self.material["rhythm"]['taiko_mostly_triples']="c4_do c8_ko " + "c8_do c_ko c_do "*2


        self.material["rhythm"]["ji_osc"] = "c4.( c4.) c4.-- "

        # note... this will typically start on a pickup
        self.material["rhythm"]["festival_A"] = "c4( c8)    c4 -. c8( ~ c4. c4.)     c4.--->  c4.( c4.) "
        self.material["rhythm"]["festival_B"] = "c4-- c8-.      c4. ~ c4. ~ c4. "
        # this one would typically start on the 2nd beat
        self.material["rhythm"]["festival_C"] = "c4.( c4.)        c4. ~ c4. ~ c4. "
        # this one would typically start on the downbeat
        self.material["rhythm"]["festival_D"] = "c4.( c4. c4.)       c4. ~ c4. ~ c4. "

        self.material["rhythm"]["measure_note"] = "c2. r4. "


        # self.material["rhythm"]["blow_crank_a"] = [
        #         "c4( c8) c4-. r8 c4( c8)    c4-. r8 c4( c8) c4-. r8"*2]
        # self.material["rhythm"]["blow_crank_b"] = [
        #         "c4-. r8 c4( c8) c4-. r8    c4( c8) c4-. r8 c4( c8)"*2]

        self.material["rhythm"]["blow_crank_a"] = "c4-- c8-- c4-. r8 c4-- c8--    c4-. r8 c4-- c8-- c4-. r8 "*2
        self.material["rhythm"]["blow_crank_b"] = "c4-. r8 c4-- c8-- c4-. r8    c4-- c8-- c4-. r8 c4-- c8-- "*2

        self.material["pitch"]["ji_osc"] = ["A5","B5","A5"]

        self.material["pitch"]["9ths"] = [0,14,28,42]

        # variant of this can be to anticipate the last upper harmony, then repeat it (so that it's similar to version 2 above the low G)
        self.material["pitch"]["ancient_A"] = [ 
            [["B3","D4"],   ["C#4","E4"],   ["B3","D4"],    ["C#4","E4"],],
            ["B2",          "A2",           "G2",            "A2",],
            ]

        self.material["pitch"]["ancient_B"] = [ 
            [["D4","E4","B4","F#5"],    ["C#4","B4","C#5"], ["C#4","C#5","D#5"],    ["D4","A5"],    ["B4","E5"],    ["B3","D4"], ["C#4","E4"],  "D4","G4","A4","C#5",   ],
            [["C2","D3"],               ["A2","D3","B3"],   ["G1","A2","B3"],       "F2",           "G2",                                       "A2",                   ],
            ]

        self.material["pitch"]["ancient_B_up2"] = transpose_pitches(self.material["pitch"]["ancient_B"], 2)


        # DO WE NEED A YO 3?
        # DO WE WANT AN AUTO YO (based on ref?)

        # TO DO... some better way to copy pitch material
        self.material["pitch"]["ancient_B_modulate"] = copy.deepcopy(self.material["pitch"]["ancient_B_up2"])
        self.material["pitch"]["ancient_B_modulate"][0][0] = copy.deepcopy(self.material["pitch"]["ancient_B"][0][0])
        self.material["pitch"]["ancient_B_modulate"][1][0] = copy.deepcopy(self.material["pitch"]["ancient_B"][1][0])
        self.material["pitch"]["ancient_B_modulate"][0][1] = copy.deepcopy(self.material["pitch"]["ancient_B"][0][1])
        self.material["pitch"]["ancient_B_modulate"][1][1] = copy.deepcopy(self.material["pitch"]["ancient_B"][1][1])
        self.material["pitch"]["ancient_B_modulate"][0][2] = ["C#4","D#5","D#6"]
        self.material["pitch"]["ancient_B_modulate"][1][2] = ["A2","B3"]


        # (for now, everything is in A... and will transpose as needed)
        # (the 3rd/4th pitch would be the important one here in most cases...)
        self.material["pitch"]["festival_A"] = ["F#4","G4","A4","A4","E5","A4","E5","A4"]
        self.material["pitch"]["festival_B"] = ["F#4","G4","E4","A4","E5","A4","E5","A4"]

        # TO DO... add downward lines.

        self.material["pitch"]["night_A"] = [
                # D# E festival swing goes here
            [["D#4","D#5"],             ["F#4","C#5"],  ["A4","C#5","F#5"], "C#6","F#5",    ["D#4","D#5"], ],
            [["C#2","C#3","B3"],        "A2",           ["F#2","A3"],                       ["A2","A3"]],
            ]
        # TO DO... add some of the festival lines in here (see notes)
        self.material["pitch"]["night_B"] = [
            ["F#4", "F5",   "D#4",  ["B3","D#4","G#4"],     ["G#4","D#5","F5","F#5"],   ["G#4","D#5","F5","F#5"],   ["C#4","C#5"],  ["D#4","D#5"]],
            ["B2",          "B2",                           "G#2",                      ["C#3","B3"],               ["A2","A3"],]
        ]
        # TO DO... add some of the festival lines in here (see notes)
        self.material["pitch"]["night_C"] = [
            [["Eb4","Eb5"],     ["F4","F5"],    ["G4","A5"],    "C5",   "Eb4",      "D5",       ["F4","C5"]],
            [["Eb2","Eb3"],                     ["Eb2","F3"],           ["F2","Eb3"],           "A2"],
        ]

        self.material["pitch"]["ref"] = [["A2", "A2", "A2", "G2"]]

        self.material["yo_stack"] = [ 36, 26, 24, 12, -2]

        self.material["rhythm"]["ref"] = "c4. ~ c4. ~ c4. " *4

        # NOTE... can use transposition of night harmonies 2 and 3 
        # in order to move up to the end of the night music!

        # BUT... HARMONIES FOR 3 may not be dark enough?

        self.material["part"]["brass"]=["trumpet1","trumpet2","horn1","horn2","horn3","horn4","trombone1","trombone2","tuba"]

        self.material["pitch"]["day_A"] = [
            [],
            [],
        ]

        self.make_yo()

    def reverse_yo(self):
        return [
            [  r[len(r)-p-1] for p in range(len(r))] for r in self.material["pitch"]["yo"]
        ]


    def make_yo(self, num_columns=12):
        repeat_yos = round(num_columns / len(self.material["pitch"]["ref"][0]))
        self.material["pitch"]["yo"] = []
        
        for s in self.material["yo_stack"]:
            yo_row = []
            for p in self.material["pitch"]["ref"][0]:
                for i in range(repeat_yos):
                    yo_row.append(get_pitch_number(p) + s)

            self.material["pitch"]["yo"].append(yo_row)


        # the ji osc...
    def add_orch_ji(self):
        self.arrange_music(
                    rhythm_material= [
                        ["ji_osc", "ji_osc", "rest", "rest"], 
                        ["rest", "rest", "ji_osc", "ji_osc"],  
                        ],
                    pitch_material = ["ji_osc"], 
                    part_names = ["flute1", "flute2"]
            )



class Intro(WadoMaterial):
    def __init__(self):
        super().__init__()

        # the intro is pretty much all in B-ish (dis)
        self.material["pitch"]["ref"] = [["B2","B2","B2","B2"]]

        self.material["cresc_a_parts"] = ["clarinet1", "clarinet2", "horn1", "horn2", "horn3","horn4"]
        self.material["cresc_b_parts"] = self.material["cresc_a_parts"].copy() + ["trombone1"]

        self.material["rhythm"]["cresc_a"] = [
                        "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "]*2 + [ #clarinets
                        "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "]*2 + [ #horns 1,2
                        "r4. r4. c4.\\pp\\< ~ | c4. ~ c4.\\mp\\! r4. "]*2 # horns 3,4
        # similar, but this one goes the entire length
        self.material["rhythm"]["cresc_a2"] = [
                        "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "]*2 + [ #clarinets
                        "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "]*2 + [ #horns 1,2
                        "r4. r4. c4.\\pp\\< ~ | c4. ~ c4. ~ c4.\\mp\\! "]*2 # horns 3,4

        self.material["rhythm"]["cresc_b"]=[
                        "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "] + [ #clarinet 1
                        "c4.\\pp\\<( ~ c4. ~ c4. | c4. ~  c4. ~ c4.\\mp) "] + [ #clarinet 2
                        "r4. c4.\\pp\\<( ~ c4. | c4.)  c4.( c4.\\mp) "]*2 + [ #horns 1,2
                        "r4. c4.\\pp\\<( ~ c4. | c4. ~  c4. ~ c4.\\mp) "]*3 + [# horns 3,4, trombone
                        ]

        self.material["pitch"]["cresc_a"]=[
                            ["D4"],
                            ["B3"],
                            ["E4"],
                            ["B3"],
                            ["C#4"],
                            ["A3"],
                            ]
        
        self.material["pitch"]["cresc_a2"] = self.material["pitch"]["cresc_a"]

        self.material["pitch"]["cresc_b"] = [
                            ["A5"],
                            ["D4", "E5"],
                            ["D4","E4","D4","E4"],
                            ["F3","B3","B3","C#4"],
                            ["A3","E4","D4","E4"],
                            ["D3","B3","B3","C#4"],
                            ["F2", "G2"],
                            ]

    def add_taiko_a(self, part_names=["taiko1", "taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_down_beat",
            "taiko_rest",
            "taiko_down_beat",
            "taiko_rest",
            ]])

    def add_taiko_b(self, part_names=["taiko1", "taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_lead_in",
            "taiko_down_beat",
            "taiko_down_beat",
            "taiko_rest",
            ]])

    def add_harmony_ref(self):
        self.arrange_music(
                    rhythms = [self.material["rhythm"]["measure_note"] * 4 ],
                    pitch_material= "ancient_A", 
                    part_names= ["harmony_1","harmony_2"],
                    respell=["sharps"]
                    )

    def add_harmony_ref_2(self, pitch_material="ancient_B"):
        self.arrange_music(
                    rhythms = ["c4. c4. c4. | c2. r4.  | c4. c4. c4. |  c4. c4 c8 c4. ",
                                    "c4. c4. c4. | " + (self.material["rhythm"]["measure_note"] * 3),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_2"],
                    respell=["sharps"]
                    )
        # this is the blowing stuff...
    def add_cresc_a(self):
        self.arrange_music(part_names=self.material["cresc_a_parts"], skip_arranged=[False],
                    rhythm_material="cresc_a", pitch_material="cresc_a", respell=["sharps"])

        self.arrange_music(part_names=self.material["cresc_a_parts"], skip_arranged=[False],
                    rhythm_material="cresc_a2", pitch_material="cresc_a2", respell=["sharps"])



    # to do... maybe this calls/inherits from above?
    def add_cresc_b(self):
        self.arrange_music(part_names=self.material["cresc_b_parts"],  skip_arranged=[False],
                rhythm_material=["rest"])

        self.arrange_music(part_names=self.material["cresc_b_parts"], skip_arranged=[False],
                    rhythm_material="cresc_b", pitch_material="cresc_b", respell=["sharps"])

        self.arrange_music(part_names=self.material["cresc_b_parts"],  skip_arranged=[False],
            rhythm_material=["rest"])


class Intro2(Intro):
    def __init__(self):
        super().__init__()

        self.material["cresc_a_parts"] += ["trombone1", "trombone2"]
        self.material["cresc_b_parts"] += ["trombone2"]

        cresc_a_rh1 = "c4.\\p\\<( c4. c4. | c4. ~ c4.)\\mp\\! r4. " # clarinet 1 and trombones
        cresc_a_rh2 = "c4.\\p\\<( ~ c4. c4. | c4. ~ c4.)\\mp\\! r4. " # clarinet 2
        cresc_a_rh3 = "c4.\\p\\<( c4. ~ c4. | c4. ~ c4.)\\mp\\! r4. " # horns

        self.material["rhythm"]["cresc_a"] = [
                        cresc_a_rh1, cresc_a_rh2  ] + [ #clarines
                        cresc_a_rh3 ]*4 + [ #horns
                        cresc_a_rh2, cresc_a_rh1 ]*2 # trombones
        
        self.material["pitch"]["cresc_a"]=[
                            ["F#5","C#5","D#5"],
                            ["B4",       "C#5"],
                            ["E4", "C#4",],
                            ["D4", "B3"],
                            ["E4", "C#4",],
                            ["D4", "B3"],
                            ["D3",        "A2"],
                            ["C3", "A2",  "G2"],
                            ]
        self.material["pitch"]["cresc_a2"] = [
                            ["B5"],
                            ["E5", "D4"],
                            ["E4","D4","E4","D4"],
                            ["B3","G3","C#4","A3"],
                            ["E4","D4","E4","D4"],
                            ["B3","G3","C#4","A3"],
                            ["G2", "A2"],
                            ["G2", "A2"],
                            ]
        
        self.material["pitch"]["cresc_b"] = transpose_pitches(self.material["pitch"]["cresc_b"], 2)
        
        # repeat trombone 1 pitches/rhythms for trombone 2:
        self.material["rhythm"]["cresc_b"] += self.material["rhythm"]["cresc_b"][-1:]
        self.material["pitch"]["cresc_b"] += self.material["pitch"]["cresc_b"][-1:]

        # similar, but this one goes the entire length
        self.material["rhythm"]["cresc_a2"] = self.material["rhythm"]["cresc_b"].copy()


class MelodyBase(WadoMaterial):
    def __init__(self):
        super().__init__()
        self.material["part"]["strings"] = ["violinI","violinII","viola","cello","bass"]


    def add_harmony_ref_2(self, pitch_material="ancient_B_up2"):
        self.arrange_music(
                    rhythms= ["c4. c4. c4. | c2. r4.  | c4. c4. c4. |  c4. c4 c8 c4. ",
                                    "c4. c4. c4. | " + (self.material["rhythm"]["measure_note"] * 3),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_2"],
                    respell=["sharps"]
                    )
    def add_festival_lines_ref(self):
        self.arrange_music(part_names=["line_1"],rhythms=["R4. R4. R4. | "*4  + "r4. r4. "],
                skip_arranged=[False])
        self.arrange_music(
                rhythm_material=["festival_B"], 
                pitch_material=["festival_A"], 
                part_names=["line_1"], 
                transpose=[-3], 
                respell=["sharps"], skip_arranged=[False],
                )
        self.arrange_music(part_names=["line_1"],rhythms=["R4. R4. R4. | "*2 ])

    def add_harmony_night_ref(self, pitch_material="night_A"):
        self.arrange_music(
                    rhythms = [(self.material["rhythm"]["measure_note"] * 2) + "c4. c4. c4. | " + self.material["rhythm"]["measure_note"],
                                    (self.material["rhythm"]["measure_note"] * 4),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_2"],
                    respell=["sharps"]
                    )

    def add_harmony_night_2_ref(self, pitch_material="night_B", transpose=[0], respell=["sharps"]):
        self.arrange_music(
                    rhythms= ["c4. c2. | "*2 + self.material["rhythm"]["measure_note"] + "c4. c4. c4. | ",
                                    (self.material["rhythm"]["measure_note"] * 3) + "c4. c2. | ",
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_2"],
                    respell=respell,
                    transpose=transpose,
                    )
    
    def add_harmony_night_3_ref(self, pitch_material="night_C", transpose=[0], respell=["sharps"]):
        self.arrange_music(
                    rhythms = ["c2. c4. | "*2 + "c4. c2. | " + self.material["rhythm"]["measure_note"],
                                    (self.material["rhythm"]["measure_note"] * 4),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_2"],
                    respell=respell,
                    transpose=transpose,
                    )


    def add_taiko_a(self, part_names=["taiko1"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_lead_in",
            "taiko_up_groove",
            "taiko_conduct", # 2 bars
            ]])

    def add_taiko_b(self, part_names=["taiko1"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_conduct", # 2 bars
            "taiko_up_ka",
            "taiko_lead_in",
            ]])

    def add_taiko_split(self, part_names=["taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[
            ["taiko_split_don", "taiko_split_ka"]*2,
        ])



class MelodyA(MelodyBase):
    def __init__(self):
        super().__init__()
        self.material["rhythm"]["strings_move"]=["c4. "*12]
        self.material["rhythm"]["winds_rh1"]=[""] # what am I using this for?
        self.material["rhythm"]["winds_rh2"]=["c4. "*12] # and this?

        self.material["pitch"]["yo"] = [
                ["G#5","D#5","F5" ,   "B5" ,"B5" ,"B5" ,   "F#5","F#5","F#5",   "A5" ,"B5" ,"D#6",],
                ["C#5","C#5","D#5",   "E5" ,"E5" ,"E5" ,   "C#5","C#5","C#5",   "B4" ,"D#5","F#5",],
                ["F#4","C#4","C#4",   "E4" ,"E4" ,"E4" ,   "F#4","F#4","F#4",   "E4" ,"A4" ,"B4" ,],
                ["E3" ,"E3" ,"B2" ,   "G3" ,"G3" ,"G3" ,   "A3" ,"A3" ,"A3" ,   "C#4","C#4","C#4",],
                ["D2" ,"B2" ,"A1" ,   "G2" ,"G2" ,"G2" ,   "A2" ,"A2" ,"A2" ,   "B2" ,"B2" ,"B2" ,],
                ]

class MelodyB(MelodyA):
    def __init__(self):
        super().__init__()

        self.material["pitch"]["yo"] = [
                ["F#5","D#5","D#5",   "F#5","F#5","F#5",   "F#5","C#5","F#5",   "D#5","D#5","D#5",],
                ["D#5","F#4","D#4",   "C#5","C#5","C#5",   "C#5","F#5","C#5",   "B4" ,"D#4","D#4",],
                ["B3" ,"B3" ,"B3" ,   "F#4","F#4","F#4",   "A4" ,"A4" ,"A4" ,   "D#4","B3" ,"B3" ,],
                ["C#3","C#3","C#3",   "A3" ,"A3" ,"A3" ,   "A3" ,"A3" ,"A3" ,   "A3" ,"A3" ,"A3" ,],
                ["C#2","C#2","C#2",   "A2" ,"A2" ,"A2" ,   "F#2","F#2","F#2",   "A2" ,"A2" ,"A2" ,],
                ]


class MelodySwingA(MelodyA):
    def __init__(self):
        super().__init__()
        self.material["rhythm"]["strings_move"]=["c4-.-> c8-- ~ c4  c8-- ~ c4 c8---. "*4]
        self.material["pitch"]["yo"] = [
                ["F#5","F6" ,"F6" ,   "B5" ,"G#5","G#5",   "F#5","F#5","F#5",   "F#5","C#5","D#6",],
                ["G#4","G#4","A4" ,   "A4" ,"B4" ,"B4" ,   "F5" ,"F5" ,"F5" ,   "F5" ,"C#5","D#5",],
                ["F#4","D#4","D#4",   "D#4","D#4","D#4",   "D#5","D#5","G#4",   "D#5","A4" ,"D#5",],
                ["B3" ,"B3" ,"B3" ,   "B3" ,"B3" ,"B3" ,   "G#3","D#2","D#2",   "B3" ,"A3" ,"A3" ,],
                ["B2" ,"B2" ,"B2" ,   "B2" ,"B2" ,"B2" ,   "G#2","G#2","G#2",   "C#3","A2" ,"A2" ,],
                ]

    # TO DO... more adjustments to these pitches?
    def yo3(self):
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], -1)

class MelodySwingB(MelodyB):
    def __init__(self):
        super().__init__()
        self.material["rhythm"]["strings_move"]=["c4-- c8-. "*12]

        self.material["pitch"]["yo"] = [
                ["D#6","D#6","F5" ,   "A5", "A5", "C5" ,   "Eb5","D6" ,"D6" ,   "C6" ,"A5" ,"Bb5",],
                ["D#5","D#5","F4" ,   "G4", "C5" ,"C5" ,   "B4", "A4" ,"C5" ,   "C5" ,"C5" ,"C5" ,],
                ["D#4","D#4","D#4",   "F4" ,"F4" ,"F4" ,   "A4", "Db4","C4" ,   "F4" ,"Bb4","Bb4",],
                ["D#3","D#3","D#3",   "F3" ,"F3" ,"F3" ,   "Eb3","Eb3","Eb3",   "A3" ,"A3" ,"A3" ,],
                ["D#2","D#2","D#2",   "Eb2","Eb2","Eb2",   "F2" ,"F2" ,"F2" ,   "A2" ,"A2" ,"A2" ,],
                ]

    # TO DO... more adjustments to these pitches? (especiall some of the really high stuff)
    def yo3(self):
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], 4)


class DayMusic(WadoMaterial):
    def __init__(self):
        super().__init__(measures_durations=[(6,8)]*12)
        self.material["rhythm"]["ref"] = "c4. ~ c4. " * 12
        self.material["pitch"]["ref"] = [["A2"]*4]

        self.material["rhythm"]["day_yo"]=["""
                        c4.->(\\mf c4.)      c4.(\\< c4.     c4.)->\\f r4.    r4. c4.--\\mf     
                        c4.-- r4.     c4.\\mp ~  c4.     c4. ~  c4.     c4.-- r4.
                        c4.--\\< c4.--   c4.-- c4.--    c4.-- c4. ~    c4. ~ c4.\\! """]

        self.material["rhythm"]["day_lo"]=["""
                        c4.->\\mf ~ c4.      c4.(\\< ~ c4.   c4.)->\\f  r4.    r4. c4. ~
                        c4.  r4.      c4.\\mp ~  c4.     c4. ~  c4.     c4.-- r4.
                        c4.--\\< c4.--   c4.-- c4.--    c4.-- c4. ~    c4. ~ c4.\\! """]

        self.material["pitch"]["yo"] = [
            ["E5" ,"A5" ,   "C#5","A4" ,   "B5" ,"E5" ,   "C#5",  "D#5","F#5",   "E5" ,"G5" ,   "F#5","E5"],
            ["C#5","E5" ,   "A4" ,"E5" ,   "F#5","D#5",   "B4",   "F#4","D#5",   "G4" ,"E5" ,   "A4" ,"D#5"],
            ["A4" ,"C#5",   "F#4","C#5",   "D#5","A4" ,   "E4",   "D#4","F#4",   "E4" ,"G4" ,   "F#4","B4" ,],
            ["A3" ,"A3" ,   "B3" ,"B3" ,   "F#3","F#3",   "A3",   "B3" ,"B3" ,   "A3" ,"A3" ,   "B3" ,"B3" ,],
            ["G2" ,"G2" ,   "A2" ,"A2" ,   "E2" ,"E2" ,   "G2",   "A2" ,"A2" ,   "G2" ,"G2" ,   "A2" ,"A2" ,]
        ]
        # TO DO... yo yo (all 8ths)

    def add_orch_ji(self):
        pass

class DayMusicSplit(DayMusic):

    def add_taiko(self, part_names=["taiko1","taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[
                [
                    "taiko_day_swirl",
                    "taiko_day_middle",
                    "taiko_day_boom", 
                ],
                ["taiko_day_ji"]*3
            ])
    def yo2(self):
        pass

class DayMusicEnd(DayMusic):
    def get_yo(self):
        #remove the first colum...
        yo = [
                l[1:] for l in self.material["pitch"]["yo"]
            ]
        yo = transpose_pitches(yo, 2)
        yo2 = copy.deepcopy(yo)

        yo = replace_pitch(yo, "F4","F#4")
        yo = replace_pitch(yo, "F5","F#5")
        yo[2][1]= "A4" # don't want G# s yet! (but not replacing all)
        yo[3][3] = "A3"
        yo[3][4] = "A3"
        yo_combo = [
                yo[r] + yo2[r] for r in range(len(yo))
                    ]
        self.material["pitch"]["yo"] = yo_combo
        self.material["rhythm"]["yo"] = ["c4.-.-> r4. "*8 + "c4.---> "*8]



    def add_taiko(self, part_names=["taiko1","taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[["taiko_day_back_forth"]*2 + ["taiko_day_boom"]])


class Conduct(WadoMaterial):
    def add_taiko(self, part_names=["taiko1","taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=["taiko_conduct"]*8)



class WadoFree(WadoMaterial, TokeiFree):
    def add_orch_ji(self):
        pass

class WadoSolo(WadoFree):
    pass

class WadoMelodyLastA(MelodyBase, WadoFree):
    pass

class Evening(WadoFree):
    def get_yo(self):
        self.material["pitch"]["yo"] = [
            ["A5"],
            ["G#5", "A5", "G#5", "F#5", "F5", "C#5", "G#5", "A5"],
            ["F4", "F#4", "C#4", "F#4", "A4", "F#4"],
            ["G#3", "F#3", "C#3", "G#3", "F#3"],
            ["C#2", "G#2", "B2"],
            ["C#1", "B1", "F#1"],
        ]

class Dusk1(WadoFree):
    def __init__(self):
        super().__init__()
        m = MelodySwingB()
        m.yo3()
        self.material["pitch"]["yo"] = transpose_pitches(m.reverse_yo(), -8)
        self.material["pitch"]["ref"] = [["B3"]*4]
class Dusk2(WadoFree):
    def __init__(self):
        super().__init__()
        m = MelodySwingA()
        m.yo3()
        self.material["pitch"]["yo"] = transpose_pitches(m.reverse_yo(), -8)
        self.material["pitch"]["ref"] = [["A3"]*4]
class Dusk3(WadoFree):
    def __init__(self):
        super().__init__()
        m = MelodySwingB()
        self.material["pitch"]["yo"] = transpose_pitches(m.reverse_yo(), -8)
        self.material["pitch"]["ref"] = [["G3"]*4]
class Dusk4(WadoFree):
    def __init__(self):
        super().__init__()
        m = MelodySwingA()
        self.material["pitch"]["yo"] = transpose_pitches(m.reverse_yo(), -8)
        self.material["pitch"]["ref"] = [["C3"]*4]

class DarkMelodyA(MelodySwingA):
    def __init__(self):
        super().__init__()
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], -8)
        self.material["pitch"]["ref"] = [["C3"]*4]

class DarkMelodyB(MelodySwingB):
    def __init__(self):
        super().__init__()
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], -8)
        self.material["pitch"]["ref"] = [["G3"]*4]

class DarkMelodyC(MelodyA):
    def __init__(self):
        super().__init__()
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], -4)
        self.material["pitch"]["ref"] = [["A3"]*4]

class DarkMelodyD(MelodyB):
    def __init__(self):
        super().__init__()
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], -4)
        self.material["pitch"]["ref"] = [["D3"]*4]

class DarkMelodyE(MelodyA):
    def __init__(self):
        super().__init__()
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], -6)
        self.material["pitch"]["ref"] = [["G3"]*4]

class DarkMelodyF(MelodyB):
    def __init__(self):
        super().__init__()
        self.material["pitch"]["yo"] = transpose_pitches(self.material["pitch"]["yo"], -6)
        self.material["pitch"]["ref"] = [["C3"]*4]
