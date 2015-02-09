from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble
from wado_m import *
from wado_c import *

wado = WadoMaterial()

from calliope.tools import music_from_durations, transpose_pitches
from calliope.cycles.loop import CycleLoop



# THIS IS ACTUALLY HARDER TO FOLLOW... HOW TO SIMPLIFY????
music = get_cycle_music()
# intro cycles:

music.exec_method("prepare_material")

# ----------------------------------------------------------
# YO METHODS / TRANSPOSITIONS:
music.exec_method("yo3", apply_flags=["melody_3"])

music.exec_method("transpose_pitch_material", material="yo", transpose=-4, 
    apply_flags=["yo_down4"])
music.exec_method("transpose_pitch_material", material="ref", transpose=-4, 
    apply_flags=["yo_down4"])

# ----------------------------------------------------------
# INTRO

# FREE INTRO
music.add_rhythm_material("flute_intro", [get_music_container(["s8", box_music(
        "s8 r4\\fermata c1\\pp\\<( c2.\\mp\\> c2\\!\\p) r4 s8", continue_lengths=[(1,1)]*3),]),
            get_music_container(["s8", box_music(
        "s8 r4\\fermata c2\\pp\\<( c1\\!\\mp) r2 s8", continue_lengths=[(1,1)]*3),])
    ], apply_flags=["intro_free_1","intro_free_2"])

music.add_rhythm_material("flute_intro", [get_music_container(["s8", box_music(
        "s8 r4\\fermata c2\\pp\\<( c4\\mp\\> c8) c4( c8)\\!\\p r4 s8", continue_lengths=[(1,1)]*3),]),
            get_music_container(["s8", box_music(
        "s8 r4\\fermata c1\\pp\\<( c4 c8) c2\\!\\mp r2 s8", continue_lengths=[(1,1)]*3),])
    ], apply_flags=["intro_free_3","intro_free_4"])

music.add_pitch_material("flute_intro",[["C4","B4","D4"],["A4","F#4"]], 
    apply_flags=["intro_free_1"])
music.add_pitch_material("flute_intro",[["E4","C4","B4"],["G4","A4"]], 
    apply_flags=["intro_free_2"])
music.add_pitch_material("flute_intro",[["A4","D4","E4","C#4","D4","E4"],["F#4","G4","A4"]], 
    apply_flags=["intro_free_3"])
music.add_pitch_material("flute_intro",[["F#4","G4","A4"],["C#4","B4","A4","B4"]], 
    apply_flags=["intro_free_4"])

music.arrange_music(part_names=["flute1","flute2"], rhythm_material = "flute_intro",
    pitch_material="flute_intro", apply_flags=["intro"] )

music.attach_markup(part_names=["flute1","flute2"],
    apply_flags=["intro_free_1"],
    markup_texts=[["wait for taiko strike, then repeat 2 or 3 times, slowing down"]],
    notes_only=[False],
    indices=[[1]])
music.attach_markup(part_names=["flute1","flute2"],
    apply_flags=["intro_free_2","intro_free_3","intro_free_4"],
    markup_texts=[["sim."]],
    notes_only=[False],
    indices=[[1]])

music.arrange_music(
            part_names=["taiko1","taiko2"], 
            apply_flags=["intro_free_1","intro_free_2","intro_free_4"], rhythms=["c4_don-> s1 r1\\fermata s1"],
            )
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            apply_flags=["intro_free_3"], rhythms=["c4_do c4_do c4_don-> s2 r1\\fermata s2"],
            )

music.add_material("cresc_a_parts", ["violinI","violinII","viola","cello"],apply_flags="intro_return")

music.exec_method("add_cresc_a", apply_flags=["intro_a"])
music.exec_method("add_cresc_b", apply_flags=["intro_b"])

music.attach_dynamics(part_names=["taiko1","taiko2"], dynamics=[["f"]], apply_flags=["intro_free_1"])
# ----------------------------------------------------------
# YO:
music.exec_method("get_yo", apply_flags=["day_music_end","evening_1_a","evening_1_b"])

