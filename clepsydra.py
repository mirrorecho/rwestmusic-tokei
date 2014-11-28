from abjad import *

from arrangement import TokeiArrangement
from cycles.loop import CycleLoop, Cycle
from cycles.transform import *


# cycles and transformations...

#question... multiple simultaneous cicles going on?? (assume no)

#

music = CycleLoop()
music.add_cycle(add_flags=["start"])
music.add_cycle()
music.add_cycle(add_flags=["before_movin"])
music.add_cycle(add_flags=["start_movin"])
music.add_cycle()
music.add_cycle()
music.add_cycle(add_flags=["final"])

# is this the best way to deal with the meter and measures??
music.transforms.append(
    AddData(
        "measures_durations", 
        value=[durationtools.Duration(4,4) for i in range(3)], start_iter=0,
        ))

# add A pitch as the main ji pitch
music.add_transform(
    AddData(
        "pitch_ji", 
        value = "a''", 
        start_iter = 0,
        ))

# add reference pitch of E for the first couple of cycles only
music.transforms.append(
    AddData(
        "ref_pitch", 
        value = pitchtools.NumberedPitch("e''"),
        start_flag = "start",
        stop_flag = "start_movin",
        ))

# at the "start_movin" flag, the reference pitch starts incrementing by 1
music.transforms.append(
    ModTransposePitch(
        "ref_pitch", 
        value = 1,
        start_flag = "start_movin"
        ))

# here is the interval sequence for the main melody
music.transforms.append(
    AddData(
        "stream_intervals", 
        value = [0, 2, 0, -2, -3, 0, -5, -7, -2, -9, 3, -2],
        start_iter = 0,
        ))

# here is the interval sequence for the main melody
music.transforms.append(
    AddData(
        "stream_durations", 
        value = [Duration(1, 8), Duration(1, 8), Duration(1, 8), Duration(1, 8), Duration(1, 4), Duration(1, 8), Duration(3, 8), 
        Duration(1,4), Duration(1,4), Duration(1,4), Duration(3,8), Duration(5,8)
        ],
        start_iter = 0,
        ))

music.transforms.append(
    AddMusicFromIntervals(
        "stream_music",
        start_pitch = "ref_pitch", 
        intervals = "stream_intervals",
        durations = "stream_durations",
        start_flag = "before_movin",
        ))

music.transforms.append(
    ArrangePitch(
        "pitch_ji", 
        part = "flute1",
        start_iter = 0
        ))

music.transforms.append(
    ArrangeMusic(
        "stream_music", 
        part = "oboe1",
        start_flag = "before_movin"
        ))

music.transforms.append(
    ArrangePitch(
        "ref_pitch", 
        part = "flute2",
        start_iter = 0
        ))

music.apply_transforms()

music_arrangement = music.make_arrangement()

music_arrangement.show_pdf()

