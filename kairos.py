from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble
from kai_m import *

from calliope.tools import music_from_durations, transpose_pitches, get_music_container, make_harmonics
from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *

kai = KaiMaterial()

music = CycleLoop(bubble_type=KaiMaterial)

music.add_cycle(bubble_type=KaiOtoshi, flags=["1_otoshi"])
music.add_cycle(bubble_type=Kai1, flags=["1_line"], rehearsal_mark="A")
music.add_cycle(bubble_type=Kai1Ji, flags=["1_ji"], rehearsal_mark="B")
music.add_cycle(bubble_type=Kai2, flags=["2_line"], rehearsal_mark="C")
music.add_cycle(bubble_type=Kai2Ji, flags=["2_ji"], rehearsal_mark="D")
music.add_cycle(bubble_type=Kai3, flags=["3_line"], rehearsal_mark="E")
music.add_cycle(bubble_type=Kai3Again, flags=["3_line_again"], rehearsal_mark="F")
music.add_cycle(bubble_type=Kai3Ji, flags=["3_ji"], rehearsal_mark="G")
music.add_cycle(bubble_type=Kai4, flags=["4_line"], rehearsal_mark="H")
music.add_cycle(bubble_type=Kai4Ji, flags=["4_ji"], rehearsal_mark="I")
music.add_cycle(bubble_type=Kai5, flags=["5_line"], rehearsal_mark="J")
music.add_cycle(bubble_type=Kai5Ji, flags=["5_ji"], rehearsal_mark="K")
music.add_cycle(bubble_type=Kai6, flags=["6_line"], rehearsal_mark="L")
music.add_cycle(bubble_type=Kai6All, flags=["6_all"], rehearsal_mark="M")

# FUTURE TO DO? ... build something like this directly into cycle loop?
class AddPreviousKai(TransformBase):
    def apply(self, cycle, previous_cycle):
        if previous_cycle is not None:
            cycle.previous_kai = previous_cycle
        else:
            cycle.previous_kai = cycle
music.add_transform(AddPreviousKai())
music.exec_method("kai_material")


# TO DO EVENTUALLY... standard way/place to do  this
def add_strings(master_part_name, master_instrument_name, master_short_instrument_name, number, start_number=1, **kwargs):
    for i in range(start_number, number+start_number):
        j = str(i)
        music.add_sub_part(
            master_part_name=master_part_name,
            part_name=master_part_name+"_"+j, 
            instrument_name=master_instrument_name+"."+j,
            short_instrument_name=master_short_instrument_name+"."+j,
            **kwargs)
add_strings("violinI", "Violin I", "vln.I", 5, start_flag="1_otoshi", stop_flag="3_ji", show_instrument_instruction=False) # show_instrument_instruction on just as an example
add_strings("violinII", "Violin II", "vln.II", 5, start_flag="1_otoshi", stop_flag="3_ji",)
add_strings("viola", "Viola", "vla", 4, start_flag="1_ji", stop_flag="3_ji", clef="alto")
add_strings("cello", "Cello", "vc", 4, start_flag="2_line", stop_flag="3_ji", clef="bass")
# music.add_sub_part(part_name="crotales", instrument_type=instrumenttools.Flute, instrument_name="Crotales", short_instrument_name="cro.", master_part_name="perc1", start_flag="1_line", stop_flag="3_ji")


music.add_rhythm_material("rest", "s1 "*3 + "r1\\fermata "+ "s1 "*4,  stop_flag="2_ji")
music.add_rhythm_material("rest", "R1 "*8, start_flag="2_ji")

# ---------------------------------------------------------
# KAIROS
music.exec_method("replace_pitch", material="kairos_a", pitch="E4", other_pitch="C#4", stop_flag="3_line")
music.exec_method("replace_pitch", material="kairos_b", pitch="A4", other_pitch="C#5", stop_flag="4_line")
music.exec_method("replace_pitch", material="kairos_b", pitch="E4", other_pitch="C#4", stop_flag="3_line")

# may be less confusing to do this in the classes...
music.exec_method("transpose_pitch_material", material="kairos_a", transpose=24, apply_flags=["2_ji"])
music.exec_method("transpose_pitch_material", material="kairos_b", transpose=12, apply_flags=["3_line"])

music.exec_method("transpose_pitch_material", material="kairos_a", transpose=12, apply_flags=["3_ji"])
music.exec_method("transpose_pitch_material", material="kairos_b", transpose=12, apply_flags=["3_ji","4_line",])

music.exec_method("transpose_pitch_material", material="kairos_a", transpose=-12, apply_flags=["4_line","4_ji"])
music.exec_method("transpose_pitch_material", material="kairos_b", transpose=-12, apply_flags=["5_line",])


# ---------------------------------------------------------
# CLOUDS

