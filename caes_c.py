import settings

from caes_m import *
from calliope.cycles.loop import CycleLoop

def get_cycle_music():
    music = CycleLoop(bubble_type=CaesiumMaterial)

    # 0 is ma:
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa)
    # A 1-4:
    # maybe these first few cycles should be indefinite repeats...?
    music.add_cycle(flags=["start"], rehearsal_mark="A")
    music.add_cycle()
    music.add_cycle(flags=["hits","brass_hits"])
    music.add_cycle(flags=["pre_melody"])
    # ------------------------------------
    # B 5-8:
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody", "rolls"], rehearsal_mark="B")
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody", "lowest_strings"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    # ------------------------------------
    # C 9-12
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa, rehearsal_mark="C") # MA !!!!!!!!!!!!!!
    music.add_cycle(flags=["string_nasty_3", "taiko_3"])
    music.add_cycle(flags=["string_nasty_2", "taiko_2","brass_hits"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody", "lowest_strings"])
    # # # -------------------------------------------------------------------
    # # D 13-16
    music.add_cycle(flags=["string_melody_cloud", "brass_hits"], rehearsal_mark="D")
    music.add_cycle(flags=["string_melody_cloud_up"])
    # key change to C#
    music.add_cycle(flags=["winds_up4_cloud_down"]) 
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # ------------------------------------
    # E 17-20
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_hits","brass_melody", "midlow_strings_pad"], rehearsal_mark="E")
    music.add_cycle(flags=["string_nasty_3", "taiko_3"])
    music.add_cycle(flags=["string_nasty_2", "taiko_2"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_hits","brass_melody_widen", "midlow_strings_pad"],)
    # ------------------------------------
    # F 21-24
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa, rehearsal_mark="F") # MA !!!!!!!!!!!!!!
    music.add_cycle(flags=["taiko_3"])
    music.add_cycle(flags=["taiko_3"])
    music.add_cycle(flags=["string_melody_cloud_up", "strings_cloud_trans4"])
    # # -------------------------------------------------------------------
    # G 25-28 (key change to f)
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa, rehearsal_mark="G") # MA !!!!!!!!!!!!!!
    music.add_cycle(flags=["taiko_2", "brass_hits"])
    music.add_cycle(flags=["taiko_2", "brass_hits"])
    music.add_cycle(flags=["winds_up4_cloud_down"])
    # ------------------------------------
    # H 29-32
    # add something else to his ma?
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa, rehearsal_mark="H") # MA !!!!!!!!!!!!!!
    music.add_cycle(flags=["taiko_3"])
    music.add_cycle(flags=["taiko_3"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
    # ------------------------------------
    # I 33-36
    music.add_cycle(flags=["taiko_2", "winds_up4_cloud_down"], rehearsal_mark="I")
    music.add_cycle(flags=["taiko_2"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2"])
    # add something else to his ma?
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # # -------------------------------------------------------------------
    # J 37-40
    # everyone plays, on melody, or in 3,6
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"], rehearsal_mark="J")
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"])
    # ------------------------------------
    # K 41-44
    # everyone plays, on melody, or in 2,4
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2",], rehearsal_mark="K")
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2",])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2", "brass_melody"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2", "brass_melody"])
    # ------------------------------------
    # L 45-48
    # a single tone, but not much of one
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa, rehearsal_mark="L") # MA !!!!!!!!!!!!!!
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    # - silence
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])

    # ends with ma....
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    return music
