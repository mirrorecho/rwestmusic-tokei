import settings

from caes_m import *
from calliope.cycles.loop import CycleLoop

def get_cycle_music():
    music = CycleLoop(bubble_type=CaesiumMaterial)

    # 0 is ma:
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa)
    # A 1-4:
    # maybe these first few cycles should be indefinite repeats...?
    music.add_cycle(flags=["start"])
    music.add_cycle()
    music.add_cycle(flags=["hits","brass_hits"])
    music.add_cycle(flags=["pre_melody"])
    # ------------------------------------
    # B 5-8:
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody", "rolls"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    # ------------------------------------
    # C 9-12
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    music.add_cycle(flags=["string_nasty_3", "taiko_3"])
    music.add_cycle(flags=["string_nasty_2", "taiko_2","brass_hits"])
    music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    # # # -------------------------------------------------------------------
    # # D 13-16
    # music.add_cycle(flags=["string_melody_cloud", "brass_hits"])
    # music.add_cycle(flags=["string_melody_cloud_up"])
    # # key change to C#
    # music.add_cycle(flags=["winds_up4_cloud_down"]) 
    # music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # # ------------------------------------
    # # E 17-20
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_hits","brass_melody", "midlow_strings_pad"],)
    # music.add_cycle(flags=["string_nasty_3", "taiko_3"])
    # music.add_cycle(flags=["string_nasty_2", "taiko_2"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_hits","brass_melody_widen", "midlow_strings_pad"],)
    # # ------------------------------------
    # # F 21-24
    # music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # music.add_cycle(flags=["taiko_2", "brass_hits"])
    # music.add_cycle(flags=["taiko_2", "brass_hits"])
    # music.add_cycle(flags=["string_melody_cloud_up", "strings_cloud_trans4"])
    # # # -------------------------------------------------------------------
    # # G 25-28 (key change to f)
    # music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # music.add_cycle(flags=["taiko_2", "brass_hits"])
    # music.add_cycle(flags=["taiko_2", "brass_hits"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2", "brass_melody_widen"])
    # # ------------------------------------
    # # H 29-32
    # # add something else to his ma?
    # music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # music.add_cycle(flags=["taiko_3"])
    # music.add_cycle(flags=["taiko_3"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
    # # ------------------------------------
    # # I 33-36
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3"])
    # # add something else to his ma?
    # music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # # # -------------------------------------------------------------------
    # # J 37-40
    # # everyone plays, on melody, or in 3,6
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_3","string_nasty_3"])
    # # ------------------------------------
    # # K 41-44
    # # everyone plays, on melody, or in 2,4
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2", "brass_hits"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2", "brass_hits"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2", "brass_melody"])
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody_split_2", "brass_melody"])
    # # ------------------------------------
    # # L 45-48
    # # a single tone, but not much of one
    # music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])
    # # - silence
    # music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    # music.add_cycle(bubble_type=CaesiumMaterialOdd, flags=["melody"])

    # ends with ma....
    music.add_cycle(flags=["ma"], bubble_type=CaesiumMa) # MA !!!!!!!!!!!!!!
    return music
