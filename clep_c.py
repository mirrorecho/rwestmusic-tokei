import settings

from clep_m import *
from calliope.cycles.loop import CycleLoop

def get_cycle_music():
    music = CycleLoop(bubble_type=ClepsydraMaterial)

    music.add_cycle(flags=["start"])
    music.add_cycle(flags=["start_pause"])
    music.add_cycle(flags=["start_pause"])
    music.add_cycle(bubble_type=ClepFree, flags=["start_taiko", "free"])
    # ------------------------------------
    music.add_cycle(bubble_type=ClepFree, flags=["start_taiko_2", "free", "before_movin"])
    music.add_cycle(flags=["start_movin", "winds_up"])
    music.add_cycle(flags=["next_movin"])
    music.add_cycle(flags=["winds_down"])
    #------------------------------------
    music.add_cycle(flags=["stream_hint1", "stream_cloud1", "stream_cloud_strings_staccato","cloud_swell1"])
    music.add_cycle(flags=["stream_cloud2", "stream_cloud_strings_staccato","cloud_swell2"])
    music.add_cycle(flags=["stream_cloud1", "stream_cloud_strings_staccato","cloud_swell1"])
    music.add_cycle(flags=["stream_cloud2", "stream_cloud_strings_staccato","cloud_swell2"])
    # -------------------------------------------------------------------
    music.add_cycle(flags=["taiko_melody_1","full_stream_1", "melody_start_1"])
    music.add_cycle(flags=["taiko_melody_2"])
    music.add_cycle(flags=["taiko_melody_1"])
    music.add_cycle(flags=["taiko_melody_2"])
    # ------------------------------------
    music.add_cycle(bubble_type=ClepFree, flags=["free"]) # This one's longer... come in one at a time
    music.add_cycle(bubble_type=ClepFree, flags=["free"])
    music.add_cycle(bubble_type=ClepFree, flags=["free"])
    music.add_cycle()
    # ------------------------------------
    music.add_cycle(flags=["taiko_melody_1", "cloud_low"])
    music.add_cycle(flags=["taiko_melody_2", "cloud_low"])
    music.add_cycle(flags=["taiko_melody_1"])
    music.add_cycle(flags=["taiko_melody_2"])
    # -------------------------------------------------------------------
    music.add_cycle(bubble_type=ClepFree, flags=["free"]) # this one's just a ji
    music.add_cycle(bubble_type=ClepFree, flags=["free"])
    music.add_cycle(bubble_type=ClepFree, flags=["free"])
    music.add_cycle()
    # ------------------------------------
    music.add_cycle(flags=["taiko_melody_1"]) # make a variant of the melody?
    music.add_cycle(flags=["taiko_melody_2"])
    music.add_cycle(flags=["taiko_melody_1"])
    music.add_cycle(flags=["taiko_melody_2"])
    # ------------------------------------
    music.add_cycle()
    music.add_cycle(flags=["slowing"])
    music.add_cycle(flags=["slowing"])
    music.add_cycle(flags=["final"])
    return music