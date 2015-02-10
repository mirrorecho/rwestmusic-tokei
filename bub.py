from clep_m import *
from clepsydra import *

clep.make_ly_includes(ly_folder="clepsydra", sections=["A","B"])

# --- CLEPSYDRA SECTION A ----------------------------------------------
# kwargs = {"section_name": "_A", "iters":(0,1,2,3),
#     "ly_prepends":["\\time 4/4", "\\numericTimeSignature", "\\context Staff {#(set-accidental-style 'modern)}"],
#     "ly_appends": [], }
# --- CLEPSYDRA SECTION B ----------------------------------------------
kwargs = {"section_name": "B", "iters":(4,5,6,7),
    "ly_prepends":["\\time 4/4", "\\numericTimeSignature", "\\context Staff {#(set-accidental-style 'modern)}"],
    "ly_appends": [], }
# clepsydra_music.show_pdf(**kwargs)
clepsydra_music.make_ly_music(ly_folder="clepsydra", **kwargs), 







# f = ForceCloudStringsMelody(name="caes-cloud-strings-melody")
# f.tally_loop()

# f = ForceCloudStringsMelodyUp(name="caes-cloud-strings-melody-up")
# f.tally_loop()

# f= ForceMoveUp4WindsDown(name="caes-cloud-winds-up4-down")
# f.tally_loop()

# f = ForceUp4BrassMelody(name="caes-cloud-highbrass-4-melody", autorandom=False)
# f.tally_loop()

# f = ForceUp4BrassMelodyWiden(name="caes-cloud-brass-4-melody-widen", autorandom=False)
# f.show_cloud()
#f.tally_loop()

# f = WaterCloudStringsMelody(name="clep-cloud-strings-melody-1-B", start_pitch="B5")
#print(f.cloud.pitch_ranges[3])
# f.show()
# f.tally_loop()

# f = KaiCloudStringsUp(name="kai-cloud-strings-up")
# f.show()
# f.tally_loop()


# f = KaiCloudWindsUp(name="kai-cloud-winds-up")
# # f.show_cloud()
# f.tally_loop()

# f = KaiCloudWinds(name="kai-cloud-winds")
# # f.show_cloud()
# f.tally_loop()

#music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["2hits_a", "stop_class1", "melody"])

# g = get_pitch_ranges(
#             num_lines=2, 
#             times=8,
#             low_pitches=["C6","C1"],
#             increments=[[-6],[6]]
#             )
# print(g)