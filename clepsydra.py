from abjad import *
import settings

from clep_m import *
from clep_c import *

from calliope.cycles.transform import *

# TO DO...
# - add an echo of the main stream melody in the cloud

string_parts= ["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2","cello_div1","cello_div2","bass_div1","bass_div2"]

music = get_cycle_music()

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
        part_names = ["violinI_div1","violinI_div2",],
        start_flag = "start",
        stop_flag="start_movin",
        apply_flags=["winds_down"],
        )

music.arrange_music(
        pitch_material=["slide_ji"], 
        rhythm_material = ["slide"],
        part_names = ["violinII_div1","violinII_div2",],
        start_flag = "start",
        stop_flag="start_movin",
        respell=("sharps",)
        )

music.arrange_music(
        part_names=["violinII_div1","violinII_div2",],
        pitches=[["E5","B4"]], 
        rhythm_material=["dotted"],
        apply_flags=["winds_down"],
        )

# --------------------------------------------------------------------------------------------
# taiko parts
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_intro_1","taiko_intro_2"],
            start_flag="start_taiko",
            stop_flag="start_movin",
            )
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_do_don_cycle"],
            apply_flags=["winds_up","winds_down"],
            )
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_melody_1"],
            apply_flags=["taiko_melody_1"]
            )
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_melody_2"],
            apply_flags=["taiko_melody_2"]
            )
# --------------------------------------------------------------------------------------------
# CLOUD  (harmonic sequence)

high_winds=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2"]
winds_up_pitches=WaterCloudWindsUp(name="clep-cloud-winds-up").cloud_pitches()
music.arrange_music(
            part_names=high_winds,
            pitches=winds_up_pitches,
            rhythm_material=["8ths_tied_cresc"],
            apply_flags=["winds_up"]
            )

winds_down_pitches=WaterCloudWindsDown(name="clep-cloud-winds-down", start_pitch="F#5").cloud_pitches()
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

# a string cloud that kind of follows the melody
music.exec_method("add_stream_cloud_pitches", pitch_times=(8,8,8), apply_flags=["stream_cloud1"])
music.exec_method("add_stream_cloud_pitches",  pitch_times=(8,8,8), stream_cloud_type=StreamCloud2, apply_flags=["stream_cloud2"])
music.exec_method("add_stream_cloud_pitches", pitch_name="stream_cloud_single", pitch_times=(1,1,1), apply_flags=["stream_cloud1"])
music.exec_method("add_stream_cloud_pitches",  pitch_name="stream_cloud_single", pitch_times=(1,1,1), stream_cloud_type=StreamCloud2, apply_flags=["stream_cloud2"])

music.arrange_music(
            part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2"],
            apply_flags=["stream_cloud_strings_staccato"],
            rhythms=["c8-. "*24],
            pitch_material= "stream_cloud_mid",
            transpose=[-12],
            )

music.arrange_music(
            part_names=["horn1","horn2"],
            apply_flags=["cloud_swell1"],
            rhythms=["R1 R1 c1\\p "],
            pitch_material= "stream_cloud_single_mid",
            transpose=[-24],
            pitch_offset=[2],
            )
music.arrange_music(
            part_names=["horn3","horn4"],
            apply_flags=["cloud_swell1"],
            rhythms=["R1 R1 c1\\p "],
            pitch_material= "stream_cloud_single_mid",
            transpose=[-24],
            pitch_offset=[2],
            )
music.arrange_music(
            part_names=["horn1","horn2","horn3","horn4"],
            apply_flags=["cloud_swell2"],
            rhythms=["r2 c2(\\< c1) c1\\mf "],
            pitch_material= "stream_cloud_single_mid",
            transpose=[-24],
            respell=["flats"]
            )

# the real cloud in the strings
music.exec_method("arrange_cloud",
            part_names=string_parts[:-2],
            cloud_type=WaterCloudStringsMelody,
            cloud_name="clep-cloud-strings-melody-1-B",
            respell=["sharps"],
            rhythms=[["c8(\\mp\\< c c) c(  c) c(\\mf c c) " + "c---. "*8 + "c( c c) c(  c) c( c) c-- "]],
            apply_flags=["full_stream_1"]
            )


# ---------------------------------------------------------------------------------------------
# THE STREAM (MAIN MELODY)
# TO DO... mute this trumpet
music.exec_method("arrange_stream",
            part_name="trumpet1",
            apply_after_flags=["start_movin"],
            stream_type=StreamHint1,
            transpose=[-12]
            )
music.exec_method("arrange_stream",
            part_name="trumpet2",
            apply_flags=["stream_hint1"],
            stream_type=StreamHint2,
            )
music.exec_method("arrange_stream",
            part_name="flute1",
            apply_flags=["full_stream_1"],
            respell=["sharps"]
            )


# ---------------------------------------------------------------------------------------------

music.arrange_music(
        pitch_material=["ref"], 
        rhythm_material=[["measure_note"]*3],
        part_names = ["harmony_1"]
        )


# FINAL BUBBLE STUFF:

music.apply_transforms()

bubble = music.make_bubble(iters=(12,13,14,15))

bubble.show_pdf()
