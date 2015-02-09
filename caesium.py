from abjad import *
import settings

from tokei import TokeiBubble
from caes_m import *
from caes_c import *

from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *
from calliope.tools import get_pitch_range

string_parts= ["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2","cello_div1","cello_div2","bass_div1","bass_div2"]
wind_parts=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2","bassoon1","bassoon2"]
# putting instruments high to low (trumpets first) for ease of arranging
brass_parts=["trumpet1","trumpet2","horn1","horn3","horn2","horn4","trombone1","trombone2","tuba"]

caes = CaesiumMaterial()
caes_odd = CaesiumMaterialOdd()

brass_ranges_wide = [
    get_pitch_range("B4","C6"), #trumpet 1
    get_pitch_range("A4","A5"), #trumpet 2
    get_pitch_range("F4","F5"), #horn 1
    get_pitch_range("F4","F5"), #horn 3
    get_pitch_range("G2","A3"), #horn 2
    get_pitch_range("E2","E3"), #horn 4
    get_pitch_range("E2","E3"), #trombone 1
    get_pitch_range("E2","E3"), #trombone 2
    get_pitch_range("D1","E2"), #tuba
    ]
brass_ranges_mid = [
    get_pitch_range("F4","G5"), #trumpet 1
    get_pitch_range("D4","E5"), #trumpet 2
    get_pitch_range("A3","B4"), #horn 1
    get_pitch_range("G3","A4"), #horn 3
    get_pitch_range("F3","G4"), #horn 2
    get_pitch_range("E3","F4"), #horn 4
    get_pitch_range("A2","B3"), #trombone 1
    get_pitch_range("G2","A3"), #trombone 2
    get_pitch_range("C2","E3"), #tuba
    ]
wind_ranges_mid = [
    get_pitch_range("E5","F6"), #piccolo (flute 1)
    get_pitch_range("E5","F6"), #flute (2)
    get_pitch_range("G4","A5"), #oboe 1
    get_pitch_range("F4","G5"), #oboe 2
    get_pitch_range("E4","F5"), #oboe 3
    get_pitch_range("A4","B5"), #clarinet 1
    get_pitch_range("C3","D4"), #clarinet 2 (switch to bass?)  ... assume no
    get_pitch_range("D3","E4"), #bassoon 1
    get_pitch_range("G2","A3"), #bassoon 2
]
wind_ranges_hi = [
    get_pitch_range("B5","Bb6"), #piccolo (flute 1)
    get_pitch_range("B5","Bb6"), #flute (2)
    get_pitch_range("G5","F#6"), #oboe 1
    get_pitch_range("G5","F#6"), #oboe 2
    get_pitch_range("G5","F#6"), #oboe 3
    get_pitch_range("G5","F#6"), #clarinet 1
    get_pitch_range("G5","F#6"), #clarinet 2 (switch to bass?)  ... assume no
    get_pitch_range("B3","Bb4"), #bassoon 1
    get_pitch_range("B3","Bb4"), #bassoon 2
]
string_ranges_mid = [
    get_pitch_range("D4","G5"), #violin I div 1
    get_pitch_range("C4","F5"), #violin I div 2
    get_pitch_range("D4","G5"), #violin II div 1
    get_pitch_range("C4","F5"), #violin II div 2
    get_pitch_range("G3","C5"), #viola div 1
    get_pitch_range("F3","B4"), #viola div 2
    get_pitch_range("G2","C4"), #cello div 1
    get_pitch_range("F2","B3"), #cello div 2
    get_pitch_range("A2","B3"), #bass div 1
    get_pitch_range("G2","A3"), #bass div 2
]
string_ranges_low = [
    get_pitch_range("G3","G4"), #violin I div 1
    get_pitch_range("G3","G4"), #violin I div 2
    get_pitch_range("G3","G4"), #violin II div 1
    get_pitch_range("G3","G4"), #violin II div 2
    get_pitch_range("C3","C4"), #viola div 1
    get_pitch_range("C3","C4"), #viola div 2
    get_pitch_range("C2","C3"), #cello div 1
    get_pitch_range("C2","C3"), #cello div 2
    get_pitch_range("E1","E2"), #bass div 1
    get_pitch_range("E1","E2"), #bass div 2
]
swell_ranges = wind_ranges_mid + brass_ranges_mid + string_ranges_mid
ka_ranges = wind_ranges_hi + string_ranges_low

# brass_ranges_high = [
#     get_pitch_range(("C5","C6")), #trumpet 1
#     get_pitch_range(("C5","C6")), #trumpet 2
#     get_pitch_range(("F4","F5")), #horn 1
#     get_pitch_range(("F4","F5")), #horn 2
#     get_pitch_range(("F4","F5")), #horn 3
#     get_pitch_range(("F4","F5")), #horn 4