# ----------------------------------------------------------
# CRANKIES:
music.arrange_music(part_names=["flute1","flute2"], 
        rhythm_material=["blow_crank_a","blow_crank_b"], pitch_material="yo",
        pitch_rows=[0], pitch_columns=[
            [0,0,1,2,2,3,4,4,5,6,6,7,8,8,9,10,10,11],
            [0,1,1,2,3,3,4,5,5,6,7,7,8,9,9,10,11,11]],
            respell=[["sharps"]],
        apply_flags=["melody_1"])
music.arrange_music(part_names=["clarinet1","clarinet2"], 
        rhythm_material=["blow_crank_a","blow_crank_b"], pitch_material="yo",
        pitch_rows=[1], pitch_columns=[
            [0,0,1,2,2,3,4,4,5,6,6,7,8,8,9,10,10,11],
            [0,1,1,2,3,3,4,5,5,6,7,7,8,9,9,10,11,11]],
            respell=[["flats"]],
        apply_flags=["melody_1"])
# ----------------------------------------------------------
# STRINGS MOVE:
music.arrange_music(apply_flags=["melody_1","dark_melody"], part_material="strings", 
    pitch_material="yo",rhythm_material="strings_move",
    transpose=[0,0,0,0,12])

music.arrange_music(apply_flags=["melody_2_a","melody_3_a"], part_material="strings", 
    pitch_material="yo",rhythm_material="strings_move",
    pitch_columns=[[0,1,2,2,  3,4,5,5,  6,7,8,8,  9,10,11,11,],],
    transpose=[0,0,0,0,12])
music.arrange_music(apply_flags=["melody_2_b","melody_3_b"], part_material="strings", 
    pitch_material="yo",rhythm_material="strings_move",
    pitch_columns=[[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,],],
    transpose=[0,0,0,0,12])
music.attach_dynamics(part_names=wado.material["part"]["strings"], dynamics=[["p"]],apply_flags=["melody_1_a"])

# ----------------------------------------------------------

# DAY YO!
music.arrange_music(part_names=["trumpet1","trumpet2","horn1","horn3"], pitch_material="yo", 
            rhythm_material="day_yo",
            pitch_rows=[0,1,2,2],
            pitch_columns=[[0,1,2,3,4,  5,   5,6,6,6,   7,8,9,10,11,12  ]],
            apply_flags=["day_music_1","day_music_2"]
            )
music.arrange_music(part_names=["horn2","horn4","trombone1","trombone2","tuba"], pitch_material="yo", 
            rhythm_material="day_lo",
            pitch_rows=[3,3,3,4,4],
            pitch_columns=[[0,2,4,5,    6,6,6,  7,8,9,10,11,12]],
            transpose=[0,0,0,0,-12],
            apply_flags=["day_music_1","day_music_2"]
            )

music.arrange_music(part_material="pitched", pitch_range_material="all_ranges_wide",
    rhythm_material="yo", pitch_material="yo", respell=["sharps"], apply_flags=["day_music_end"])


# ----------------------------------------------------------
# EVENING:
music.arrange_music(part_names=["oboe1","oboe2","oboe3"], pitch_material="yo", respell=["sharps"],
    rhythms=["r8 c1\\ppp\\< ~ c1\\mp\\fermata r4 s4" ],
    apply_flags=["evening_1_a"],
    pitch_rows=[0,1,4],
    transpose=[0,0,36])

music.arrange_music(part_material="pitched", pitch_range_material="all_ranges_wide",
    rhythms=["c8-.-> s1 r1\\fermata s2"], pitch_material="yo", respell=["sharps"], 
    apply_flags=["evening_1_a"])

music.attach_markup(part_names=["clarinet2"], markup_texts=[["to b. clarinet"]], 
    indices=[[1]], notes_only=[False], apply_flags=["evening_1_a"])

