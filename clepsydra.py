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
music.add_pitch_material("ref", ["E5"])
music.add_pitch_material("next_ref", ["F5"])

music.add_pitch_material("ref", ["F5"], apply_flags=["ref_F"])
music.add_pitch_material("next_ref", ["F#5"], apply_flags=["ref_F"])

music.add_pitch_material("ref", ["F#5"], apply_flags=["ref_F#"])
music.add_pitch_material("next_ref", ["G5"], apply_flags=["ref_F#"])

music.add_pitch_material("ref", ["G5"], apply_flags=["ref_G"])
music.add_pitch_material("next_ref", ["G#5"], apply_flags=["ref_G"])

music.add_pitch_material("ref", ["G#5"], apply_flags=["ref_G#"])
music.add_pitch_material("next_ref", ["A5"], apply_flags=["ref_G#"])

music.add_pitch_material("ref", ["A5"], apply_flags=["ref_A"])
music.add_pitch_material("next_ref", ["Bb5"], apply_flags=["ref_A"])

music.add_pitch_material("ref", ["Bb5"], apply_flags=["ref_Bb"])
music.add_pitch_material("next_ref", ["B5"], apply_flags=["ref_Bb"])

music.add_pitch_material("ref", ["B5"], apply_flags=["ref_B"])
music.add_pitch_material("next_ref", ["C5"], apply_flags=["ref_B"])

music.add_pitch_material("ref", ["C5"], apply_flags=["ref_C"])
music.add_pitch_material("next_ref", ["C#5"], apply_flags=["ref_C"])

music.add_pitch_material("ref", ["C#5"], apply_flags=["ref_C#"])
music.add_pitch_material("next_ref", ["D5"], apply_flags=["ref_C#"])

music.add_pitch_material("ref", ["D5"], apply_flags=["ref_D"])
music.add_pitch_material("next_ref", ["Eb5"], apply_flags=["ref_D"])

music.add_pitch_material("ref", ["Eb5"], apply_flags=["ref_Eb"])
music.add_pitch_material("next_ref", ["E5"], apply_flags=["ref_Eb"])

# at the "start_movin" flag, the reference pitch starts incrementing by 1
# ... will need to be added manuallly...
# music.transforms.append(
#     ModTransposePitch(
#         "ref", 
#         value = 1,
#         start_flag = "next_movin",
#         skip_flags=["free"]
#         ))
# music.transforms.append(
#     ModTransposePitch(
#         "next_ref", 
#         value = 1,
#         start_flag = "next_movin",
#         skip_flags=["free"]
#         ))
# music.transforms.append(
#     ModTransposePitch(
#         "ref", 
#         value = 0,
#         apply_flags=["free"]
#         ))
# music.transforms.append(
#     ModTransposePitch(
#         "next_ref", 
#         value = 0,
#         apply_flags=["free"]
#         ))

# always adding the stream pitches....!
music.exec_method("add_stream_pitches")

# ----------------------------------------------------------------------------------------------------------------------------------------
# PUSHING THE JI and REF

music.add_rhythm_material("push",  "c4\\downbow " * 12)
music.add_rhythm_material("push", "c4\\downbow " * 8 + "R1 ", apply_flags=["start_pause"])
music.add_rhythm_material("slide", "c1 c4.( c8 ~ c2) R1", apply_flags=["start_pause"])


# would be better to figure out how to fill the whole thing with straight quarter notes...
music.add_rhythm_material("whole", "c1:32\\pp c1:32 c1:32 ")
music.add_pitch_material("ji_funny",["G#5","A5","A5","A5","A5","A5","A5","A5","G#5","A5","A5","A5",])
music.arrange_music(
        pitch_material=["ji","ji_funny","ji","ji"], 
        rhythm_material = ["push","push","whole","whole"],
        part_names = ["violinI_div1","violinI_div2","violinII_div1","violinII_div2",],
        apply_flags=["start", "start_2", "start_pause"],
        respell=("sharps",)
        )

