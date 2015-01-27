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
music.add_cycle()
music.add_cycle(flags=["start_taiko"])
music.add_cycle()
music.add_cycle(flags=["before_movin"])
music.add_cycle(flags=["start_movin", "winds_up"])
music.add_cycle(flags=["next_movin"])
music.add_cycle(flags=["winds_down"])
music.add_cycle(flags=["stream_hint1"])
music.add_cycle()
music.add_cycle(flags=["taiko_melody_1"])
music.add_cycle(flags=["taiko_melody_2"])
music.add_cycle(flags=["taiko_melody_1"])
music.add_cycle(flags=["taiko_melody_2"])
music.add_cycle(flags=["free"])
music.add_cycle(flags=["free"])
music.add_cycle(flags=["free"])
music.add_cycle(flags=["free"])
music.add_cycle()
music.add_cycle(flags=["taiko_melody_1"])
music.add_cycle(flags=["taiko_melody_2"])
music.add_cycle(flags=["taiko_melody_1"])
music.add_cycle(flags=["taiko_melody_2"])
music.add_cycle(flags=["free"])
music.add_cycle(flags=["free"])
music.add_cycle(flags=["free"])
music.add_cycle(flags=["free"])
music.add_cycle()
music.add_cycle(flags=["taiko_melody_1"]) # make a variant of the melody?
music.add_cycle(flags=["taiko_melody_2"])
music.add_cycle(flags=["taiko_melody_1"])
music.add_cycle(flags=["taiko_melody_2"])
music.add_cycle()
music.add_cycle(flags=["slowing"])
music.add_cycle(flags=["slowing"])
music.add_cycle(add_flags=["final"])


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

# ----------------------------------------------------------------------------------------------------------------------------------------
# PUSHING THE JI and REF

music.add_rhythm_material("push",  "c4\\downbow " * 12)

# would be better to figure out how to fill the whole thing with straight quarter notes...
music.arrange_music(
        pitch_material=["ji"], 
        rhythm_material = ["push"],
        part_names = ["violinI"],
        stop_flag="start_movin",
        apply_flags=["winds_down"],
        )

music.arrange_music(
        pitch_material=["ji", "ref"], 
        rhythm_material=[["measure_note"]*3],
        part_names = ["harmony_1","harmony_2"]
        )

music.arrange_music(
        part_names=["violinII"],
        pitches=[["E5","B4"]], 
        rhythm_material=["dotted"],
        apply_flags=["winds_down"],
        )

# --------------------------------------------------------------------------------------------
# taiko melody
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_melody_1"],
            apply_flags=["taiko_melody_1"]
            )
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_melody_1"],
            apply_flags=["taiko_melody_2"]
            )
# --------------------------------------------------------------------------------------------
# CLOUD (WAS STEADY) (harmonic sequence)

high_winds=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2"]
winds_up_pitches=WaterCloudWindsUp(name="clep-cloud-winds-up").cloud.pitch_lines
music.arrange_music(
            part_names=high_winds,
            pitches=winds_up_pitches,
            rhythm_material=["8ths_tied_cresc"],
            apply_flags=["winds_up"]
            )
winds_down_pitches=WaterCloudWindsDown(name="clep-cloud-winds-down").cloud.pitch_lines
music.arrange_music(
            part_names=high_winds,
            pitches=winds_down_pitches,
            rhythm_material=["last_measure_cresc"],
            transpose=[-12],
            apply_before_flags=["winds_down"]
            )
music.arrange_music(
            part_names=high_winds,
            pitches=winds_down_pitches,
            rhythm_material=["8ths_slured_mf"],
            apply_flags=["winds_down"]
            )

music.arrange_music(
            part_names=["bassoon1","bassoon2"],
            pitch_material=["ji", ["ref", "next_ref"]],
            rhythms=["c1\\p\\< ~ c1 ~ c1\\mf", "c1(\\p\\< ~ c1 c1)\\mf"],
            apply_flags=["winds_up","winds_down"],
            transpose=[-24]
            )

# ----------------------------------------------------------------------------------------------------------------------------------------
# THE STREAM (MAIN MELODY)

music.exec_method("arrange_stream",
            part_name="trumpet1",
            apply_after_flags="start_movin",
            )
music.exec_method("arrange_stream",
            part_name="trumpet2",
            apply_flags="stream_hint1",
            stream_type=StreamHint1,
            )


# ----------------------------------------------------------------------------------------------------------------------------------------
# rhythmic fabric:
# are we even using this...? if so, move it to the class?
# music.add_rhythm_material("pattern_ma", "b8 b8 r4 r2 R1 R1")

# music.add_rhythm_material("pattern1", "r8 c8 r8 c8 c4 c4")

# music.arrange_music(
#         rhythm_material=["pattern_ma", "pattern1"], 
#         part_names = ["taiko1","taiko2"]
#         )

# ----------------------------------------------------------------------------------------------------------------------------------------


# FINAL BUBBLE STUFF:

music.apply_transforms()

bubble = music.make_bubble()

bubble.show_pdf()
