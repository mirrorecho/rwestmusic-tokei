from abjad import *
import settings

from tokei import TokeiBubble
from caesium_m import *

import calliope.cycles.loop
from calliope.cycles.transform import *


music = calliope.cycles.loop.CycleLoop(bubble_type=CaesiumMaterial)

# 0 is ma:
music.add_cycle(add_flags=["ma"], bubble_type=CaesiumMa)
# 1-4:
# maybe these first few cycles should be indefinite repeats...?
music.add_cycle(add_flags=["start"])
music.add_cycle()
music.add_cycle(add_flags=["start_class1"])
music.add_cycle()
# ------------------------------------
# 5-8:
music.add_cycle(add_flags=["first_hit", "taiko_1"])
music.add_cycle(add_flags=["2hits", "stop_class1", "taiko_1"])
music.add_cycle(add_flags=["3hits","melody"])
music.add_cycle(add_flags=["melody"])
# ------------------------------------
# 9-12
music.add_cycle(add_flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
music.add_cycle(add_flags=["1hit_2"])
music.add_cycle()
music.add_cycle()
# -------------------------------------------------------------------
music.add_cycle(add_flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!


# -------------------------------------------------------------------

music.add_cycle()
music.add_cycle()
music.add_cycle()
music.add_cycle()

music.add_cycle(add_flags=["3hits_2"])
music.add_cycle(add_flags=["5hits_2"])
# (note... this next cycle jumps back to 3 hits)
music.add_cycle(add_flags=["3hits_2"])
music.add_cycle(add_flags=["6hits_2"])
music.add_cycle(add_flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# -------------------------------------------------------------------

music.add_cycle(add_flags=["2hits_3"])
music.add_cycle()
music.add_cycle()
music.add_cycle()

music.add_cycle(add_flags=["4hits_3"])
music.add_cycle()
music.add_cycle(add_flags=["5hits_3"])
music.add_cycle(add_flags=["6hits_3"])
music.add_cycle(add_flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# -------------------------------------------------------------------

# for this next one (4hits_4) ... put all the hits towards the end
# a build up here to the next hit.... now all the hits should be REALLY big
music.add_cycle(add_flags=["heating", "4hits_4"])
music.add_cycle(add_flags=["5hits_4"])
music.add_cycle()
music.add_cycle(add_flags=["6hits_4"])

music.add_cycle()
music.add_cycle()
music.add_cycle()
music.add_cycle()

music.add_cycle()
music.add_cycle()
music.add_cycle()
music.add_cycle()
music.add_cycle(add_flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# -----------------------------------------------------------------

music.add_cycle()
music.add_cycle()
music.add_cycle()
music.add_cycle()

music.add_cycle()
music.add_cycle()
music.add_cycle()
music.add_cycle(add_flags=["final"])
music.add_cycle(add_flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
# -----------------------------------------------------------------
# DONE!


music.add_data("foce_osti_smooth_1", "c8-.-> c-. c-.    c-.-> c-. c-.   c-.-> c-. c-. c-.    c( c c) c( c c c)    c( c c c)   c(-> c) c-.->")

music.add_data("steady_strike", "c8[ c]")

music.add_data("end_climb_strike", "r8 c\\p\\< c[ c] c[ c] c[ c]\\f\\!")

music.add_data("steady_beat", "c4")

music.add_data("class_simple_1", "r2 r4 c4 | c4 r4 r8 c8 r8 c8 | R1")

force_cloud1 = ForceCloud1()
music.add_data("force_cloud", force_cloud1.cloud.pitch_lines)

# --------------------------------------------------------------------------------------
# cycle markers all the way through... for my sanity!
music.add_transform(
    MakeMusic(
        durations="cycle_marker",
        part = "cycle",
        ))

# --------------------------------------------------------------------------------------
# shime steady all the way through
music.add_transform(
    MakeMusic(
        durations="steady_strike",
        times=12,
        part = "shime",
        ))
# -----------------------------------------------
# steady beat for half of the taikos for first several cycles
music.add_transform(
    MakeMusic(
        durations="steady_beat",
        times=12,
        part = "taiko1",
        stop_flag = "1hit_2",
        ))
# main class at the beginning (possibly make this a variation)
music.add_transform(
    MakeMusic(
        durations="class",
        start_flag="start_class1",
        stop_flag="stop_class1",
        part = "taiko2",
        ))
# -----------------------------------------------
# now the 2nd taikos play steady strikes, and the first play the melody...
music.add_transform(
    MakeMusic(
        durations="steady_strike",
        times=12,
        part = "taiko2",
        start_flag = "1hit_2",
        ))
music.add_transform(
    MakeMusic(
        durations="class_simple_1",
        start_flag="1hit_2",
        part = "taiko1",
        ))
# -----------------------------------------------
# as things heat up, gane starts steady strike
music.add_transform(
    MakeMusic(
        durations="steady_strike",
        times=12,
        part = "gane",
        start_flag = "heating",
        ))



# --------------------------------------------------------------------------------------
# music.add_transform(
#     MakePitchLines(
#         "force_cloud",
#         copy_from = "force_ma_cloud_pitches",
#         harmonic_stack = "force_ma_harmonic_stack"
#     ))
# music.add_transform(
#     MakePitchLines(
#         "force_cloud",
#         copy_from = "force_pitches_alter_2",
#         harmonic_stack = "force_harmonic_stack"
#     ))

# WORKS WELL ENOUGH????
# music.add_transform(
#     ModCloudPitchesRearrangeLines(
#         "force_cloud",
#         tally_apps = [
#             TallyCircleOfFifthsRange(over_range_multiplier=-99), 
#             TallyParallelIntervals(interval_ratings=[(0,-20), (7,-11)]), 
#             TallyMelodicIntervals(interval_ratings=[(0, -99), (1,9), (2,12), (3,9), (4,9), (5,6), (6,-6), (10,-8), (11,-20), (12,-2)], over_incremental_multiplier=(12,-60))
#             ],
#         tally_times = 22,
#         apply_flags = ["first_hit"],
#     ))

music.add_transform(
    MakeMusicLines(
        pitch_lines = "force_cloud",
        durations="force_durations_alter_2",
        parts = ["flute1", "flute2", "oboe1", "oboe2", "oboe3", "clarinet1", "clarinet2", "bassoon1", "bassoon2"],
        apply_flags=["first_hit"],
        ))

# --------------------------------------------------------------------------------------
# these are the "hits" that build throughout the entire work

music.add_data("hit_points", [10], start_flag="first_hit", stop_flag="1hit_2")
music.add_data("hit_pitches", ["a'", "e''"])
music.add_transform(
    ModAddPoint(
        "hit_points",
        start_flag="2hits",
        point=6
        ))
music.add_transform(
    ModAddPoint(
        "hit_points",
        start_flag="3hits",
        point=13
        ))
# --------------------------------
music.add_data("hit_points", [0], start_flag="1hit_2")
music.add_transform(
    ModAddPoint(
        "hit_points",
        start_flag="3hits_2",
        point=6
        ))
music.add_transform(
    ModAddPoint(
        "hit_points",
        start_flag="3hits_2",
        point=10
        ))
music.add_transform(
    ModAddPoint(
        "hit_points",
        apply_flags=["5hits_2", "6hits_2"],
        point=17
        ))
music.add_transform(
    ModAddPoint(
        "hit_points",
        apply_flags=["5hits_2", "6hits_2"],
        point=21
        ))
music.add_transform(
    ModAddPoint(
        "hit_points",
        apply_flags=["6hits_2"],
        point=23
        ))

music.add_transform(
    MakeMusicFromHits(
        "hit_points",
        parts=["trumpet1", "trumpet2"],
        pitches="hit_pitches",
        cycle_length=24,
        denominator=8,
        start_flag="first_hit",
        ))

#transform hit points to come more often...

# --------------------------------------------------------------------------------------
# Ma arranging...

# skip all transformations already created
for t in cycle.transforms:
    skip_flags.append("ma")

music.exec_method("arrange_ma", apply_flags="ma")

# Add any more ma-specific transormations here...

# --------------------------------------------------------------------------------------


music.apply_transforms()

music_arrangement = music.make_arrangement()
music_arrangement.show_pdf(part_names=["cycle", "trumpet1", "trumpet2", "gane", "shime", "taiko1", "taiko2", "odaiko"])

#music_arrangement.show_pdf(part_names=["taiko1", "flute1", "flute2", "oboe1", "oboe2", "oboe3", "clarinet1", "clarinet2", "bassoon1", "bassoon2"])