music.exec_method("change_instrument", part_name="clarinet2", 
            instrument_name="Bass Clarinet in Bb", short_instrument_name="B. cl.", 
            show_instruction=False,
            apply_flags=["start"]
            )
music.exec_method("change_instrument", part_name="clarinet2", 
            instrument_name="Clarinet", short_instrument_name="Cl. 2", 
            show_instruction=False,
            apply_flags=["start_taiko_5"]
            )

# music.arrange_music(
#         pitch_material=["ji", "ji", "slide_ji", "slide_ji"], 
#         rhythm_material = ["push","push","slide","slide"],
#         part_names = ["violinI_div1","violinI_div2","violinII_div1","violinII_div2",],
#         apply_flags=["winds_down"],
#         respell=("sharps",)
#         )

# music.arrange_music(
#         part_names=["violinII_div1","violinII_div2",],
#         pitches=[["E5","B4"]], 
#         rhythm_material=["dotted"],
#         apply_flags=["winds_down"],
#         )

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
    indices=[[1]], notes_only=[False], apply_flags=["start_taiko",])
music.attach_markup(part_names=trem_parts, markup_texts=[["sim"]], 
    indices=[[1]], notes_only=[False], apply_flags=["start_taiko_2","start_taiko_3","start_taiko_4"])


# --------------------------------------------------------------------------------------------
# taiko parts
# INTRO
music.arrange_music(
            part_names=["shime","taiko1","taiko2"], 
            rhythm_material=["rest","taiko_free_intro_1_a","taiko_free_intro_1_b"],
            apply_flags=["start_taiko"],
            )
music.arrange_music(
            part_names=["shime","taiko1","taiko2"], 
            rhythm_material=["taiko_free_intro_shime","taiko_free_intro_2_a","taiko_free_intro_2_b"],
            apply_flags=["start_taiko_2","start_taiko_3","start_taiko_4"],
            )
music.arrange_music(
            part_names=["shime","taiko1","taiko2"], 
            rhythms=["c8-> c8-> c-> c-> r2\\fermata"],
            apply_flags=["start_taiko_5"],
           )
music.arrange_music(part_names=["flute1","flute2"],
            rhythms = [get_music_container(["s16", box_music(
                "s8 r8 b1 b8->-. b8->-. r4\\fermata s8", continue_lengths=[(1,1)]*4
                ) ,"s16"])],
            apply_flags=["start_taiko_1","start_taiko_2","start_taiko_3","start_taiko_4"]
            ) 
music.arrange_music(part_names=["clarinet1","clarinet2"],
            rhythms = [get_music_container(["s16", box_music(
                "s8 r8 b1 b8->-. b8->-. r4\\fermata s8", continue_lengths=[(1,1)]*4
                ) ,"s16"])],
            apply_flags=["start_taiko_3","start_taiko_4"]
            ) 
music.arrange_music(part_names=["oboe1", "oboe2","oboe3"],
            rhythms = [get_music_container(["s16", box_music(
                "s8 r8 b1 b8->-. b8->-. r4\\fermata s8", continue_lengths=[(1,1)]*4
                ) ,"s16"])],
            apply_flags=["start_taiko_3","start_taiko_4"]
            ) 
music.arrange_music(part_names=["bassoon1","bassoon2",],
            rhythms = [get_music_container(["s16", box_music(
                "s8 r8 b1 b8->-. b8->-. r4\\fermata s8", continue_lengths=[(1,1)]*4
                ) ,"s16"])],
            apply_flags=["start_taiko_4"]
            ) 
music.arrange_music(part_names=["horn1","trombone1"], 
    rhythms=[   "s1 r1\\fermata  s1  a1\\fermata s1 s1 ", 
                "s1 s2 r1 \\fermata s2  s1 a,1 \\fermata ^\"after horn 1\" s1 ",],
    apply_flags=["start_taiko_4"])




music.arrange_music(part_names=clep.parts, pitch_material=["ji"], 
    pitch_range_material="all_ranges_mid",
    part_material="pitched",
    rhythms=["r4 c8-.-> c->-. r2\\fermata"],
    apply_flags=["start_taiko_5"]
    )