# IF HARMONICS WORK OUT...
# music.add_pitch_material("cloud", [
#                     ["C#6","C#6","D6"],
#                     ["C#6","G#6","D6"],
#                     ["C#6","D6","C#6",],
#                     ])
# OTHERWISE:
music.add_pitch_material("cloud", [
                    ["C#5","C#5","D5"],
                    ["C#5","G#5","D5"],
                    ["C#5","D5","C#5",],
                    ["C#5","D5","G#5","C#5"],
                    ])
music.add_pitch_material("cloud", [
                    ["F#5","C#5","D5","C#5"],
                    ["C#5","D5","C#5","C#5"],
                    ["C#5","F#5","F#5","C#5"],
                    ["D5","C#5","G#5","F#5"],
                    ["C#5","D5","F#5","C#5"],
                    ], apply_flags=["1_ji","2_line"])
music.add_pitch_material("cloud_lower",[
                    ["C#4","D4","C#4","F#4"],
                    ["C#4","D4","C#4","D4"],
                    ["C#4","F#3","C#4","D4"],
                    ["C#4","D4","F#3","D4"],
                    ], start_flag="2_line")
music.add_pitch_material("cloud_next", [
                    ["D4"], ["C#4"], ["F#3"], ["C#3"]
                    ], start_flag="2_ji")
music.add_pitch_material("cloud_next", [
                    ["D4"], ["C#4"], ["F#3"], ["C#3"]
                    ], apply_flags=["2_ji"])
music.add_pitch_material("cloud_next", [
                    ["E5"],["D5"],["C#5"],["F#4"],["E4"],["C#4"],["F#3"],["C#3"]
                    ], apply_flags=["3_line"])
music.exec_method("add_cloud_pitches", cloud_type=KaiCloudStringsUp, 
    cloud_name="kai-cloud-strings-up", material_name="cloud", apply_flags=["3_line_again"])
music.exec_method("add_cloud_pitches", cloud_type=KaiCloudStringsUp, 
    cloud_name="kai-cloud-winds-up", material_name="cloud", apply_flags=["3_ji"])
music.exec_method("add_cloud_pitches", cloud_type=KaiCloudStringsUp, 
    cloud_name="kai-cloud-winds", material_name="cloud", apply_flags=["4_line"])
music.add_pitch_material("cloud", [
                    ["A4"],
                    # note... this is really copies of the cycle... a transform would be better than hard-coding the copy:
                    ["C#4"]*18 + ["F#4"]*12 + ["E4"]*12 + ["D4"]*6,
                    ["A3"],
                    ["C#3"]*18 + ["F#3"]*12 + ["E3"]*12 + ["D3"]*6,
                    ], start_flag="5_line")

# TO DO... keep going on this (maybe it should go in the base class...)
# IF HARMONICS WORK, tuplets may not be realistic
# music.add_rhythm_material("cloud", 
#                 [get_music_container(["s4", box_music(
#                         "c2.\\fermata\\ppp c2( c2) ", 
#                         continue_lengths=[(1,1)]*6)
#                 ])])
music.add_rhythm_material("cloud", 
                [get_music_container(["s8", box_music(
                    "s8 c2.\\fermata \\times 4/5 {c2.( c2) }", 
                        continue_lengths=[(1,1)]*6)
                ]),
                get_music_container(["s8", box_music(
                    "s4 r2 c4( c2) c4 s8", 
                        continue_lengths=[(1,1)]*6)
                ]),
                get_music_container(["s8", box_music(
                    "s8 r4 c8( c1) c4 s8 ", 
                        continue_lengths=[(1,1)]*6)
                ]),
                get_music_container(["s8", box_music(
                    "s8 c2(  c4.) r8 \\times 2/3 { c4( c2)\\fermata } s4", 
                        continue_lengths=[(1,1)]*6)
                ])],
                stop_flag="2_ji")

music.add_rhythm_material("cloud_next", ["R1 " + "c4. c8 ~ c4 c4-- "*7], apply_flags=["2_ji"])
music.add_rhythm_material("cloud_next", ["c4. c8 ~ c4 c4-- "*8], apply_flags=["3_line"])

# TO DO.. vary this up....
music.add_rhythm_material("cloud", 
                [get_music_container(["s8", box_music(
                    " c4.\\fermata \\times 2/3 { c4( c2)  }  ", continue_lengths=[(1,1)]*7),               
                    ]),
                ],
                apply_flags=["2_ji","3_line"])

music.add_rhythm_material("cloud", ["c8( c8) "*32], start_flag="3_line_again")

# ji rhythm that gives winds time to breathe...
music.add_rhythm_material("cloud", ["c8( c c c) "*7 + """c8( c) r4 
                        c8(\\< c c c) """ + "c8( c c c) "*6 + "c8( c)\\mf r4"],
                        apply_flags=["3_ji"])
