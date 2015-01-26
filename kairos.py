from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble
from kairos_material import KaiMaterial, KaiFree

from calliope.tools import music_from_durations, transpose_pitches
from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *

kai = KaiMaterial()

music = CycleLoop(bubble_type=KaiMaterial)

music.add_cycle(bubble_type=KaiFree, flags=["1_ji"])
music.add_cycle(bubble_type=KaiFree, flags=["1_line"])
music.add_cycle(flags=["2_ji"])
music.add_cycle(flags=["2_line"])
# music.add_cycle(flags=["3_ji"])
# music.add_cycle(flags=["3_line"])
# music.add_cycle(flags=["4_ji"])
# music.add_cycle(flags=["4_line"])
# music.add_cycle(flags=["5_ji"])
# music.add_cycle(flags=["5_line"])
# music.add_cycle(flags=["6_ji"])
# music.add_cycle(flags=["6_line"])

music.add_pitch_material("low", ["C#2"])
music.add_pitch_material("low", ["F#2"], start_iter=5)
music.add_pitch_material("low", ["D"], start_iter=7)
music.add_pitch_material("low", ["A"], start_iter=9)

# music.transforms.append(
#     AddStaff(
#         "violinI_solo", 
#         add_to="violinI",
#         instrument=instrumenttools.Violin(instrument_name="Violin I Solo", short_instrument_name="vln.solo")
#         ))


for i in range(6):
    prefix = "taiko_"+str(i+1)+"_"
    taiko_a_ji = [prefix +  "ji"]*2
    taiko_a_line = [prefix + "line"]*2
    taiko_b_ji = ["taiko_"+str(i)+"_line", taiko_a_ji[0]] # b's first ji part is still the previous line 
    taiko_b_line = [taiko_a_ji[0], taiko_a_line[0]]
    music.arrange_music(
        part_names=["taiko1","taiko2"], 
        rhythm_material=[taiko_a_ji, taiko_b_ji], 
        apply_flags=[str(i+1)+"_ji"], )
    music.arrange_music(
        part_names=["taiko1","taiko2"], 
        rhythm_material=[taiko_a_line, taiko_b_line], 
        apply_flags=[str(i+1)+"_line"], )

music.arrange_music(part_names=["line_1","line_2"], pitch_material=["kairos_a","kairos_b"], rhythm_material=["kairos_a","kairos_b"])

music.arrange_music(part_names=["harmony_2"], rhythm_material=["fill_notes"], pitch_material=["low"])

# TO DO... DON'T LIKE HOW THIS IS THE 1st VIOLINS SECTION AT ALL... REALLY SHOULD RE-ARRANGE
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
    respell=["sharps"])

# TO DO... this transpose is in theory not allowed (may not sound as I want?) ...rearrange?
music.exec_method(name="arrange_harmonics", 
    part_names=["violinII","oboe2","oboe3"], 
    fundamentals=[kai.material["pitch"]["kairos_a"][2]],
    rhythm_material=[["bar_rest"]+["soft_2bar_swell"]*2 + ["bar_rest"]*3],
    harmonics=[9,5,4],
    transpose=[-12],
    respell=["sharps"])

music.apply_transforms()

bubble = music.make_bubble(
            #part_names=["line_1","line_2","harmony_2","taiko1","taiko2"], 
            flags=["2_line"],
            )

bubble.show_pdf()