#FREE
music.arrange_music(
            part_names=["shime","taiko1","taiko2"], 
            rhythm_material=["taiko_free_shime","taiko_free_1","taiko_free_2"],
            apply_flags=["free"],
            )

# taiko do dons
music.arrange_music(part_names=["shime", "taiko1", "taiko2"],
    rhythms=["c4 "* 12, "c8_do-> d8_don-> r4 r2 R1 R1", "c8_do-> d8_don-> r4 r2 R1 R1"],
    apply_flags=["D"]
    )

# TAIKO MELODY

music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_melody_1","taiko_ji"],
            apply_flags=["taiko_melody_1"]
            )
music.arrange_music(
            part_names=["taiko1","taiko2"], 
            rhythm_material=["taiko_melody_2","taiko_ji"],
            apply_flags=["taiko_melody_2"]
            )
# shime plays with melody
music.arrange_music(
            part_names=["shime"], 
            rhythms=["c8[ c]"*12],
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

# OTHER PERC:
music.arrange_music(
            part_names=["crotales"], 
            rhythms=["a'4 " +"a'4 "*11],
            apply_flags=["taiko_melody_1"],
            )
music.arrange_music(
            part_names=["crotales"], 
            rhythms=["R1 R1 r2 a''2\\mf ^\"bowed\""],
            apply_flags=["E2"],
            )
music.arrange_music(
            part_names=["crotales"], 
            rhythms=["a'4 " +"a'4 "*9 + "r2 "],
            apply_flags=["E4"],
            )
music.arrange_music(part_names=["perc1"],
    apply_flags=["E2"],
    rhythms=["R1 R1 r2 c2:32\\mp "],
    )
music.arrange_music(part_names=["perc2"],
    apply_flags=["E2"],
    rhythms=["r4^\"wood block\" c4:32\\pp ~ c4.:32 c8\\p | c4 r4 r2 R1 "],
    )


# --------------------------------------------------------------------------------------------
# MELODY 1 HELP
music.arrange_music(part_names=["trombone1","trombone2"], rhythm_material=["melody_1_help_a"], 
        pitch_material=["ji"], transpose=[-24], apply_flags=["taiko_melody_1"] )

music.arrange_music(part_names=["flute1","flute2"],
    apply_flags=["E2","E4"],
    pitch_material=["ref","ji"],
    pitch_range=[get_pitch_range("E5","E6")],
    rhythms=["r4 c4:32\\mp ^\"Flz.\" ~ c2:32 | R1 R1 "])


# --------------------------------------------------------------------------------------------
# CLOUD  (harmonic sequence)

high_winds=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2"]
winds_up_pitches=WaterCloudWindsUp(name="clep-cloud-winds-up").cloud_pitches()
music.arrange_music(
            part_names=high_winds,
            pitches=winds_up_pitches,
            rhythm_material=["8ths_tied_cresc"],
            apply_flags=["winds_up"],
            respell=[None,"flats",None,None,None,"sharps",None]
            )
music.arrange_music(part_names=["viola_div1","viola_div2"],pitches=[winds_up_pitches[5]],
    rhythm_material=["8ths_tied_cresc"],
    apply_flags=["next_movin"],
    respell=["flats"],
    transpose=[-11]
    )


winds_down_pitches=WaterCloudWindsDown(name="clep-cloud-winds-down", start_pitch="F#5").cloud_pitches()
music.arrange_music(
            part_names=high_winds,
            pitches=winds_down_pitches,
            rhythms=["R1 R1 c1\\pp "],
            transpose=[-12],
            apply_flags=["next_movin"]
            )
music.arrange_music(
            part_names=high_winds,
            pitches=winds_down_pitches,
            rhythm_material=["8ths_slured_mf"],
            apply_flags=["winds_down"],
            respell=["sharps","flats","sharps","sharps",None,None,"sharps"]
            )

music.arrange_music(part_names=["viola_div1","viola_div2"],pitches=[winds_down_pitches[5]],
    rhythm_material=["8ths_tied_cresc"],
    apply_flags=["stream_hint1"],
    respell=["sharps"],
    transpose=[-11]
    )



music.arrange_music(
    part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",],
    rhythms=["c4( c) "*6],
    pitches=winds_up_pitches,
    pitch_columns=[[0,2,4,6,8,10,12,14,16,18,20,22]],
    transpose=[1],
    apply_flags=["next_movin"],
    respell=["sharps","sharps","flats","flats"]
    )
music.arrange_music(
    part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",],
    rhythms=["c4( c) "*6],
    pitches=winds_down_pitches,
    pitch_range=[get_pitch_range("G3", "E5")],
    pitch_columns=[[0,2,4,6,8,10,12,14,16,18,20,22]],
    transpose=[-11],
    respell=[None,"sharps",None,"sharps"],
    apply_flags=["stream_hint1"]
    )

music.arrange_music(part_names=["crotales"],
    pitch_material=["ref"],
    transpose=[-12],
    rhythms=["c4\\mf r4 r2 R1 R1"],
    apply_flags=["next_movin","stream_hint1"])

music.arrange_music(part_names=["perc2"],
    rhythms=["c1:32\\pp ~ c1:32\\< ~ c1:32\\mp \\!"],
    apply_flags=["winds_up","winds_down"])


music.attach_dynamics(part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",],
    dynamics=[["p"]], apply_flags=["next_movin","stream_hint1"])
# music.attach_dynamics(part_names=["viola_div1","viola_div2"],
#     dynamics=[["pp"]], apply_flags=["next_movin","stream_hint1"])

music.attach_markup(part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",
    "viola_div1","viola_div2"], apply_flags=["next_movin","stream_hint1"],
    markup_texts=[["sul pont."]])

