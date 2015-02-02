from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble
from wado_m import *

from calliope.tools import music_from_durations, transpose_pitches
from calliope.cycles.loop import CycleLoop



# THIS IS ACTUALLY HARDER TO FOLLOW... HOW TO SIMPLIFY????
music = CycleLoop(bubble_type=WadoMaterial)
# intro cycles:
music.add_cycle(bubble_type=WadoFree, flags=["intro_free_1", "free"])
music.add_cycle(bubble_type=WadoFree, flags=["intro_free_2", "free"])
music.add_cycle(bubble_type=WadoFree, flags=["intro_free_3", "free"])
music.add_cycle(bubble_type=WadoFree, flags=["intro_free_4", "free"])


music.add_cycle(bubble_type=Intro, flags=["intro_1_a", "taiko_a", "intro_a"])
music.add_cycle(bubble_type=Intro, flags=["intro_1_b", "taiko_b", "intro_b"])
music.add_cycle(bubble_type=Intro, flags=["intro_2_a", "taiko_a", "intro_a"])
music.add_cycle(bubble_type=Intro, flags=["intro_2_b", "taiko_b", "intro_b"])
# # melody cycles:
music.add_cycle(bubble_type=Melody, flags=["melody_1_a", "taiko_a","melody_start"])
music.add_cycle(bubble_type=Melody, flags=["melody_1_b", "taiko_b"])
music.add_cycle(bubble_type=Melody, flags=["melody_2_a", "taiko_a", "taiko_split"])
music.add_cycle(bubble_type=Melody, flags=["melody_2_b", "taiko_b", "taiko_split"])
music.add_cycle(bubble_type=Melody, flags=["melody_3_a", "taiko_a", "taiko_split"])
music.add_cycle(bubble_type=Melody, flags=["melody_3_b", "taiko_b", "taiko_split"])
# day music cycles:
music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_1", "day_start"])
music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_2"])
music.add_cycle(bubble_type=DayMusicEnd, flags=["day_music_end"])

# conduct 8 times



# ----------------------------------------------------------
# INTRO
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            apply_flags=["intro_free_1","intro_free_2","intro_free_4"], rhythms=["c4_don-> s1 r1\\fermata s1"],
            )
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            apply_flags=["intro_free_3"], rhythms=["c4_do c4_do c4_don-> s2 r1\\fermata s2"],
            )


# ----------------------------------------------------------


music.exec_method("add_orch_ji", skip_flags=["free"])

music.exec_method("add_cresc_a", apply_flags=["intro_a"])
music.exec_method("add_cresc_b", apply_flags=["intro_b"])

# ----------------------------------------------------------
# harmonies/lines reference parts:
music.exec_method("add_harmony_ref", apply_flags=["intro_1_a"])
music.exec_method("add_harmony_ref_2", apply_flags=["intro_1_b"])
music.exec_method("add_harmony_ref_2", apply_flags=["intro_2_a"])
music.exec_method("add_harmony_ref_2", pitch_material="ancient_B_modulate", apply_flags=["intro_2_b"])
music.exec_method("add_harmony_ref_2", apply_flags=["melody_1_a"])
music.exec_method("add_harmony_night_ref", apply_flags=["melody_1_b"])
# TO DO... add festival lines ref
music.exec_method("add_harmony_night_2_ref", apply_flags=["melody_2_a"])
music.exec_method("add_harmony_night_3_ref", apply_flags=["melody_2_b"])
music.exec_method("add_harmony_night_2_ref", transpose=[-1], respell=["flats"],  apply_flags=["melody_3_a"])
music.exec_method("add_harmony_night_3_ref", transpose=[4], respell=["sharps"], apply_flags=["melody_3_b"])

# ----------------------------------------------------------
# the taiko parts
music.exec_method("add_taiko_a", apply_flags=["taiko_a"], skip_flags=["taiko_split"])
music.exec_method("add_taiko_b", apply_flags=["taiko_b"], skip_flags=["taiko_split"])
# here's the taiko melody split (simplify this code??):
music.exec_method("add_taiko_a", part_names=["taiko1"], apply_flags=["melody_2_a"])
music.exec_method("add_taiko_b", part_names=["taiko1"], apply_flags=["melody_2_b"])
music.exec_method("add_taiko_split", part_names=["taiko2"], apply_flags=["melody_2_a","melody_2_b"])
music.exec_method("add_taiko_a", part_names=["taiko2"], apply_flags=["melody_3_a"])
music.exec_method("add_taiko_b", part_names=["taiko2"], apply_flags=["melody_3_b"])
music.exec_method("add_taiko_split", part_names=["taiko1"], apply_flags=["melody_3_a","melody_3_b"])
# here's the taiko day music
music.exec_method("add_taiko", part_names=["taiko1","taiko2"], apply_flags=["day_music_1"])
music.exec_method("add_taiko", part_names=["taiko2","taiko1"], apply_flags=["day_music_2"])
# next up.... add

music.apply_transforms()

bubble = music.make_bubble(iters=(4,5,6,7))

bubble.show_pdf()
