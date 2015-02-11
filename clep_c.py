import settings

from clep_m import *
from calliope.cycles.loop import CycleLoop

def get_cycle_music():
    music = CycleLoop(bubble_type=ClepsydraMaterial)
    music.add_cycle(flags=["start"])
    music.add_cycle(flags=["start_2"])
    music.add_cycle(flags=["start_pause"])
    music.add_cycle(flags=["start_pause"])
    # ------------------------------------
    music.add_cycle(bubble_type=ClepFree, flags=["start_taiko", "free"])
    music.add_cycle(bubble_type=ClepFree, flags=["start_taiko_2", "free"])
    music.add_cycle(bubble_type=ClepFree, flags=["start_taiko_3", "free"])
    music.add_cycle(bubble_type=ClepFree, flags=["start_taiko_4", "free"])
    music.add_cycle(flags=["start_taiko_5"])
    # ------------------------------------
    # ------------------------------------
    # ------------------------------------
    music.add_cycle(flags=["start_movin", "winds_up"])
    music.add_cycle(flags=["next_movin","ref_F"])
    music.add_cycle(flags=["winds_down","ref_F#"])
    music.add_cycle(flags=["stream_hint1","ref_G"])
    #------------------------------------
    music.add_cycle(flags=["ref_G#", "stream_hint1", "stream_cloud1", "stream_cloud_strings_staccato","cloud_swell1"],rehearsal_mark="C")
    music.add_cycle(flags=["ref_A", "stream_cloud2", "stream_cloud_strings_staccato","cloud_swell2"])
    # this Bb happens twice!
    music.add_cycle(flags=["ref_Bb", "stream_cloud1", "stream_cloud_strings_staccato","cloud_swell1"])
    music.add_cycle(flags=["ref_Bb", "stream_cloud2", "stream_cloud_strings_staccato","cloud_swell2"])
    # -------------------------------------------------------------------
    music.add_cycle(flags=["ref_B", "taiko_melody_1","full_stream_1", "melody_start_1"],rehearsal_mark="D")
    music.add_cycle(flags=["ref_C", "taiko_melody_2", "trom_stream"])
    music.add_cycle(flags=["ref_C#", "taiko_melody_1"])
    music.add_cycle(flags=["ref_D", "taiko_melody_2"])
    # ------------------------------------
    music.add_cycle(bubble_type=ClepFreeFermata, flags=["ref_Eb", "free2"], rehearsal_mark="E") # This one's longer... come in one at a time
    music.add_cycle( bubble_type=ClepFreeFermata, flags=["ref_Eb","free2"])
    music.add_cycle(bubble_type=ClepFreeFermata, flags=["ref_Eb","free2"])
    music.add_cycle(flags=["ref_Eb"])
    # ------------------------------------
    music.add_cycle(flags=["ref_E","taiko_melody_1", "cloud_low"],rehearsal_mark="F")
    music.add_cycle(flags=["ref_F","taiko_melody_2", "cloud_low"])
    music.add_cycle(flags=["ref_F#","taiko_melody_1"])
    music.add_cycle(flags=["ref_G","taiko_melody_2"])
    # -------------------------------------------------------------------
    music.add_cycle(bubble_type=ClepFreeFermata, flags=["ref_G#","free3"],rehearsal_mark="G") # this one's just a ji
    music.add_cycle(bubble_type=ClepFreeFermata, flags=["ref_G#","free3"])
    music.add_cycle(bubble_type=ClepFreeFermata, flags=["ref_G#","free3"])
    music.add_cycle(flags=["ref_G#"])
    # ------------------------------------
    music.add_cycle(flags=["ref_A","taiko_melody_1","full_stream_2",],rehearsal_mark="H") # make a variant of the melody?
    music.add_cycle(flags=["ref_Bb","taiko_melody_2", "trom_stream"])
    music.add_cycle(flags=["ref_B","taiko_melody_1"])
    music.add_cycle(flags=["ref_C#","taiko_melody_2"])
    # ------------------------------------
    music.add_cycle(bubble_type=ClepFree, flags=["ref_D","slowing"], rehearsal_mark="I")
    

    # music.add_cycle(bubble_type=ClepFree, flags=["next"])
    return music