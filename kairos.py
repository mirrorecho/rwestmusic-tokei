from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble
from kai_m import *

from calliope.tools import music_from_durations, transpose_pitches
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
music.exec_method("prepare_material")

music.add_pitch_material("low", ["C#2"])
music.add_pitch_material("low", ["F#2"], start_iter=5)
music.add_pitch_material("low", ["D2"], start_iter=7)
music.add_pitch_material("low", ["A2"], start_iter=9)

# music.transforms.append(
#     AddStaff(
#         "violinI_solo", 
#         add_to="violinI",
#         instrument=instrumenttools.Violin(instrument_name="Violin I Solo", short_instrument_name="vln.solo")
#         ))


music.arrange_music(part_names=["line_1","line_2"], pitch_material=["kairos_a","kairos_b"], rhythm_material=["kairos_a","kairos_b"])
music.arrange_music(part_names=["harmony_2"], rhythm_material=["fill_notes"], pitch_material=["low"])
music.arrange_music(part_names=["taiko1","taiko2"], rhythm_material=["taiko1","taiko2"])

# # TO DO... DON'T LIKE HOW THIS IS THE 1st VIOLINS SECTION AT ALL... REALLY SHOULD RE-ARRANGE
music.arrange_music(
    part_names=["violinI"], 
    pitch_material=["kairos_a"], 
    rhythm_material=["kairos_a"],
    apply_flags=["2_ji"])
music.arrange_music(
    part_names=["violinI"], 
    pitch_material=["kairos_b"], 
    rhythm_material=["kairos_b"],
    apply_flags=["2_line"])

music.arrange_music(part_names=["cello"], pitch_material=["cycle"],rhythms=["c1\\p ~ c1~ c1   c1~ c1   c1~ c1 c1"])

music.exec_method(name="arrange_harmonics", 
    part_names=["flute1","flute2","oboe1"], 
    fundamental_material="low",
    rhythm_material=[["soft_2bar_swell"]*2 + ["bar_rest"]*4],
    harmonics=[10,6,8],
    apply_flags=["2_line","2_ji"],
    respell=["sharps"])

# TO DO... this transpose is in theory not allowed (may not sound as I want?) ...rearrange?
# ALSO TO DO... move this to a method on the class?
music.exec_method(name="arrange_harmonics", 
    part_names=["violinII","oboe2","oboe3"], 
    fundamentals=[kai.material["pitch"]["kairos_a"][2]],
    rhythm_material=[["bar_rest"]+["soft_2bar_swell"]*2 + ["bar_rest"]*3],
    harmonics=[9,5,4],
    transpose=[-12],
    apply_flags=["2_line","2_ji"],
    respell=["sharps"])

music.apply_transforms()

bubble = music.make_bubble(
            #part_names=["line_1","line_2","harmony_2","taiko1","taiko2"], 
            #flags=["2_line"],
            #iters=(0,1,2,3,),
            )

bubble.make_pdf()