music.arrange_music(
            part_names=["bassoon1","bassoon2"],
            pitch_material=["ji", ["ref", "next_ref"]],
            rhythms=["c1\\p\\< ~ c1 ~ c1\\mf", "c1(\\p\\< ~ c1 c1)\\mf"],
            apply_flags=["winds_up","winds_down"],
            apply_before_flags=["melody_start_1"],
            transpose=[-24]
            )

music.arrange_music(
            part_names=["bassoon1","bassoon2"],
            pitch_material=["ji"],
            rhythms=["R1 r2 r4 c4->\\mf \\> ~ |  c1\\p \\! "],
            apply_flags=["E1","E3"],
            transpose=[-12]
            )

music.arrange_music(part_names=["tuba"],
    apply_flags=["E1"],
    pitches=[["B2","E3","E3","A3","D4"]],
    rhythms=["r2 r4 r8 c8\\mf ~ | c8 c8-. c4-- c4-- c4 ~ | c2\> r2\! "]
    )


music.arrange_music(
    part_names=["bass_div1","bass_div2"],
    apply_flags=["E1","E3"],
    rhythms=["a,2\\p\\< ~ a,4. a,8->\\f  ~ a,1    a,1\\p "],
    )
music.arrange_music(
    part_names=["bass_div1","bass_div2"],
    apply_flags=["E2","E4"],
    part_material=[["ji","ref","ref","ref","ref"]],
    pitch_range=[get_pitch_range("E1","E2")],
    rhythms=["c4 c4 ~ c2 ~ c1 c1\\f"],
    )
music.arrange_music(
    apply_flags=["E2"],
    part_names=["oboe1","oboe2","oboe3","bassoon1","bassoon2"],
    rhythms=["R1 r4 r8[ c8]-.->\\mf r8[ c8]-.-> r4 R1"],
    pitches=[["C5"],["C5"],["A4"],["C4"],["A4"]]
    )
music.arrange_music(
    apply_flags=["E4"],
    part_names=["oboe1","oboe2","oboe3","bassoon1","bassoon2"],
    rhythms=["R1 r4 r8[ c8]-.->\\mf r8[ c8]-.-> r4 R1"],
    pitches=[["D5"],["D5"],["A4"],["D4"],["A4"]]
    )


music.exec_method("add_stream_cloud_pitches", skip_flags=["stream_cloud1","stream_cloud2"])