music.add_rhythm_material("cloud", ["""c8(\\< c) c( c)  c8( c) c( c)\\!\\>     c8( c) c( c)  c8( c) c( c)\\!
                    r4 r8 c8(\\< c c) c( c)     c( c) c( c) c( c) c( c)     c(\\!\\>  c) c( c) c( c) c( c)    c( c) c( c)\\! 
                    r4 c8( c)\\<          c( c) c( c) c( c) c( c)     c( c) c( c) c( c)\\f  r4 """],
                        apply_flags=["4_line"])
music.add_rhythm_material("cloud", ["c4-- c8-. c8-. "*16], start_flag="5_line")

# TO DO MAYBE... could make unique rhythms for the lower parts...
music.copy_material("rhythm", "cloud", "cloud_lower", start_flag="2_line")





# ---------------------------------------------------------
# HOLDS
music.add_pitch_material("holds", [["C#6"],["C#4"],[ "D4", "C#4"]], stop_flag="2_ji") # bassons and others come in lower, later

music.add_pitch_material("holds", [["C#4"],[ "D4", "C#4"]], start_flag="2_ji")

music.add_rhythm_material("holds", 
                    [get_music_container(["s8", box_music("s8 c1\\fermata", 
                            instruction="hold until B", 
                            continue_lengths=[(3,4)] + [(1,1)]*6 ) 
                    ])])

# TO DO... this should decresc back down!
hold_rh = "r4 c2.\\pp\\<   ~  c2\\p r2 "
music.add_rhythm_material("holds", [hold_rh + "R1 " + hold_rh + hold_rh + "R1 "], start_flag="2_ji")

# ---------------------------------------------------------
# LOW
# assume low rhythm same as holds for the most part
music.copy_material("rhythm", "holds", "low")
music.copy_material("rhythm","swell_ji","low", apply_flags=["5_ji","6_line","6_all"])
# music.add_rhythm_material("low", ["c1 ~ "*7 + "c1 "], start_flag="2_ji")

music.add_pitch_material("low", [["C#2"]])
music.add_pitch_material("low", [["F#2"]], start_iter=5)
music.add_pitch_material("low", [["D2"]], start_iter=7)
music.add_pitch_material("low", [["A2"]], start_iter=9)



# ---------------------------------------------------------
# CLASS METHODS (primarily does the arranging...)

music.exec_method("kai_harmonics")
music.exec_method("kai_holds")
music.exec_method("kai_kairos")
music.exec_method("kai_cloud")
music.exec_method("kai_cycles")
music.exec_method("kai_counter")
music.exec_method("kai_low")

# ---------------------------------------------------------
# TAIKO ARRANGEMENTS



# music.attach_dynamics(part_names=["odaiko"], dynamics=[["mf"]], apply_flags=["1_otoshi"])

music.arrange_music(part_names=["taiko1","taiko2"], rhythm_material=["taiko1","taiko2"], 
    skip_flags=["1_line","1_otoshi"])

music.arrange_music(part_names=["odaiko"], rhythm_material=["shape_perc"], start_flag="3_line_again", stop_flag="5_line")
music.arrange_music(part_names=["odaiko"], rhythm_material=["constant"], start_flag="5_line")


# ---------------------------------------------------------
# SPECIAL ARRANGEMENTS


# change instrument to tutti for the strings:
music.exec_method("change_instrument", part_name="violinI", 
            instrument_name="Violin I", short_instrument_name="vln.I", 
            show_instruction=True, instruction_text="tutti Violin I",
            apply_flags=["3_ji"]
            )

music.exec_method("change_instrument", part_name="violinII", 
            instrument_name="Violin II", short_instrument_name="vln.II", 
            show_instruction=True, instruction_text="tutti Violin II",
            apply_flags=["3_ji"]
            )
music.exec_method("change_instrument", part_name="viola", 
            instrument_name="Viola", short_instrument_name="vla.", 
            show_instruction=True, instruction_text="tutti Viola",
            apply_flags=["3_ji"]
            )

music.exec_method("change_instrument", part_name="cello", 
            instrument_name="Cello", short_instrument_name="vc.", 
            show_instruction=True, instruction_text="tutti Cello    ",
            apply_flags=["3_ji"]
            )

music.arrange_music(part_names=["crotales"], rhythms=[get_music_container(
                ["s4", box_music("s4 c2\\fermata c2\\fermata", 
                            instruction="bowed, repeat", 
                            continue_lengths=[(1,2)] + [(1,1)]*6 ) 
                    ])],
                pitches=[["C#4","G#5"]],
                respell=["sharps"],
                apply_flags=["1_line","1_ji","2_line"])

# since the box instructions aren't working:
music.attach_markup(part_names=["crotales"], markup_texts=[["bowed, repeat"]], 
    indices=[[1]], notes_only=[False], apply_flags=["1_line","1_ji"])
