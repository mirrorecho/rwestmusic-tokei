from abjad import *
import settings

from tokei import TokeiBubble
from caes_m import *

from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *

string_parts= ["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2","cello_div1","cello_div2","bass_div1","bass_div2"]
wind_parts=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2","bassoon1","bassoon2"]
# putting instruments high to low (trumpets first) for ease of arranging
brass_parts=["trumpet1","trumpet2","horn1","horn2","horn3","horn4","trombone1","trombone2","tuba"]

music = CycleLoop(bubble_type=CaesiumMaterial)

# 0 is ma:
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa)
# 1-4:
# maybe these first few cycles should be indefinite repeats...?
music.add_cycle(flags=["start"])
music.add_cycle()
music.add_cycle(flags=["1hit_a"])
music.add_cycle()
# ------------------------------------
# 5-8:
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["2hits_a", "stop_class1", "melody"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["3hits_a","melody"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
# ------------------------------------
# 9-12
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
music.add_cycle(flags=["1hit_b", "string_nasty_3", "taiko_3"])
music.add_cycle(flags=["string_nasty_2", "taiko_2"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
# # -------------------------------------------------------------------
# 13-16
music.add_cycle(flags=["1hit_b", "string_melody_cloud"])
music.add_cycle(flags=["1hit_b", "string_melody_cloud_up"])
music.add_cycle(flags=["winds_up4_cloud_down"]) 
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# ------------------------------------
# 17-20
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_hits","brass_melody", "midlow_strings_pad"],)
music.add_cycle(flags=["string_nasty_3", "taiko_3"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_hits","brass_melody_widen", "midlow_strings_pad"],)
music.add_cycle(flags=["string_nasty_2", "taiko_2"])
# ------------------------------------
# 21-24
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
music.add_cycle()
music.add_cycle(flags=["taiko_2"])
music.add_cycle(flags=["taiko_2"])
# # -------------------------------------------------------------------
# 25-28 (key change to f)
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
music.add_cycle(flags=["taiko_2"])
music.add_cycle(flags=["taiko_2"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2"])
# ------------------------------------
# 29-32
# add something else to his ma?
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
music.add_cycle(flags=["taiko_3"])
music.add_cycle(flags=["taiko_3"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
# ------------------------------------
# 33-36
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
# add something else to his ma?
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# # -------------------------------------------------------------------
# 37-40
# everyone plays, on melody, or in 3,6
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
# ------------------------------------
# 41-44
# everyone plays, on melody, or in 2,4
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2"])
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2"])
# ------------------------------------
# 45-48
# a single tone, but not much of one
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
# - silence
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])

# ---------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------
# TAIKO PARTS

# steady ji for first several cycles
music.arrange_music(rhythm_material=["taiko_ji"], part_names=["taiko1","taiko2","odaiko"], stop_flag="melody")

music.arrange_music(rhythm_material=["melody"], part_names=["taiko1","taiko2","odaiko"], apply_flags=["melody"])

music.arrange_music(rhythm_material=["melody_hits"], part_names=["taiko1","taiko2"], apply_flags=["melody_hits"])
music.arrange_music(rhythm_material=["melody"], part_names=["odaiko"], apply_flags=["melody_hits"])

music.arrange_music(rhythm_material=["taiko_2"], part_names=["taiko1","taiko2"], apply_flags=["taiko_2"])
music.arrange_music(rhythm_material=["taiko_3"], part_names=["taiko1","taiko2"], apply_flags=["taiko_3"])

music.arrange_music(rhythm_material=["melody","taiko_2"], part_names=["taiko1","taiko2"], apply_flags=["melody_split_2"])
music.arrange_music(rhythm_material=["melody","taiko_3"], part_names=["taiko1","taiko2"], apply_flags=["melody_split_3"])

# -----------------------------------------------
# as things heat up, gane starts steady strike
#??? use this....
#music.arrange_music("taiko_ji", part_names=["gane"], start_flag="gane")

# --------------------------------------------------------------------------------------
# SWELLS:

music.arrange_music(part_names=["horn1","horn2"], apply_before_flags=["melody"], 
    rhythm_material=["swell"], pitch_material="swell_stack")

music.arrange_music(part_names=["perc1"], apply_before_flags=["ma"], rhythm_material=["swell_cymb"])


# --------------------------------------------------------------------------------------
# LOW HITS:

music.arrange_music(part_names=["tuba","trombone1", "trombone2","timpani"], apply_flags=["melody"], 
    rhythm_material=["smack","smack","smack","smack_perc"], pitch_material="low_stack")

# --------------------------------------------------------------------------------------
# CLEARER "MELODIES"

music.exec_method("force_brass_4_melody", cloud_name="caes-cloud-highbrass-4-melody", apply_flags=["brass_melody"])

music.exec_method("force_brass_4_melody", cloud_name="caes-cloud-brass-4-melody-widen", apply_flags=["brass_melody_widen"])

music.arrange_music(part_names=["trumpet2","trumpet1","horn3","horn1","horn2","horn4"], 
    apply_flags=["brass_melody"], 
    rhythm_material=["melody_push"], 
    pitch_material="brass_lines",
    respell_material="brass_lines_respell"
    )

music.arrange_music(part_names=brass_parts[:-1], 
    apply_flags=["brass_melody_widen"], 
    rhythm_material=["melody_push"], 
    pitch_material="brass_lines",
    respell_material="brass_lines_respell"
    )

# --------------------------------------------------------------------------------------
# PADDING:
music.arrange_music(part_names=["cello_div2","cello_div1","viola_div2","viola_div1"], 
    apply_flags=["midlow_strings_pad"], 
    rhythms=["c4. ~ c4. ~ c4 ~ c4     c4. ~ c4 ~ c4     c4 ~ c4 ~ c4. "], 
    pitch_material="ji_stack",
    transpose=[-24,-24,-24,-12],
    pitch_offset=[2]
    #respell_material,
    )


# --------------------------------------------------------------------------------------
# STRING NASTIES AND CLOUD:

music.arrange_music(part_names=string_parts, apply_flags=["string_nasty_3"], 
    rhythm_material=["string_nasty_3"], pitches=[["x"]])

music.arrange_music(part_names=string_parts, apply_flags=["string_nasty_2"], 
    rhythm_material=["string_nasty_2"], pitches=[["x"]])


music.exec_method("force_strings_melody", apply_flags=["string_melody_cloud"])
music.exec_method("force_strings_melody", cloud_name="caes-cloud-strings-melody-up", apply_flags=["string_melody_cloud_up"])

music.arrange_music(part_names=string_parts[:-2], 
    apply_flags=["string_melody_cloud","string_melody_cloud_up"], 
    rhythm_material=["staccato"], 
    pitch_material="strings_cloud",
    respell_material="strings_cloud_respell"
    )

music.arrange_music(part_names=["oboe1","oboe2","flute2","oboe3","flute1"],
        apply_flags=["string_melody_cloud","string_melody_cloud_up"], 
        rhythms=["r2 r4 c4-.  c-. r4 r2 R1"],
        pitch_material="accents",
        respell=["sharps"],
        pitch_offset=[6],
        )

music.exec_method("force_winds_up4_down", cloud_name="caes-cloud-winds-up4-down", apply_flags=["winds_up4_cloud_down"])

music.arrange_music(part_names=wind_parts, 
    apply_flags=["winds_up4_cloud_down"], 
    rhythms=["c8[( c c c]) "*6], 
    pitch_material="winds_cloud",
    respell_material="winds_cloud_respell"
    )



# --------------------------------------------------------------------------------------
# these are the "hits" that build throughout the entire work

music.add_material("hit_points", [0], start_flag="1hit_a", 
    #stop_flag="1hit_b"
    )
music.add_pitch_material("hits", value=[["A5","E5"]])

# music.add_data("hit_pitches", ["a'", "e''"])
# music.add_transform(
#     ModAddPoint(
#         "hit_points",
#         start_flag="2hits",
#         point=6
#         ))
# music.add_transform(
#     ModAddPoint(
#         "hit_points",
#         start_flag="3hits",
#         point=13
#         ))
# # --------------------------------
# music.add_data("hit_points", [0], start_flag="1hit_2")
# music.add_transform(
#     ModAddPoint(
#         "hit_points",
#         start_flag="3hits_2",
#         point=6
#         ))
# music.add_transform(
#     ModAddPoint(
#         "hit_points",
#         start_flag="3hits_2",
#         point=10
#         ))
# music.add_transform(
#     ModAddPoint(
#         "hit_points",
#         apply_flags=["5hits_2", "6hits_2"],
#         point=17
#         ))
# music.add_transform(
#     ModAddPoint(
#         "hit_points",
#         apply_flags=["5hits_2", "6hits_2"],
#         point=21
#         ))
# music.add_transform(
#     ModAddPoint(
#         "hit_points",
#         apply_flags=["6hits_2"],
#         point=23
#         ))

music.add_transform(
    MakeMusicFromHits(
        "hit_points",
        part_names=["trumpet1", "trumpet2"],
        pitch_material="hits",
        cycle_length=24,
        denominator=8,
        start_flag="1hit_a",
        stop_flag="brass_melody",
        ))

#transform hit points to come more often...

# --------------------------------------------------------------------------------------
# MA arranging...


# skip all transformations already created
for t in music.transforms:
    t.skip_flags.append("ma")

# add the default ma transform
music.exec_method("arrange_ma", apply_flags=["ma"])

# Add any more ma-specific transormations here...


# --------------------------------------------------------------------------------------


music.apply_transforms()

bubble = music.make_bubble()

bubble.show_pdf()

#music_arrangement.show_pdf(part_names=["taiko1", "flute1", "flute2", "oboe1", "oboe2", "oboe3", "clarinet1", "clarinet2", "bassoon1", "bassoon2"])



# --------------------------------------------------------------------------------------
# FOR DEBUGGING
# for i,t in enumerate(music.transforms):
#     print("#" + str(i))
#     print(t.name)
#     print(t.skip_flags)
#     print(t.apply_flags)
#     print(t.stop_flag)
#     print("--------------------")