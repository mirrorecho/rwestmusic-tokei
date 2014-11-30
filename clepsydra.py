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
music.add_cycle()
music.add_cycle(add_flags=["final"])

# is this the best way to deal with the meter and measures??
music.add_data("measures_durations", [durationtools.Duration(4,4) for i in range(3)])

# add A pitch as the main ji pitch
music.add_data("ji_pitch", pitchtools.NumberedPitch("a''"))

# add reference pitch of E for the first couple of cycles only
music.add_data("ref_pitch", pitchtools.NumberedPitch("e''"), stop_flag="start_movin")

# at the "start_movin" flag, the reference pitch starts incrementing by 1
music.transforms.append(
    ModTransposePitch(
        "ref_pitch", 
        value = 1,
        start_flag = "start_movin"
        ))


# ----------------------------------------------------------------------------------------------------------------------------------------
# STEADY (harmonic sequence)

# add constant 8th note durations
music.add_data("steady_durations", Duration(1,8))

# descending 4ths cell intervals:
music.add_data("steady_intervals", [-2, -2, -1, -2])

# the steady lines are each doubled at a 5th...
music.add_data("steady_double_harmony", 7)

# mid range:
music.add_data("steady_range_mid", value = pitchtools.PitchRange('[C4, C5]'))

music.add_transform(
    AddMusicFromIntervalRepeatCell(
        "steady_music", 
        #pitch_range = "steady_range_mid",
        intervals = "steady_intervals",
        start_pitch = "ref_pitch",
        durations = "steady_durations",
        times = 6
        ))

music.add_transform(
    AddMusicCopy(
        "steady_music_harmony",
        copy_from = "steady_music",
        transpose = "steady_double_harmony"
    ))

music.transforms.append(
    ArrangeMusic(
        "steady_music", 
        part = "oboe2",
        start_flag = "before_movin",
        pitch_range = "steady_range_mid"
        ))

music.transforms.append(
    ArrangeMusic(
        "steady_music_harmony", 
        part = "oboe1",
        start_flag = "before_movin",
        pitch_range = "steady_range_mid"
        ))

# ----------------------------------------------------------------------------------------------------------------------------------------
# STREAM 2 (counterpoint on top of sequence)

# the steady lines are each doubled at a 5th...
music.add_data("steady2_start_above_ref", 4)

music.add_transform(
    AddPitchCopy(
        "ref_stream2_pitch",
        copy_from = "ref_pitch",
        transpose = "steady2_start_above_ref"
    ))

# descending 4ths cell intervals:
music.add_data("steady2_intervals", [3, 5, -2, -1])

music.add_transform(
    AddMusicFromIntervalRepeatCell(
        "steady2_music", 
        intervals = "steady2_intervals",
        start_pitch = "ref_stream2_pitch",
        durations = "steady_durations",
        times = 6
        ))

music.add_transform(
    AddMusicCopy(
        "steady2_music_harmony",
        copy_from = "steady2_music",
        transpose = "steady_double_harmony" #transposition is the same as steady
    ))

music.transforms.append(
    ArrangeMusic(
        "steady2_music", 
        part = "clarinet2",
        start_flag = "before_movin",
        pitch_range = "steady_range_mid"
        ))

music.transforms.append(
    ArrangeMusic(
        "steady2_music_harmony", 
        part = "clarinet1",
        start_flag = "before_movin",
        pitch_range = "steady_range_mid"
        ))

# ----------------------------------------------------------------------------------------------------------------------------------------
# THE STREAM (MAIN MELODY)

# the stream melody pitch sequence
music.add_data("stream_pitches", [0, 2, 0, -2, -3, 0, -5, -7, -2, -9, 3, -2])

# the stream melody durations
music.add_data("stream_durations", [
                Duration(1, 8), Duration(1, 8), Duration(1, 8), Duration(1, 8), Duration(1, 4), Duration(1, 8), 
                Duration(3, 8), Duration(1,4), Duration(1,4), Duration(1,4), Duration(3,8), Duration(5,8)
                ])

music.add_transform(
    AddMusicFromRelativePitches(
        "stream_music",
        start_pitch = "ref_pitch", 
        relative_pitches = "stream_pitches",
        durations = "stream_durations",
        start_flag = "before_movin",
        ))

music.add_transform(
    ArrangeMusic(
        "stream_music", 
        part = "trumpet1",
        start_flag = "before_movin"
        ))


# ARRANGEMENT STUFF:

music.add_transform(
    ArrangePitch(
        "ji_pitch", 
        part = "flute1",
        start_iter = 0
        ))



music.add_transform(
    ArrangePitch(
        "ref_pitch", 
        part = "flute2",
        start_iter = 0
        ))

music.apply_transforms()

music_arrangement = music.make_arrangement()

music_arrangement.show_pdf()

# music_arrangement.make_score()
# play(music_arrangement.score)