# a string cloud that kind of follows the melody
music.exec_method("add_stream_cloud_pitches", pitch_times=(8,8,8), apply_flags=["stream_cloud1"])
music.exec_method("add_stream_cloud_pitches",  pitch_times=(8,8,8), stream_cloud_type=StreamCloud2, apply_flags=["stream_cloud2"])
music.exec_method("add_stream_cloud_pitches", pitch_name="stream_cloud_single", pitch_times=(1,1,1), apply_flags=["stream_cloud1"])
music.exec_method("add_stream_cloud_pitches",  pitch_name="stream_cloud_single", pitch_times=(1,1,1), stream_cloud_type=StreamCloud2, apply_flags=["stream_cloud2"])

t_cloud = WaterCloudBase(autorandom=False, start_pitch=0)
music.arrange_music(part_names=["tuba"],
    apply_flags=["E2"],
    pitches=[t_cloud.pitches[0]],
    rhythms=["R1 " + "c8-- "*12 + " r2 "],
    pitch_offset=[8],
    transpose=[-12],
    respell=["flats"]
    )

music.arrange_music(part_material="strings", pitch_range_material="string_ranges_mid",
    pitch_material="stream_cloud_mid",
    apply_flags=["E2","E4"],
    rhythms=["c8( c) r4 r2 | R1 | R1 "]
    )

music.arrange_music(
            part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2"],
            apply_flags=["stream_cloud_strings_staccato"],
            rhythms=["c8-. "*24],
            pitch_material= "stream_cloud_mid",
            transpose=[-12],
            )
music.attach_markup(part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",
    "cello_div1","cello_div2"], apply_flags=["D1",], markup_texts=[["normal"]])



music.arrange_music(
            part_names=["viola_div2","viola_div1","cello_div1","cello_div2"],
            apply_flags=["stream_low_strings"],
            rhythms=["c8-. "*24],
            pitch_material= "stream_cloud_low",
            transpose=[0,12,0,0,0]
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
            respell=["flats"],
            transpose=[2],
            rhythms=[["c8(\\mp\\< c c) c(  c) c(\\mf c c) " + "c---. "*8 + "c( c c) c(  c) c( c) c-- "]],
            apply_flags=["full_stream_2"]
            )
music.attach_markup(part_names=string_parts[:-2],
    apply_flags=["E2","E4"],
    markup_texts=[["sul pont.","normal","sul pont."]], indices=[[0,8,16]])



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

music.arrange_music(apply_flags="E1", part_names=["trumpet1","trumpet2","horn1","horn2","horn3","horn4"],
    rhythms=["c2\\p\\< ~ c4. c8->-.\\mf \\! r8 c4.\\p \\< c4 c8-.->\\mf \\! r8 R1"],
    pitches=[["B4"],["A4"],["B3"],["A3"],])
music.arrange_music(apply_flags="E3", part_names=["trumpet1","trumpet2","horn1","horn2","horn3","horn4"],
    rhythms=["c2\\p\\< ~ c4. c8->-.\\mf \\! r8 c4.\\p \\< c4 c8-.->\\mf \\! r8 R1"],
    pitches=[["C#5"],["A4"],["C#4"],["A3"]])

music.arrange_music(part_names=["timpani"], 
    apply_flags=["E1","E3"],
    rhythms=["r2 r4 r8 a,8\\mf | r2 r8 a,8 a,4:32 | R1^\"dampen\""]
    )
music.arrange_music(part_names=["timpani"], 
    apply_flags=["E2","E4"],
    rhythms=["R1 | gs,4 r4 r2 | r4 r8 gs,8-> r4 "]
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
            apply_flags=["next_movin"],
            stream_type=StreamHint1,
            transpose=[-12]
            )
music.attach_markup(part_names=["trumpet1"], apply_flags=["next_movin"],
    markup_texts=[["straight mute", "mute out"]], indices=[[1,8]], notes_only=[False])

music.exec_method("arrange_stream",
            part_name="trumpet2",
            apply_flags=["stream_hint1"],
            stream_type=StreamHint2,
            )

