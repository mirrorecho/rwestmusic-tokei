from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble
from kai_m import *

from calliope.tools import music_from_durations, transpose_pitches, get_music_container
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

music.add_sub_part(part_name="violinI_1", master_part_name="violinI", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinI_2", master_part_name="violinI", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinI_3", master_part_name="violinI", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinI_4", master_part_name="violinI", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinI_5", master_part_name="violinI", start_flag="1_line",stop_flag="3_ji")

music.add_sub_part(part_name="violinII_1", master_part_name="violinII", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinII_2", master_part_name="violinII", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinII_3", master_part_name="violinII", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinII_4", master_part_name="violinII", start_flag="1_line",stop_flag="3_ji")
music.add_sub_part(part_name="violinII_5", master_part_name="violinII", start_flag="1_line",stop_flag="3_ji")

music.add_sub_part(part_name="viola_1", master_part_name="viola", start_flag="1_ji",stop_flag="3_ji")
music.add_sub_part(part_name="viola_2", master_part_name="viola", start_flag="1_ji",stop_flag="3_ji")
music.add_sub_part(part_name="viola_3", master_part_name="viola", start_flag="1_ji",stop_flag="3_ji")

music.add_sub_part(part_name="cello_1", master_part_name="cello", start_flag="2_line",stop_flag="3_ji")
music.add_sub_part(part_name="cello_2", master_part_name="cello", start_flag="2_line",stop_flag="3_ji")
music.add_sub_part(part_name="cello_3", master_part_name="cello", start_flag="2_line",stop_flag="3_ji")
music.add_sub_part(part_name="cello_4", master_part_name="cello", start_flag="2_line",stop_flag="3_ji")


music.add_rhythm_material("rest", "s1 "*3 + "r1\\fermata "+ "s1 "*4, start_flag="1_line", stop_flag="2_ji")
music.add_rhythm_material("rest", "R1 "*4, start_flag="2_ji")

music.add_pitch_material("cloud", [
                    ["C#6","C#6","D6"],
                    ["C#6","G#6","D6"],
                    ["C#6","D6","C#6",],
                    ])

# TO DO... keep going on this (maybe it should go in the base class...)
music.add_rhythm_material("cloud", 
                [get_music_container(["s4", box_music(
                        make_harmonics("c2.\\fermata\\ppp \\times 4/5 {c2( c2.)} "), 
                        continue_lengths=[(1,1)]*6)
                ])])

music.add_pitch_material("low", ["C#2"])
music.add_pitch_material("low", ["F#2"], start_iter=5)
music.add_pitch_material("low", ["D2"], start_iter=7)
music.add_pitch_material("low", ["A2"], start_iter=9)

music.add_pitch_material("holds", [["C#6"]])
           
music.add_rhythm_material("holds", 
                    [get_music_container(["s4", box_music("s4 c1\\pp\\fermata s2", 
                            instruction="hold until B", 
                            continue_lengths=[(1,1)]*6 ) 
                    ])])

music.exec_method("replace_kairos_A", other_pitch="C#4", stop_flag="3_line")

music.exec_method("kai_harmonics")
music.exec_method("kai_holds")
music.exec_method("kai_kairos")
music.exec_method("kai_rest")
music.exec_method("kai_cloud")
music.exec_method("kai_cycles")
music.exec_method("kai_low")

music.arrange_music(part_names=["taiko1","taiko2"], rhythm_material=["taiko1","taiko2"])


music.apply_transforms()

bubble = music.make_bubble(
            #part_names=["line_1","line_2","harmony_2","taiko1","taiko2"], 
            #flags=["2_ji"],
            iters=(0,1,),
            #part_names=("violinI","violinII","viola"),
            )

bubble.make_pdf(
    hide_empty=True
    )