#     ]
# brass_ranges_mid = [
#     ]
# brass_ranges_low = [
#     ]

music = get_cycle_music()
# ---------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------
# EXEC FORCE FUNCTIONS
music.exec_method("force_brass_4_melody", cloud_name="caes-cloud-highbrass-4-melody", apply_flags=["brass_melody"])

music.exec_method("force_brass_4_melody", cloud_name="caes-cloud-brass-4-melody-widen", apply_flags=["brass_melody_widen"])

music.exec_method("force_strings_melody", apply_flags=["string_melody_cloud"])
music.exec_method("force_strings_melody", cloud_name="caes-cloud-strings-melody-up", apply_flags=["string_melody_cloud_up"])

music.exec_method("force_winds_up4_down", cloud_name="caes-cloud-winds-up4-down", apply_flags=["winds_up4_cloud_down"])


# ---------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------
# TAIKO PARTS

# steady ji for first several cycles
music.arrange_music(rhythm_material=["taiko_ji"], part_names=["taiko1","taiko2","odaiko", "shime"], stop_flag="melody")

music.arrange_music(rhythm_material=["melody"], part_names=["taiko1","taiko2","odaiko"], apply_flags=["melody"])

music.arrange_music(rhythm_material=["melody_hits"], part_names=["taiko1","taiko2"], apply_flags=["melody_hits"])
music.arrange_music(rhythm_material=["melody"], part_names=["odaiko"], apply_flags=["melody_hits"])

music.arrange_music(rhythm_material=["taiko_2"], part_names=["taiko1","taiko2"], apply_flags=["taiko_2"])
music.arrange_music(rhythm_material=["taiko_3"], part_names=["taiko1","taiko2"], apply_flags=["taiko_3"])

music.arrange_music(rhythm_material=["melody","taiko_2"], part_names=["taiko1","taiko2"], apply_flags=["melody_split_2"])
music.arrange_music(rhythm_material=["melody","taiko_3"], part_names=["taiko1","taiko2"], apply_flags=["melody_split_3"])

# RELATED PERCUSSION
music.arrange_music(rhythm_material=["rolls"], part_names=["perc1","shime"], apply_flags=["rolls"])

music.arrange_music(rhythm_material=["smack_perc"], pitches=[[["A2","Bb2"]]], part_names=["timpani"], stop_flag="pre_melody")
music.arrange_music(rhythm_material=["tsu_don"], pitches=[["A2","Bb2"]], part_names=["timpani"], apply_flags=["pre_melody"])

music.attach_dynamics(part_names=["taiko1","taiko2","odaiko","timpani"], dynamics=[["ff"]], apply_flags=["start"])
music.attach_articulations(part_names=["timpani"], articulations=[[">"]], stop_flag="melody")

# -----------------------------------------------
# as things heat up, gane starts steady strike
#??? use this....
#music.arrange_music("taiko_ji", part_names=["gane"], start_flag="gane")



# --------------------------------------------------------------------------------------
# JI HITS:
# maybe change the material as this goes by?
music.copy_material("rhythm","hits_2_3","hits")
music.arrange_music(part_names=brass_parts, apply_flags=["brass_hits"], 
    rhythm_material=["hits"], pitch_material="ji_stack", 
        pitch_range=brass_ranges_wide)
music.attach_dynamics(part_names=brass_parts, dynamics=[["ff"]], apply_flags=["hits"])

# --------------------------------------------------------------------------------------
# LOW HITS:

music.arrange_music(part_names=["tuba","trombone1", "trombone2","timpani"], apply_flags=["melody"], 
    rhythm_material=["smack","smack","smack","smack_perc"], pitch_material="low_stack")

# --------------------------------------------------------------------------------------
# CLEARER "MELODIES"


music.arrange_music(part_names=["trumpet2","trumpet1","horn3","horn1","horn2","horn4"], 
    apply_flags=["brass_melody"], 
    rhythm_material=["melody_push"], 
    pitch_material="brass_lines",
    respell_material="brass_lines_respell"
    )

music.arrange_music(part_names=brass_parts[:-1], 
    apply_flags=["brass_melody_widen"], 
    rhythm_material=["melody_push"], 
    pitch_material="brass_lines",
    respell_material="brass_lines_respell"
    )

# --------------------------------------------------------------------------------------
# PADDING:
music.arrange_music(part_names=["cello_div2","cello_div1","viola_div2","viola_div1"], 
    apply_flags=["midlow_strings_pad"], 
    rhythms=["c4. ~ c4. ~ c4 ~ c4  \\bar\";\"   c4. ~ c4 ~ c4  \\bar\";\"    c4 ~ c4 ~ c4. "], 
    pitch_material="ji_stack",
    transpose=[-24,-24,-24,-12],
    pitch_offset=[2]
    #respell_material,
    )