music.attach_dynamics(part_names=["crotales"], dynamics=[["pp"]], apply_flags=["1_line"])

# special dynamics and other attachments...
music.attach_dynamics(part_names=["flute1"], dynamics=[["mp"]], apply_flags="2_ji")

# fill everything empty up with rests
music.arrange_music(part_names=kai.parts, rhythm_material=["rest"])
# the sub parts...
music.arrange_music(part_names=[
    "violinI_1","violinI_2","violinI_3","violinI_4","violinI_5",
    "violinII_1","violinII_2","violinII_3","violinII_4","violinII_5",
    "viola_1","viola_2","viola_3","viola_4",
    "cello_1","cello_2","cello_3","cello_4",
    ], rhythm_material=["rest"])

# TO DO: doesn't work for sub-parts... why?


# wado.make_ly_includes(ly_folder="wadokei", sections=["C","D"])
kai.make_ly_includes(ly_folder="kairos", sections=[
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    # "H",
    # "I",
    # "J",
    # "K",
    # "L",
    # "M",
    # "N",
    # "O",
    # "P",
    ])



# # #  --- KAIROS SECTION A ----------------------------------------------
kwargs = {"section_name": "_A", "iters":(0),
    "ly_prepends":[
    "\\tempo 4 = 88"
    # "\\time 4/4", 
    "\\numericTimeSignature", "\\context Staff {#(set-accidental-style 'modern)}"],
    "ly_appends": [], }
music.make_ly_music(ly_folder="kairos", **kwargs)
# #  --- KAIROS SECTION B ----------------------------------------------
kwargs = {"section_name": "_B", "iters":(2,3),
    "ly_prepends":[],
    "ly_appends": [], }
music.make_ly_music(ly_folder="kairos", **kwargs), 
# #  --- KAIROS SECTION C ----------------------------------------------
kwargs = {"section_name": "C", "iters":(4,5),
    "run_iters":(0,1,2,3),
    "ly_prepends":[],
    "ly_appends": [], }
music.make_ly_music(ly_folder="kairos", **kwargs), 
# #  --- KAIROS SECTION D ----------------------------------------------
kwargs = {"section_name": "D", "iters":(6,7),
    "run_iters":(0,4,5),
    "ly_prepends":[],
    "ly_appends": [], }
music.make_ly_music(ly_folder="kairos", **kwargs), 
# #  --- KAIROS SECTION  ----------------------------------------------
kwargs = {"section_name": "E", "iters":(8,9),
    "run_iters":(0,6,7),
    "ly_prepends":[],
    "ly_appends": [], }
music.make_ly_music(ly_folder="kairos", **kwargs), 
# #  --- KAIROS SECTION C ----------------------------------------------
kwargs = {"section_name": "F", "iters":(10,11),
    "run_iters":(0,8,9),
    "ly_prepends":[],
    "ly_appends": [], }
music.make_ly_music(ly_folder="kairos", **kwargs), 
# #  --- KAIROS SECTION C ----------------------------------------------
kwargs = {"section_name": "G", "iters":(12,13),
    "run_iters":(0,10,11),
    "ly_prepends":[],
    "ly_appends": [], }
music.make_ly_music(ly_folder="kairos", **kwargs), 







# formatting with page breaks for every cycle:
# music.attach(attachments=[[indicatortools.LilyPondCommand("break")]], part_names=kai.parts)

# make_flags=(
#     "1_otoshi", 
#     "1_line", #A
#     "1_ji",   #B
#     "2_line", #C
#     "2_ji",   #D
#     "3_line", #E
#     "3_line_again", #F
#     "3_ji",   #G
#     "4_line", #H
#     "4_ji",   #I
#     "5_line", #J
#     "5_ji",   #K
#     "6_line", #L
#     "6_all",  #M
#     )

# music.apply_transforms(flags=make_flags)
# bubble = music.make_bubble(flags=make_flags)
# bubble.make_pdf(
#     hide_empty=True,
    # part_names=["violinI","violinI_1","violinI_2"],
    # )

# bubble.make_parts(part_names=[
#     ("violinI_1","violinI_2", "violinI")], 
#     work_name="kairos")



# bubble.make_parts(part_names=[
#     "flute1",
#     "flute2",
#     "oboe1",
#     "oboe2",
#     "oboe3",
#     "clarinet1",
#     "clarinet2",
#     "bassoon1",
#     "bassoon2",
#     "horn1",
#     "horn2",
#     "horn3",
#     "horn4",
#     "trumpet1",
#     "trumpet2",
#     "trombone1",
#     "trombone2",
#     "tuba",
#     "perc1",
#     ("perc2","timpani"),
#     "violinI",
#     "violinII",
#     "viola",
#     "cello",
#     "bass",
#     ], 
#     work_name="kairos")