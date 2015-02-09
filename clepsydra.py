from abjad import *
import settings

from clep_m import *
from clep_c import *

from calliope.cycles.transform import *

clep = ClepsydraMaterial()

SAVE_CLOUDS = True

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
        apply_flags=["free"]
        ))
music.transforms.append(
    ModTransposePitch(
        "next_ref", 
        value = 0,
        apply_flags=["free"]
        ))

# always adding the stream pitches....!
music.exec_method("add_stream_pitches")

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
#slowing at the end:
music.arrange_music(
            part_names=["taiko1","taiko2","shime"], 
            rhythms=["r8_tsu c8_da\\mp c8_da c8_da c8_da c8_dan->^\"repeat 4x\" ^\"slowing down\" ",
                "r8_tsu c8_da\\mp c8_da c8_da c8_da c8_dan->^\"repeat 4x\" ^\"slowing down\" ",
                "r2 r8      c1:32 ^\"repeat 4x\" ^\"slowing down\" "
            ],
            apply_flags=["slowing"]
            )




# --------------------------------------------------------------------------------------------
# MELODY HELP
music.arrange_music(part_names=["trombone1"], rhythm_material=["melody_1_help_a"], 
        pitch_material=["ji"], transpose=[-24], apply_flags=["taiko_melody_1"] )

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
            apply_before_flags=["melody_start_1"],
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
# the real cloud in the strings
music.exec_method("arrange_cloud",
            part_names=string_parts[:-2],
            cloud_type=WaterCloudStringsMelody,
            cloud_name="clep-cloud-strings-melody-1-B",
            respell=["sharps"],
            transpose=[-2],
            rhythms=[["c8(\\mp\\< c c) c(  c) c(\\mf c c) " + "c---. "*8 + "c( c c) c(  c) c( c) c-- "]],
            apply_flags=["full_stream_2"]
            )


# could arrange the cloud in winds in some melody spots
# TO DO... 
music.exec_method("arrange_cloud", cloud_ref_name = "winds-cloud",
    part_names=["flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2"], 
    respell=["sharps"],
    rhythm_material=["melody_1_help_stac"],
    pitch_range=clep.material["wind_ranges_mid"][1:7],
    apply_flags=["taiko_melody_1"],
    pitch_columns=[[0,1,2,3,4,5,6,7,    1,2,3,4,5,6,7,   0,1,2,3,4,5,6,7]],
    save=SAVE_CLOUDS
    )

# the final cloud....
# if all else fails, arrange the cloud in the low strings...
music.arrange_music(
    part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2"], 
    pitch_material="stream_cloud_mid", 
    respell=["sharps"],
            rhythms=[
            get_music_container(["s8", 
                box_music("s8 c1:32\\fermata\\ppp r4 s8",
                    continue_lengths=[(1,1)]*6)
                ])],
    skip_flags=["free"],
    pitch_range_material="string_ranges_mid",
    apply_flags=["slowing"]
    )
music.attach_markup(part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2"], 
    indeces=[[1]],
    notes_only=[False],
    markup_texts=[["repeat randomly until start of next movement"]],
    apply_flags=["slowing"]
    )



# ---------------------------------------------------------------------------------------------
# THE STREAM (MAIN MELODY)
music.exec_method("arrange_stream",
            part_name="trumpet1",
            apply_after_flags=["start_movin"],
            stream_type=StreamHint1,
            transpose=[-12]
            )
music.attach_markup(part_names=["trumpet1"], apply_after_flags=["start_movin"],
    markup_texts=[["straight mute", "mute out"]], indices=[[1,8]], notes_only=[False])

music.exec_method("arrange_stream",
            part_name="trumpet2",
            apply_flags=["stream_hint1"],
            stream_type=StreamHint2,
            )
music.attach_markup(part_names=["trumpet2"], apply_flags=["stream_hint1"],
    markup_texts=[["straight mute", "mute out"]], indices=[[0,9]], notes_only=[False])
music.attach_dynamics(part_names=["trumpet2"], apply_flags=["stream_hint1"],
    dynamics=[["mp"]])

music.exec_method("arrange_stream",
            part_name="flute1",
            apply_flags=["full_stream_1"],
            respell=["sharps"]
            )
music.exec_method("arrange_stream",
            part_name="trombone1",
            apply_flags=["trom_stream"],
            respell=["flats"],
            pitch_range=[get_pitch_range("C3","F4")]
            )


# ---------------------------------------------------------------------------------------------
# ENDING....


music.arrange_music(part_names=["clarinet2"], 
            pitch_range=[get_pitch_range("A3","C5")],
            pitch_material=["stream"],
            rhythms=[
            get_music_container(["s8", 
                box_music("s8 \\times 4/5 { c4(\\p c1) } c2\\fermata c16( c4 c2.) ",
                    continue_lengths=[(1,1)]*5)
                ])],
            respell=["sharps"],
            apply_flags=["slowing"]
            )
music.attach_markup(part_names=["clarinet2"], markup_texts=[["repeat slowing down"]], apply_flags=["slowing"])



# ---------------------------------------------------------------------------------------------



# could arrange the cloud in low strings
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



music.arrange_music(
        pitch_material=["ref"], 
        rhythm_material=[["measure_note"]*3],
        part_names = ["line_1"],
        pitch_range_material="string_ranges_mid"
        )


# FINAL BUBBLE STUFF:
iters = (
    # 0,1, #A
    # 2,3,
    4,5, #B
    6,7,
    8,9, #C
    # 10,11,
    # 12,13, # D: fist melody
    # 14,15,
    # 16,17, # E: first free
    # 18,19,
    # 20,21, #F: 2nd melody
    # 22,23,
    # 24,25, #G
    # 26,27,
    # 28,29, #H  3rd melody
    # 30,
    # 31,
    # 32, #I
    # 33, 
    # 34,35,
    # 36
    )

music.apply_transforms(iters=iters)

bubble = music.make_bubble(iters=iters)

bubble.make_pdf()