# --------------------------------------------------------------------------------------
# STRING NASTIES AND CLOUD:

music.arrange_music(part_names=string_parts, apply_flags=["string_nasty_3"], 
    rhythm_material=["string_nasty_3"], pitches=[["x"]])

music.arrange_music(part_names=string_parts, apply_flags=["string_nasty_2"], 
    rhythm_material=["string_nasty_2"], pitches=[["x"]])

music.exec_method("transpose_pitch_material", material="strings_cloud", transpose=4, 
    apply_flags=["strings_cloud_trans4"])
music.arrange_music(part_names=string_parts[:-2], 
    apply_flags=["string_melody_cloud","string_melody_cloud_up"], 
    rhythm_material=["staccato"], 
    pitch_material="strings_cloud",
    respell_material="strings_cloud_respell"
    )


#  WTF what's with this rhythm?????
# music.arrange_music(part_names=["oboe1","oboe2","flute2","oboe3","flute1"],
#         apply_flags=["string_melody_cloud","string_melody_cloud_up"], 
#         rhythms=["r2 r4 c4-.  c-. r4 r2 R1"],
#         pitch_material="accents",
#         respell=["sharps"],
#         pitch_offset=[6],
#         )

music.arrange_music(part_names=wind_parts, 
    apply_flags=["winds_up4_cloud_down"], 
    rhythms=["c8[( c c c]) "*6], 
    pitch_material="winds_cloud",
    respell_material="winds_cloud_respell"
    )


# --------------------------------------------------------------------------------------
# SWELLS:

music.arrange_music(part_names=["horn1","horn2"], apply_before_flags=["melody"], 
    rhythm_material=["swell"], pitch_material="swell_melody")

music.arrange_music(part_names=wind_parts+brass_parts+string_parts, apply_before_flags=["ma"], 
    pitch_range=swell_ranges, rhythm_material=["swell"], pitch_material="swell_ma")

music.arrange_music(part_names=["perc1"], apply_before_flags=["ma"], rhythm_material=["swell_cymb"])

# --------------------------------------------------------------------------------------
# KAs (if nothing else)
music.arrange_music(part_names=wind_parts,
    rhythms=["c8-.[ r8 r8] "*8],
    pitches=[["A5"]],
    pitch_range=wind_ranges_hi,
    apply_flags=["taiko_3", "melody_split_3"]
    )
music.arrange_music(part_names=string_parts,
    rhythms=["c8[^pizz r8 r8] " + "c8[ r8 r8] "*7],
    pitches=[["A5"]],
    pitch_range=string_ranges_low,
    apply_flags=["taiko_3", "melody_split_3"]
    )

# --------------------------------------------------------------------------------------
# RESTS:
# TO DO... should be easy enough to apply rests to EVERYTHING that hasn't already been arranged...

music.arrange_music(rhythm_material=["rest"], 
    part_names = caes.parts,
    # part_names=wind_parts + string_parts + ["perc1","perc2"],
    skip_flags=["ma"])
# music.arrange_music(rhythm_material=["rest"], part_names=["perc1"], skip_flags=["pre_melody"])

music.arrange_music(rhythm_material=["rest"], part_names=brass_parts, stop_flag="hits")
music.arrange_music(rhythm_material=["rest"], part_names=["trumpet1","trumpet2","horn3","horn4","trombone1","trombone2","tuba"], apply_flags=["pre_melody"])



# --------------------------------------------------------------------------------------
# MA arranging...

# skip all transformations already created
for t in music.transforms:
    t.skip_flags.append("ma")

# add the default ma transform
music.exec_method("arrange_ma", apply_flags=["ma"])
# self.arrange_music(part_names=basic_parts, rhythms=["s4. r4\\fermata s4. "])
# music.arrange_music(part_names=wind_parts, apply_flags=["ma"], rhythms=["r4 r4 r4 r4 "])

# Add any more ma-specific transormations here...


# --------------------------------------------------------------------------------------


make_iters=(
    0,1,2,
    3,4,
    5,6,
    # 7,8,
    # 9,10,
    # 11,12,
    # 13,14,
    # 15,16,
    # 17,18,
    # 18,20,
    # 21,22,
    # 23,24,
    # 25,26,
    # 27,28,
    # 29,30,
    # 31,32,
    # 33,34,
    # 35,36,
    # 37,38,
    # 39,40,
    # 41,42,
    # 43,44,
    # 45,46,
    # 47,48,49
    )

music.apply_transforms(iters=make_iters)
bubble = music.make_bubble(iters=make_iters)
# bubble.make_pdf()

bubble.make_parts(part_names=["flute1","clarinet1","horn1"], work_name="caesium")