music.arrange_music(part_names=["clarinet1","bassoon1","bassoon2"], pitch_material="yo", respell=["sharps"],
        pitch_rows=[1,3,4],
        rhythms=[get_music_container(["r4", box_music(
                    "s8\\times 2/3 { c8\\p  c8 c8 ~ } c4 c2 ", 
                        continue_lengths=[(1,1)]*5)
                ]),
                get_music_container(["r4", box_music(
                            "s8 c2\\fermata\\p  c4( c8) c16( c2) ", 
                                continue_lengths=[(1,1)]*5)
                        ]),
                get_music_container(["r4", box_music(
                    "s8  \\times 2/3 {c2(\\p c4 ~ } c4) c2\\fermata    ", 
                        continue_lengths=[(1,1)]*5)
                ]), 
                ],
        apply_flags=["evening_1_b"],
        )


music.add_sub_part(
            master_part_name="cello",
            part_name="cello_s", 
            instrument_name="Sollo Cello",
            # show_instrument_instruction=True, 
            short_instrument_name="s.vc.",
            replace_master_part=False,
            apply_flags=["evening_1_a","evening_1_b"],
            # clef="tenor"
            )
music.arrange_music(part_names=["cello_s"], pitch_material="yo",pitch_rows=[2], respell=["flats"],
    apply_flags=["evening_1_a"],rhythms=["s8 r1\\fermata s2 \\times 2/3 { c1(^\"Solo Cello\"\\pp\\< c2 ~ } c8 c4)\\mp "])

music.arrange_music(part_names=["cello_s"], pitch_material="yo",pitch_rows=[2], respell=["flats"],
    apply_flags=["evening_1_b"],
    rhythms=["\\times 4/5 { c2( c4) c4( c4) }  c8( c4.) c1\\fermata c1\\fermata c1\\fermata r4 c1\\fermata  r4"])

music.arrange_music(part_material="all", rhythms=["s1 s1 s1 r1\\fermata s1 s1 s1"], apply_flags=["evening_1_b"])

# ----------------------------------------------------------
# DUSK:

music.exec_method("change_instrument", part_name="clarinet2", 
            instrument_name="Bass Clarinet", short_instrument_name="b.cl.", 
            show_instruction=True,
            apply_flags=["dusk_1"]
            )

music.arrange_music(part_names=["clarinet1","clarinet2","bassoon1","bassoon2"], pitch_material="yo", respell=["sharps"],
        pitch_rows=[1,3,3,4],
        transpose=[0,12,0,0],
        rhythms=[get_music_container(["r4", box_music(
                    "s8\\times 2/3 { c8\\p  c8 c8 ~ } c4 c2 ", 
                        continue_lengths=[(1,1)]*5)
                ]),
                "\\times 4/5 { c8(\\pp\\< c c) c( c ~ } c4) c2.\\mf c4( c8)  c4( c8) r4  c4( c8)",
                get_music_container(["r4", box_music(
                            "s8 c2\\fermata\\p  c4( c8) c16( c2) ", 
                                continue_lengths=[(1,1)]*5)
                        ]),
                get_music_container(["r4", box_music(
                    "s8  \\times 2/3 {c2(\\p c4 ~ } c4) c2\\fermata    ", 
                        continue_lengths=[(1,1)]*5)
                ]), 
                ],
        apply_flags=["dusk_1","dusk_2"],
        )

# since the box instructions aren't working:
music.attach_markup(part_names=["clarinet1","bassoon1","bassoon2"], markup_texts=[["repeat, slowing down"]], 
    indices=[[1]], notes_only=[False], apply_flags=["evening_1_b","dusk_1","dusk_2"])


music.arrange_music(part_material="all", rhythms=["s1 s1 s1 r1\\fermata s1 s1 s1"], apply_flags=["dusk_1","dusk_2"])
# ----------------------------------------------------------
# CONDUCT
music.arrange_music(part_material="strings", 
    pitch_material="yo",
    rhythm_material=["strings_conduct"],
    transpose=[0,0,0,0,12],
    apply_flags=["conduct_1","conduct_2"])


# ----------------------------------------------------------
# SOLO
music.arrange_music(part_names=["taiko1"], rhythms=["s1  c4.^\"solo taiko cadenza... \" s1 s1 s1 "], apply_flags=["solo_1"])
music.arrange_music(part_names=["timpani"], rhythms=[
    get_music_container(["s8", box_music(" s8 c4.\\mf s8 ", continue_lengths=[(1,1)]*4) ])
    ], pitches=[["A4"]], apply_flags=["solo_1"] )
