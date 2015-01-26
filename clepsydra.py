from abjad import *
import settings

from clep_m import *

from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *


# cycles and transformations...

#question... multiple simultaneous cicles going on?? (assume no)

# TO DO...
# - TO DO... get the cloud going properly
# - add an echo of the main stream melody in the cloud



music = CycleLoop(bubble_type=ClepsydraMaterial)
music.add_cycle(flags=["start"])
# music.add_cycle()
music.add_cycle(flags=["before_movin"])
music.add_cycle(flags=["start_movin"])
music.add_cycle(flags=["next_movin"])
# music.add_cycle()
# music.add_cycle()
# music.add_cycle(add_flags=["final"])


# add reference pitch of E for the first couple of cycles only
music.add_pitch_material("ref", ["E5"], stop_flag="next_movin")
music.add_pitch_material("next_ref", ["F5"], stop_flag="next_movin")

# at the "start_movin" flag, the reference pitch starts incrementing by 1
music.transforms.append(
    ModTransposePitch(
        "ref", 
        value = 1,
        start_flag = "next_movin"
        ))
music.transforms.append(
    ModTransposePitch(
        "next_ref", 
        value = 1,
        start_flag = "next_movin"
        ))

winds_up_pitches=WaterCloudWindsUp(name="clep-cloud-winds-up").cloud.pitch_lines
music.add_pitch_material("winds_up", value=winds_up_pitches, apply_flags=["start_movin"])
music.arrange_music(
            part_names=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2"],
            pitch_material="winds_up",
            rhythm_material=["8ths_tied_cresc"],
            apply_flags=["start_movin"]
            )
music.arrange_music(
            part_names=["bassoon1","bassoon2"],
            pitch_material=["ji", ["ref", "next_ref"]],
            rhythms=["c1\\p\\< ~ c1 ~ c1\\mf", "c1(\\p\\< ~ c1 c1)\\mf"],
            apply_flags=["start_movin"],
            transpose=[-24]
            )



# ----------------------------------------------------------------------------------------------------------------------------------------
# PUSHING THE JI and REF

music.add_rhythm_material("push",  "c4\\downbow " * 12)

# would be better to figure out how to fill the whole thing with straight quarter notes...
music.arrange_music(
        pitch_material=["ji"], 
        rhythm_material = ["push"],
        part_names = ["violinI"],
        stop_flag="start_movin"
        )

music.arrange_music(
        pitch_material=["ji", "ref"], 
        rhythm_material=[["measure_note"]*3],
        part_names = ["harmony_1","harmony_2"]
        )


# ----------------------------------------------------------------------------------------------------------------------------------------
# rhythmic fabric:
# are we even using this...? if so, move it to the class?
music.add_rhythm_material("pattern_ma", "b8 b8 r4 r2 R1 R1")

music.add_rhythm_material("pattern1", "r8 c8 r8 c8 c4 c4")

music.arrange_music(
        rhythm_material=["pattern_ma", "pattern1"], 
        part_names = ["taiko1","taiko2"]
        )


# ----------------------------------------------------------------------------------------------------------------------------------------
# CLOUD (WAS STEADY) (harmonic sequence)

# add constant 8th note durations
# music.add_data("steady_durations", Duration(1,8))

# # descending 4ths cell intervals:
# music.add_data("steady_intervals", [-2, -2, -1, -2])

# # the steady lines are each doubled at a 5th...
# music.add_data("steady_double_harmony", 7)

# # mid range:
# music.add_material("steady_range_mid", value = pitchtools.PitchRange('[C4, C5]'))

# music.add_transform(
#     AddPitchesFromIntervalRepeatCell(
#         "steady_pitches", 
#         intervals = "steady_intervals",
#         start_pitch = "ref_pitch",
#         times = 6
#         ))

# music.add_transform(
#     AddPitchesCopy(
#         "steady_pitches_harmony",
#         copy_from = "steady_pitches",
#         transpose = "steady_double_harmony"
#     ))

# # STEADY 2 (counterpoint on top of sequence)

# # the conterpart starts on the 3rd
# music.add_data("steady2_start_above_ref", 4)

# music.add_transform(
#     AddPitchCopy(
#         "ref_stream2_pitch",
#         copy_from = "ref_pitch",
#         transpose = "steady2_start_above_ref"
#     ))

# # descending 4ths cell intervals:
# music.add_data("steady2_intervals", [3, 5, -2, -1])

# music.add_transform(
#     AddPitchesFromIntervalRepeatCell(
#         "steady2_pitches", 
#         intervals = "steady2_intervals",
#         start_pitch = "ref_stream2_pitch",
#         times = 6
#         ))

# music.add_transform(
#     AddPitchesCopy(
#         "steady2_pitches_harmony",
#         copy_from = "steady2_pitches",
#         transpose = "steady_double_harmony" #transposition is the same as steady
#     ))

# -----------------------------------------------------
# now rearrange and arrange!

# WORKS WELL ENOUGH????
# music.add_transform(
#     ModCloudPitchesRearrangeLines(
#         "cloud_steady",
#         pitch_lines = ["steady_pitches", "steady_pitches_harmony", "steady2_pitches", "steady2_pitches_harmony"],
#         tally_apps = [
#             TallyCircleOfFifthsRange(over_range_multiplier=-99), 
#             # TallyParallelIntervals(interval_ratings=[(0,-40), (7,-11), (5,2), (2,4), (4,4)]), 
#             TallyMelodicIntervals(interval_ratings=[(0, 20), (1,9), (2,12), (3,9), (4,9), (5,6), (6,-6), (7,6), (10,-2), (11,-2)])
#             ],
#         times = 222,
#         start_flag = "before_movin",
#     ))

# music.add_transform(
#     MakeMusic(
#         pitches="steady_pitches", 
#         durations = "steady_durations",
#         part = "oboe1",
#         start_flag = "before_movin",
#         pitch_range = "steady_range_mid"
#         ))
# music.add_transform(
#     MakeMusic(
#         pitches="steady_pitches_harmony", 
#         durations = "steady_durations",
#         part = "oboe2",
#         start_flag = "before_movin",
#         pitch_range = "steady_range_mid"
#         ))
# music.add_transform(
#     MakeMusic(
#         pitches="steady2_pitches", 
#         durations = "steady_durations",
#         part = "clarinet1",
#         start_flag = "before_movin",
#         pitch_range = "steady_range_mid"
#         ))
# music.add_transform(
#     MakeMusic(
#         pitches="steady2_pitches_harmony", 
#         durations = "steady_durations",
#         part = "clarinet2",
#         start_flag = "before_movin",
#         pitch_range = "steady_range_mid"
#         ))



# ----------------------------------------------------------------------------------------------------------------------------------------
# THE STREAM (MAIN MELODY)


# the stream melody durations
# music.add_data("stream_durations", [
#                 Duration(1, 8), Duration(1, 8), Duration(1, 8), Duration(1, 8), Duration(1, 4), Duration(1, 8), 
#                 Duration(3, 8), Duration(1,4), Duration(1,4), Duration(1,4), Duration(3,8), Duration(5,8)
#                 ])

music.arrange_music(
        part_names=["flute1"],
        #start_pitch = "ref_pitch", 
        #relative_pitches = "stream_pitches",
        rhythm_material = ["steady_8ths"],
        start_flag = "before_movin",
        )

# FINAL BUBBLE STUFF:

music.apply_transforms()

bubble = music.make_bubble(flags=["before_movin","start_movin"])

bubble.show_pdf()
