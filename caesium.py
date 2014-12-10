from abjad import *

from arrangement import TokeiArrangement
from cycles.loop import CycleLoop, Cycle
from cycles.transform import *
from cloud.pitches import * 




music = CycleLoop()
music.add_cycle(add_flags=["start"])
music.add_cycle()
music.add_cycle()
music.add_cycle(add_flags=["final"])

# is this the best way to deal with the meter and measures??
music.add_data("measures_durations", [durationtools.Duration(4,4) for i in range(3)])

music.add_data("steady_durations", Duration(1,8))

music.add_data("yoga_class", "c8-> r c    c-> r c    c-> r c r     c-> r c      c-> r c r     c-> r c r c r c")

music.add_data("steady_strike", "c8[ c]")

#music.add_data("force_line_pitches", ["d'", "c'", "bf", "g", "a", "e"])
#music.add_data("force_line_durations", [durationtools.Duration(1,4) for i in range(6)])

music.add_data("force_line_pitches", ["d'", "c'", "bf", "g", "a", "e'", "g", "a"])
music.add_data("force_line_durations", [durationtools.Duration(3,8) for i in range(8)])

music.add_transform(
    MakeMusic(
        durations="yoga_class",
        part = "taiko1"
        ))
music.add_transform(
    MakeMusic(
        durations="steady_strike",
        times=12,
        part = "shime"
        ))
music.add_transform(
    MakeMusic(
        pitches = "force_line_pitches",
        durations="force_line_durations",
        #times=2,
        part = "violinI"
        ))


music.apply_transforms()

music_arrangement = music.make_arrangement()

music_arrangement.show_pdf()