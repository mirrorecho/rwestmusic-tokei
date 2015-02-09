import settings

from wado_m import *
from calliope.cycles.loop import CycleLoop

def get_cycle_music():

    # THIS IS ACTUALLY HARDER TO FOLLOW... HOW TO SIMPLIFY????
    music = CycleLoop(bubble_type=WadoMaterial)
    # intro cycles:
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_1", "free", "intro"])
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_2", "free", "intro"])
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_3", "free", "intro"])
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_4", "free", "intro"])


    music.add_cycle(bubble_type=Intro, flags=["intro_1_a", "taiko_a", "intro_a"])
    music.add_cycle(bubble_type=Intro, flags=["intro_1_b", "taiko_b", "intro_b"])
    music.add_cycle(bubble_type=Intro2, flags=["intro_2_a", "taiko_a", "intro_a"])
    music.add_cycle(bubble_type=Intro2, flags=["intro_2_b", "taiko_b", "intro_b"])
    # # # melody cycles:
    music.add_cycle(bubble_type=MelodyA, flags=["melody","melody_1","melody_1_a", "taiko_a", "melody_start"])
    music.add_cycle(bubble_type=MelodyB, flags=["melody","melody_1","melody_1_b", "taiko_b"])
    music.add_cycle(bubble_type=MelodySwingA, flags=["melody","melody_2","melody_2_a", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingB, flags=["melody","melody_2","melody_2_b", "taiko_b", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingA, flags=["melody","melody_3","melody_3_a", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingB, flags=["melody","melody_3","melody_3_b", "taiko_b", "taiko_split"])
    # day music cycles:
    music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_1", "day_start"])
    music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_2"])
    music.add_cycle(bubble_type=DayMusicEnd, flags=["day_music_end"])

    music.add_cycle(bubble_type=Evening, flags=["evening_1_a","evening","free"])
    music.add_cycle(bubble_type=Evening, flags=["evening_1_b","evening","free"])
    # dusk
    music.add_cycle(bubble_type=Dusk1, flags=["dusk_1","free"])
    music.add_cycle(bubble_type=Dusk2, flags=["dusk_2","free"])
    music.add_cycle(bubble_type=Dusk3, flags=["dusk_3","free"])
    music.add_cycle(bubble_type=Dusk4, flags=["dusk_4","free"])
    # conduct / dark melody
    music.add_cycle(bubble_type=DarkMelodyA, flags=["dark_melody", "dark_melody_a", "taiko_a"])
    music.add_cycle(bubble_type=DarkMelodyB, flags=["dark_melody", "dark_melody_b", "taiko_b"])
    music.add_cycle(bubble_type=DarkMelodyC, flags=["dark_melody", "dark_melody_c", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=DarkMelodyD, flags=["dark_melody", "dark_melody_d", "taiko_b", "taiko_split"])
    music.add_cycle(bubble_type=DarkMelodyE, flags=["dark_melody", "dark_melody_e", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=DarkMelodyF, flags=["dark_melody", "dark_melody_f", "taiko_b", "taiko_split"])
    # # day music cycles:
    music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_1", "day_start","yo_down4"])
    music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_2","yo_down4"])
    music.add_cycle(bubble_type=DayMusicEnd, flags=["day_music_end","yo_down4"])
    #
    music.add_cycle(bubble_type=WadoSolo, flags=["solo_1","free"])
    music.add_cycle(bubble_type=WadoSolo, flags=["solo_2","free"])

    music.add_cycle(bubble_type=Intro, flags=["intro_1_a", "taiko_a", "intro_a", "intro_return"])
    music.add_cycle(bubble_type=Intro, flags=["intro_1_b", "taiko_b", "intro_b", "intro_return"])
    music.add_cycle(bubble_type=Intro2, flags=["intro_2_a", "taiko_a", "intro_a", "intro_return"])
    music.add_cycle(bubble_type=Intro2, flags=["intro_2_b", "taiko_b", "intro_b", "intro_return"])

    # melody starts up again (the first/last one is free)
    music.add_cycle(bubble_type=WadoMelodyLastA, flags=["melody_last","melody_1","melody_1_a", "taiko_a","melody_start","free"])
    music.add_cycle(bubble_type=MelodyB, flags=["melody","melody_1","melody_1_b", "taiko_b"])
    music.add_cycle(bubble_type=MelodySwingA, flags=["melody","melody_2","melody_2_a", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingB, flags=["melody","melody_2","melody_2_b", "taiko_b", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingA, flags=["melody","melody_3","melody_3_a", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingB, flags=["melody","melody_3","melody_3_b", "taiko_b", "taiko_split"])
    # day music cycles:
    music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_1", "day_start"])
    music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_2"])
    music.add_cycle(bubble_type=DayMusicEnd, flags=["day_music_end"])

    return music
