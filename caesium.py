from abjad import *

from arrangement import TokeiArrangement
from cycles.loop import CycleLoop, Cycle
from cycles.transform import *
from cloud.pitches import * 





music = CycleLoop([(4,4) for i in range(3)])
ma_duration = [(1,4)]

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
music.add_cycle(add_flags=["final"])


music.add_data("steady_durations", Duration(1,8))

music.add_data("ma", scoretools.Container("r4 \\fermata"), apply_flags=["ma"])

music.add_data("yoga_class", "c8-> r c    c-> r c    c-> r c r     c-> r c      c-> r c r     c-> r c r c r c")

music.add_data("steady_strike", "c8[ c]")

#music.add_data("force_line_pitches", ["d'", "c'", "bf", "g", "a", "e"])
#music.add_data("force_line_durations", [durationtools.Duration(1,4) for i in range(6)])

def joinalter(it, delimiter):
    for x in it:
        yield delimiter
        yield x

force_line_pitches = ["bf'", "cs''", "d''", "e''", "fs''", "g''"]
force_line_pitches_wrap = force_line_pitches.copy()
force_line_pitches_wrap.insert(0, "a'")
force_line_pitches_wrap.append("a'")
force_line_pitches_alter = (joinalter(force_line_pitches, "a'"))


music.add_data("force_line_pitches", force_line_pitches)
music.add_data("force_line_pitches_wrap", force_line_pitches_wrap)
music.add_data("force_line_pitches_alter", force_line_pitches_alter)

music.add_data("force_line_ma_pitches", force_line_pitches_alter)

# TO DO:
# quick way to copy pitches to a stacked interval set 9 total (2 a, bf, e, and 5 for each chord)
# repeat each pitch like [a bf bf bf a cs cs cs etc.]
# cloud pitches to use ranges (for each point!)
# winds ranges mid to widely spaced
# make for_line_pitches_alter cloud (with winds ranges)
# save the pitch cloud



music.add_data("force_line_durations", [durationtools.Duration(2,4) for i in range(6)])
music.add_data("force_line_durations_wrap", [durationtools.Duration(3,8) for i in range(8)])
music.add_data("force_line_durations_alter", [durationtools.Duration(1,4) for i in range(12)])

# --------------------------------------------------------------------------------------
music.add_transform(
    MakeMusic(
        durations="yoga_class",
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

music.add_transform(
    MakeMusic(
        pitches = "force_line_pitches_alter",
        durations="force_line_durations",
        #times=2,
        part = "violinI",
        start_flag="first_hit",
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

music_arrangement.show_pdf(part_names=["taiko1", "trumpet2", "trumpet1", "violinI"])