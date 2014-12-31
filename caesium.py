from abjad import *
from tokei import TokeiArrangement
from caesium_material import ForceCloud1

# any way to avoid this sys path part??
import sys
sys.path.append("/Users/randallwest/Code/mirrorecho")

import calliope.cycles.loop
from calliope.cycles.transform import *

import calliope.cloud.pitches



music = calliope.cycles.loop.CycleLoop(measures_durations=[(4,4) for i in range(3)], arrangement_type=TokeiArrangement)
ma_duration = [(1,4)]

empty_arrangement = TokeiArrangement()

music.add_cycle(add_flags=["start"])
music.add_cycle()
music.add_cycle()
music.add_cycle()

music.add_cycle(add_flags=["first_hit"])
music.add_cycle()
music.add_cycle(add_flags=["2hits"])
music.add_cycle(add_flags=["3hits"])

music.add_cycle(add_flags=["ma"], measures_durations=ma_duration)
music.add_cycle()
music.add_cycle(add_flags=["1hit_2"])
music.add_cycle()
music.add_cycle(add_flags=["ma"], measures_durations=ma_duration)
music.add_cycle()
music.add_cycle(add_flags=["3hits_2"])
music.add_cycle(add_flags=["final"])



music.add_data("steady_durations", Duration(1,8))

music.add_data("ma", scoretools.Container("r4 \\fermata"), apply_flags=["ma"])

music.add_data("class", "c8-> r c    c-> r c    c-> r c r     c-> r c      c-> r c r     c-> r c r c r c")

music.add_data("foce_osti_smooth_1", "c8-.-> c-. c-.    c-.-> c-. c-.   c-.-> c-. c-. c-.    c( c c) c( c c c)    c( c c c)   c(-> c) c-.->")

music.add_data("steady_strike", "c8[ c]")

#music.add_data("force_pitches", ["d'", "c'", "bf", "g", "a", "e"])
#music.add_data("force_durations", [durationtools.Duration(1,4) for i in range(6)])

# def joinalter(it, delimiter):
#     for x in it:
#         yield delimiter
#         yield x

# def joinalter_2(it, delimiter):
#     for x in it:
#         yield delimiter
#         yield x
#         yield x
#         yield x

# force_pitches = ["bf'", "cs''", "d''", "e''", "fs''", "g''"]
# force_pitches_wrap = force_pitches.copy()
# force_pitches_wrap.insert(0, "a'")
# force_pitches_wrap.append("a'")
# force_pitches_alter = [p for p in joinalter(force_pitches, "a'")]
# force_pitches_alter_2 = [p for p in joinalter_2(force_pitches, "a'")]

# music.add_data("force_pitches", force_pitches)
# music.add_data("force_pitches_wrap", force_pitches_wrap)
# music.add_data("force_pitches_alter", force_pitches_alter)
# music.add_data("force_pitches_alter_2", force_pitches_alter_2)

music.add_data("force_durations", [durationtools.Duration(2,4) for i in range(6)])
music.add_data("force_durations_wrap", [durationtools.Duration(3,8) for i in range(8)])
music.add_data("force_durations_alter", [durationtools.Duration(1,4) for i in range(12)])
music.add_data("force_durations_alter_2", [durationtools.Duration(1,8) for i in range(24)])

# music.add_data("force_harmonic_stack", [0, 3, 7, 7, 12])

# music.add_data("force_ma_cloud_pitches", ["a'" for i in range(24)])

# music.add_data("force_ma_harmonic_stack", [0, 0, 1, 7])

force_cloud1 = ForceCloud1()
music.add_data("force_cloud", force_cloud1.cloud.pitch_lines)


# TO DO:
# (DONE) quick way to copy pitches to a stacked interval set 9 total (2 a, bf, e, and 5 for each chord)
# (DONE) repeat each pitch like [a bf bf bf a cs cs cs etc.]
# (DONE) better way to handle cloud pitch lines (matrix) with cycles (e.g. a single data definition for the whole matrix)
# (DONE) --- arrange pitches from a matrix
# (DONE) save/load the pitch cloud
# (DONE... classes!) plan for how to deal with pre-saved data vs cycle-determined data (and keep pre-saved data from getting stagnant)
# (DONE... although very slow) cloud pitches to use ranges (for each point!)
# (DONE) winds ranges mid to widely spaced
# check on saving pitch ranges with the cloud
# make for_line_pitches_alter cloud (with winds ranges)
# arrangement auto clefs
# tool to easily make a pitch range
# move get_pitch_number and music_from_durations out of transformf
# better to make an option to include a single pitch range per line? (instead of always a range per pitch?)
# (DONE... may add on) cloud repeat indefinitely (thorugh command prompt) and periodically show, along with ratings

# --------------------------------------------------------------------------------------
music.add_transform(
    MakeMusic(
        durations="class",
        part = "taiko1",
        skip_flags="ma",
        ))
music.add_transform(
    MakeMusic(
        durations="steady_strike",
        times=12,
        part = "shime",
        skip_flags="ma",
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
        skip_flags="ma",
        ))

# --------------------------------------------------------------------------------------

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
music.add_data("hit_points", [0], start_flag="1hit_2")

music.add_transform(
    MakeMusicFromHits(
        "hit_points",
        parts=["trumpet1", "trumpet2"],
        pitches="hit_pitches",
        cycle_length=24,
        denominator=8,
        start_flag="first_hit",
        skip_flags="ma",
        ))

#transform hit points to come more often...

# --------------------------------------------------------------------------------------

music.add_transform(
    ArrangeAll(
        "ma",
        apply_flags="ma",
        ))

# --------------------------------------------------------------------------------------


music.apply_transforms()

music_arrangement = music.make_arrangement()

music_arrangement.show_pdf(part_names=["taiko1", "flute1", "flute2", "oboe1", "oboe2", "oboe3", "clarinet1", "clarinet2", "bassoon1", "bassoon2"])