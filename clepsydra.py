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
        start_flag = "next_movin",
        skip_flags=["free"]
        ))
music.transforms.append(
    ModTransposePitch(
        "next_ref", 
        value = 1,
        start_flag = "next_movin",
        skip_flags=["free"]
        ))
music.transforms.append(
    ModTransposePitch(
        "ref", 
        value = 0,
        start_flag = "next_movin",
        apply_flags=["free"]
        ))
music.transforms.append(
    ModTransposePitch(
        "next_ref", 
        value = 0,
        start_flag = "next_movin",
        apply_flags=["free"]
        ))

# ----------------------------------------------------------------------------------------------------------------------------------------
# PUSHING THE JI and REF

music.add_rhythm_material("push",  "c4\\downbow " * 12)
music.add_rhythm_material("push", "c4\\downbow " * 8 + "R1 ", apply_flags=["start_pause"])
music.add_rhythm_material("slide", "c1 c4.( c8 ~ c2) R1", apply_flags=["start_pause"])

# would be better to figure out how to fill the whole thing with straight quarter notes...

music.arrange_music(
        pitch_material=["ji", "ji", "slide_ji", "slide_ji"], 
        rhythm_material = ["push","push","slide","slide"],
        part_names = ["violinI_div1","violinI_div2","violinII_div1","violinII_div2",],
        start_flag = "start",
        stop_flag="start_taiko",
        apply_flags=["winds_down"],
        respell=("sharps",)
        )
music.attach_dynamics(part_names=["violinI_div1","violinI_div2"], dynamics=[["mf"]], apply_flags=["start"])

music.arrange_music(
        part_names=["violinII_div1","violinII_div2",],
        pitches=[["E5","B4"]], 
        rhythm_material=["dotted"],
        apply_flags=["winds_down"],
        )
# --------------------------------------------------------------------------------------------
# FREE SECTIONS
# if all else fails, violins cam tremolo on ji
trem_parts = ["violinI_div1","violinI_div2","violinII_div1","violinII_div2",]
music.arrange_music(
        pitch_material=["ji", "slide_ji", "ji", "slide_ji"], 
        pitch_offset=[1],
        rhythm_material = "trem_repeat",
        part_names = trem_parts,
        apply_flags=["free"],
        respell=["sharps"]
        )
# since the box instructions aren't working:
music.attach_markup(part_names=trem_parts, markup_texts=[["repeat randomly"]], 
    indices=[[1]], notes_only=[False], apply_flags=["start_taiko","start_taiko_2"])
music.attach_markup(part_names=trem_parts, markup_texts=[["sim"]], 
    indices=[[1]], notes_only=[False], apply_flags=["start_taiko_2"])


# --------------------------------------------------------------------------------------------
# taiko parts
# TAIKO INTRO
music.arrange_music(
            part_names=["shime","taiko1","taiko2"], 
            rhythm_material=["taiko_free_intro_shime","taiko_free_intro_1","taiko_free_intro_2"],
            apply_flags=["start_taiko"],
            )
music.arrange_music(
            part_names=["shime","taiko1","taiko2"], 
            rhythm_material=["taiko_free_intro_shime_a","taiko_free_intro_a","taiko_free_intro_a"],
            apply_flags=["start_taiko_2"],
            )

#FREE
music.arrange_music(
            part_names=["shime","taiko1","taiko2"], 
            rhythm_material=["taiko_free_shime","taiko_free_1","taiko_free_2"],
            apply_flags=["free"],
            )

# TAIKO MELODY
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
# shime plays with melody
music.arrange_music(
            part_names=["shime"], 
            rhythms=["c4 "*12],
            apply_flags=["taiko_melody_1","taiko_melody_2"]
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

music.exec_method("add_stream_cloud_pitches", skip_flags=["stream_cloud1","stream_cloud2"])

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

# if all else fails, arrange the cloud in the low strings...
music.arrange_music(
    part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",], 
    pitch_material="stream_cloud_mid", 
    respell=["sharps"],
    rhythms=["c8( c8) "*12],
    skip_flags=["free"],
    pitch_range_material="string_ranges_low",
    apply_flags=["cloud_low"]
    )

# if all else fails, arrange the cloud in the low strings...
music.arrange_music(
    part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",], 
    pitch_material="stream_cloud_mid", 
    respell=["sharps"],
    rhythms=["c8( c8) "*12],
    skip_flags=["free"],
    pitch_range_material="string_ranges_mid"
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
        part_names = ["line_1"],
        )


# FINAL BUBBLE STUFF:
iters = (
    0,1,
    2,3,
    4,5,
    6,7,
    8,9,
    10,11,
    12,13,
    14,15,
    16,17,
    18,19,
    20,21,
    22,23,
    24,25,
    26,27,
    28,29,
    30,31,
    32,33,
    34,35,
    36
    )

music.apply_transforms(iters=iters)

bubble = music.make_bubble(iters=iters)

bubble.make_pdf()
