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

music.add_cycle(bubble_type=Kai1, flags=["1_line"])
music.add_cycle(bubble_type=Kai1Ji, flags=["1_ji"])
music.add_cycle(bubble_type=Kai2, flags=["2_line"])
music.add_cycle(bubble_type=Kai2Ji, flags=["2_ji"])
music.add_cycle(bubble_type=Kai3, flags=["3_line"])
music.add_cycle(bubble_type=Kai3Ji, flags=["3_ji"])
music.add_cycle(bubble_type=Kai4, flags=["4_line"])
music.add_cycle(bubble_type=Kai4Ji, flags=["4_ji"])
music.add_cycle(bubble_type=Kai5, flags=["5_line"])
music.add_cycle(bubble_type=Kai5Ji, flags=["5_ji"])
music.add_cycle(bubble_type=Kai6, flags=["6_line"])
music.add_cycle(bubble_type=Kai6All, flags=["6_all"])

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
add_strings("violinI", "Violin I", "vln.I", 5, start_flag="1_line", stop_flag="3_ji", show_instrument_instruction=False) # show_instrument_instruction on just as an example
add_strings("violinII", "Violin II", "vln.II", 5, start_flag="1_line", stop_flag="3_ji",)
add_strings("viola", "Viola", "vla", 4, start_flag="1_ji", stop_flag="3_ji")
add_strings("cello", "Cello", "vc", 4, start_flag="2_line", stop_flag="3_ji")
# music.add_sub_part(part_name="crotales", instrument_type=instrumenttools.Flute, instrument_name="Crotales", short_instrument_name="cro.", master_part_name="perc1", start_flag="1_line", stop_flag="3_ji")


music.add_rhythm_material("rest", "s1 "*3 + "r1\\fermata "+ "s1 "*4, start_flag="1_line", stop_flag="2_ji")
music.add_rhythm_material("rest", "R1 "*8, start_flag="2_ji")

music.add_pitch_material("cloud", [
                    ["C#6","C#6","D6"],
                    ["C#6","G#6","D6"],
                    ["C#6","D6","C#6",],
                    ])

# TO DO... keep going on this (maybe it should go in the base class...)
music.add_rhythm_material("cloud", 
                [get_music_container(["s4", box_music(
                        "c2.\\fermata\\ppp   c2( c2) ", 
                        continue_lengths=[(1,1)]*6)
                ])])
# ---------------------------------------------------------
# LOW PITCHES

music.add_rhythm_material("low", ["c1 ~ "*7 + "c1 "], start_flag="2_ji")


music.add_pitch_material("low", [["C#2"]])
music.add_pitch_material("low", [["F#2"]], start_iter=5)
music.add_pitch_material("low", [["D2"]], start_iter=7)
music.add_pitch_material("low", [["A2"]], start_iter=9)

# ---------------------------------------------------------
# HOLDS
music.add_pitch_material("holds", [["C#6"],["C#4"],[ "D4", "C#4"]]) # bassons and others come in lower, later

music.add_rhythm_material("holds", 
                    [get_music_container(["s4", box_music("s4 c1\\pp\\fermata s2", 
                            instruction="hold until B", 
                            continue_lengths=[(1,1)]*6 ) 
                    ])])

# TO DO... this should decresc back down!
hold_rh = "r4 c2.\\pp\\<   ~  c2\\p r2 "
music.add_rhythm_material("holds", [hold_rh + "R1 " + hold_rh + hold_rh + "R1 "], start_flag="2_ji")

# ---------------------------------------------------------

music.exec_method("replace_pitch", material="kairos_a", pitch="E4", other_pitch="C#4", apply_flags=["1_ji"])
music.exec_method("replace_pitch", material="kairos_b", pitch="A4", other_pitch="C#5", stop_flag="3_line")
music.exec_method("replace_pitch", material="kairos_b", pitch="E4", other_pitch="C#4", stop_flag="3_line")

music.exec_method("kai_harmonics")
music.exec_method("kai_holds")
music.exec_method("kai_kairos")
music.exec_method("kai_cloud")
music.exec_method("kai_cycles")
music.exec_method("kai_low")

# ---------------------------------------------------------
# SPECIAL ARRANGEMENTS

music.arrange_music(part_names=["taiko1","taiko2"], rhythm_material=["taiko1","taiko2"])

music.arrange_music(part_names=["crotales"], rhythms=[get_music_container(
                ["s4", box_music("s4 c2\\pp\\fermata c2\\fermata", 
                            instruction="bowed, repeat", 
                            continue_lengths=[(1,1)]*6 ) 
                    ])],
                pitches=[["C#4","G#5"]],
                respell=["sharps"],
                apply_flags=["1_line"])

# fill everything empty up with rests
music.arrange_music(part_names=kai.parts, rhythm_material=["rest"])
# TO DO: doesn't work for sub-parts... why?

make_iters=(3,4)

music.apply_transforms(iters=make_iters)
bubble = music.make_bubble(iters=make_iters)
bubble.make_pdf(
    hide_empty=True,
    # part_names=["violinI","violinI_1","violinI_2"],
    )