# music.arrange_music(part_names=wado.parts, rhythms=["s1 s1 s1 r1\\fermata\\^\"taiko cadenza\" s1 s1 s1"], apply_flags=["solo_1"])
music.attach_markup(part_names=["timpani"],markup_texts=[["repeat (steady beat)"]], apply_flags=["solo_1"])


# ----------------------------------------------------------
# JI
# add orch JI only if nothing else going on...
music.exec_method("add_orch_ji", skip_flags=["free"])



# ----------------------------------------------------------
# REFERENCE
# intro is mostly B dis dis
music.add_pitch_material("ref", [["C#3"]*4], apply_flags=["melody_1_a"]) # dis festival
music.add_pitch_material("ref", [["F#3"]*4], apply_flags=["melody_1_b"]) # dis festival
music.add_pitch_material("ref", [["G#2"]*4], respell=["sharps"], apply_flags=["melody_2_a"]) # (seems like it will go up...)
music.add_pitch_material("ref", [["D#2"]*4], apply_flags=["melody_2_b"]) # dis dis TO festival (short)
music.add_pitch_material("ref", [["F2"]*4], apply_flags=["melody_3_a"]) # dis dis TO festival (short) (also to stingy?)
music.add_pitch_material("ref", [["G2"]*4], apply_flags=["melody_3_b"]) # dis festival TO festival

music.arrange_music(part_names=["harmony_3"], pitch_material="ref", rhythm_material=["ref"], skip_flags=["free"] )

# harmonies/lines reference parts:
# music.exec_method("add_harmony_ref", apply_flags=["intro_1_a"])
# music.exec_method("add_harmony_ref_2", apply_flags=["intro_1_b"])
# music.exec_method("add_harmony_ref_2", apply_flags=["intro_2_a"])
# music.exec_method("add_harmony_ref_2", pitch_material="ancient_B_modulate", apply_flags=["intro_2_b"])

# music.exec_method("add_harmony_ref_2", apply_flags=["melody_1_a"])
# music.exec_method("add_harmony_night_ref", apply_flags=["melody_1_b"])
# # TO DO... add festival lines ref
# music.exec_method("add_harmony_night_2_ref", apply_flags=["melody_2_a"])
# music.exec_method("add_harmony_night_3_ref", apply_flags=["melody_2_b"])
# music.exec_method("add_harmony_night_2_ref", transpose=[-1], respell=["flats"],  apply_flags=["melody_3_a"])
# music.exec_method("add_harmony_night_3_ref", transpose=[4], respell=["sharps"], apply_flags=["melody_3_b"])

# ----------------------------------------------------------
# the taiko parts
# TO DO... this could be better organized with the classes (methods not needed just for arranging... )
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
music.exec_method("add_taiko", part_names=["taiko1","taiko2"], apply_flags=["day_music_1",])
music.exec_method("add_taiko", part_names=["taiko2","taiko1"], apply_flags=["day_music_2"])
music.exec_method("add_taiko", part_names=["taiko1","taiko2"], apply_flags=["day_music_end"])
# next up.... add
music.exec_method("add_taiko", part_names=["taiko1","taiko2"], apply_flags=["conduct_1", "conduct_2"])


# FINALLY... RESTS
music.arrange_music(rhythm_material=["bubble_rest"], part_names = wado.parts)



iters=(
    0,    #A  # intro free
    1,
    # 2,3,
    # 4,5,   #B # intro regular
    # 6,7,
    # 8,9,   #C # night melody
    # 10,11, #D 
    # 12,13,
    # 14,    #E # day melody
    # 15, 
    # 16, 
    # 17,18, #F #evening...
    # 19,20, #G #dusk
    21,22, #H conduct
    23,24, # dark melody
    # 25,26,
    # 27,28,
    # 29,30,31,
    # 32,33, # this is the solo...
    # 34,35,36,37, # intro again
    # 37,38,
    # 39,40,
    # 41,42,
    # 43,44,
    # 45,46,
    # 47,48,49 # in use???
    )

music.apply_transforms(iters=iters)

bubble = music.make_bubble(iters=iters)

bubble.make_pdf()