music.exec_method("arrange_stream",
            part_name="cello_div1",
            apply_flags=["stream_hint2"],
            stream_type=StreamHint2,
            transpose=[-36],
            respell=["sharps"],
            )
music.exec_method("arrange_stream",
            part_name="cello_div2",
            apply_flags=["stream_hint3"],
            stream_type=StreamHint1,
            transpose=[-36],
            respell=["sharps"],
            )
music.attach_markup(part_names=["viola_div1", "viola_div2"], apply_flags=["D3",], markup_texts=[["normal"]])

music.attach_dynamics(part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",
    ], apply_flags=["D1",], dynamics=[["mf"]])
music.attach_dynamics(part_names=["cello_div1","cello_div2","viola_div1","viola_div2"
    ], apply_flags=["D3",], dynamics=[["mf"]])

music.attach_dynamics(part_names=["cello_div1","cello_div2"], apply_flags=["stream_hint2"],
    dynamics=[["mp"]], respell=["sharps"])


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
            part_name="flute1",
            apply_flags=["full_stream_2"],
            respell=["sharps"],
            stream_type=StreamHint2,
            transpose=[12]
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
    skip_flags=["free", "free2", "free3"],
    pitch_range_material="string_ranges_low",
    apply_flags=["cloud_low"]
    )

# if all else fails, arrange the cloud in the low strings...
# music.arrange_music(
#     part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2",], 
#     pitch_material="stream_cloud_mid", 
#     respell=["sharps"],
#     rhythms=["c8( c8) "*12],
#     skip_flags=["free", "free2", "free3", "start_taiko_5"],
#     pitch_range_material="string_ranges_mid", 
#     )

# finally, rests
music.arrange_music(
    part_names=clep.parts, 
    rhythm_material=["rest"],
    )

# ---------------------------------------------------------------------------------------------


clep.make_ly_includes(ly_folder="clepsydra", sections=["A", "B", "C", "D", "E", ])
# clep.make_ly_includes(ly_folder="clepsydra", sections=["D"])

# --- CLEPSYDRA SECTION A ----------------------------------------------
# kwargs = {"section_name": "_A", "iters":(0,1,2,3),
#     "ly_prepends":["\\time 4/4", "\\numericTimeSignature", "\\context Staff {#(set-accidental-style 'modern)}"],
#     "ly_appends": [], }
# --- CLEPSYDRA SECTION B ----------------------------------------------
# kwargs = {"section_name": "_B", "iters":(4,5,6,7,8),
#     "ly_prepends":[],
#     "ly_appends": [], }
# --- CLEPSYDRA SECTION C ----------------------------------------------
# kwargs = {"section_name": "_C", "iters":(9,10,11,12),
#     "ly_prepends":[],
#     "ly_appends": [], }
# --- CLEPSYDRA SECTION D ----------------------------------------------
# kwargs = {"section_name": "_D", "iters":(13,14,15,16),
#     "ly_prepends":[],
#     "ly_appends": [], }
# --- CLEPSYDRA SECTION E ----------------------------------------------
# kwargs = {"section_name": "E", "iters":(17,18,19,20),
#     "ly_prepends":[],
#     "ly_appends": [], }
# --- CLEPSYDRA SECTION F ----------------------------------------------
kwargs = {"section_name": "F", "iters":(21,22,23,24),
    "ly_prepends":[],
    "ly_appends": [], }


music.make_ly_music(ly_folder="clepsydra", **kwargs), 

# # clepsydra_music.show_pdf(**kwargs)
# music.make_ly_music(ly_folder="clepsydra", **kwargs), 



# music.arrange_music(
#         pitch_material=["ref"], 
#         rhythm_material=[["measure_note"]*3],
#         part_names = ["line_1"],
#         pitch_range_material="string_ranges_mid"
#         )

# FINAL BUBBLE STUFF:
iters = (
    # 0,1, #A
    # 2,3,
    # 4,5, #B
    # 6,7,
    # 8,9, #C
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

