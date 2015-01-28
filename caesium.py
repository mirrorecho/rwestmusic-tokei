from abjad import *
import settings

from tokei import TokeiBubble
from caes_m import *

from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *


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
music.add_cycle(flags=["2hits", "stop_class1", "taiko_1"])
music.add_cycle(flags=["3hits","melody"])
music.add_cycle(flags=["melody"])
# ------------------------------------
# 9-12
# music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# music.add_cycle(flags=["1hit_2"])
# music.add_cycle()
# music.add_cycle()
# # -------------------------------------------------------------------
# music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!


# # -------------------------------------------------------------------

# music.add_cycle()
# music.add_cycle()
# music.add_cycle()
# music.add_cycle()

# music.add_cycle(flags=["3hits_2"])
# music.add_cycle(flags=["5hits_2"])
# # (note... this next cycle jumps back to 3 hits)
# music.add_cycle(flags=["3hits_2"])
# music.add_cycle(flags=["6hits_2"])
# music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# # -------------------------------------------------------------------

# music.add_cycle(flags=["2hits_3"])
# music.add_cycle()
# music.add_cycle()
# music.add_cycle()

# music.add_cycle(flags=["4hits_3"])
# music.add_cycle()
# music.add_cycle(flags=["5hits_3"])
# music.add_cycle(flags=["6hits_3"])
# music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# # -------------------------------------------------------------------

# # for this next one (4hits_4) ... put all the hits towards the end
# # a build up here to the next hit.... now all the hits should be REALLY big
# music.add_cycle(flags=["heating", "4hits_4"])
# music.add_cycle(flags=["5hits_4"])
# music.add_cycle()
# music.add_cycle(flags=["6hits_4"])

# music.add_cycle()
# music.add_cycle()
# music.add_cycle()
# music.add_cycle()

# music.add_cycle()
# music.add_cycle()
# music.add_cycle()
# music.add_cycle()
# music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# # -----------------------------------------------------------------

# music.add_cycle()
# music.add_cycle()
# music.add_cycle()
# music.add_cycle()

# music.add_cycle()
# music.add_cycle()
# music.add_cycle()
# music.add_cycle(flags=["final"])
music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!

# -----------------------------------------------------------------

# old stuff... use it?
# music.add_data("foce_osti_smooth_1", "c8-.-> c-. c-.    c-.-> c-. c-.   c-.-> c-. c-. c-.    c( c c) c( c c c)    c( c c c)   c(-> c) c-.->")

# music.add_data("steady_strike", "c8[ c]")

# music.add_data("end_climb_strike", "r8 c\\p\\< c[ c] c[ c] c[ c]\\f\\!")

# music.add_data("steady_beat", "c4")

# music.add_data("class_simple_1", "r2 r4 c4 | c4 r4 r8 c8 r8 c8 | R1")

# force_cloud1 = ForceCloud1()
# music.add_data("force_cloud", force_cloud1.cloud.pitch_lines)


# -----------------------------------------------
# TAIKO PARTS

# steady ji for first several cycles
music.arrange_music(rhythm_material=["taiko_ji"], part_names=["taiko1","taiko2","odaiko"], stop_flag="melody")

music.arrange_music(rhythm_material=["melody"], part_names=["taiko1","taiko2","odaiko"], apply_flags=["melody"])

# -----------------------------------------------
# as things heat up, gane starts steady strike
#??? use this....
#music.arrange_music("taiko_ji", part_names=["gane"], start_flag="gane")

# --------------------------------------------------------------------------------------
# SWELLS:

music.arrange_music(part_names=["horn1","horn2"], apply_before_flags=["melody"], 
    rhythm_material=["swell"], pitch_material="swell_stack")

# --------------------------------------------------------------------------------------
# LOW HITS:

music.arrange_music(part_names=["tuba","trombone1", "trombone2"], apply_flags=["melody"], 
    rhythm_material=["smack"], pitch_material="low_stack")

# --------------------------------------------------------------------------------------
# these are the "hits" that build throughout the entire work

music.add_material("hit_points", [0], start_flag="1hit_a", stop_flag="1hit_b")
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

music.cycles[4].show_pdf()

bubble = music.make_bubble(iters=[4,5])

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