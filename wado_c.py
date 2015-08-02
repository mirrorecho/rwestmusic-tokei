import settings

from wado_m import *
from calliope.cycles.loop import CycleLoop

def get_cycle_music():

    # THIS IS ACTUALLY HARDER TO FOLLOW... HOW TO SIMPLIFY????
    music = CycleLoop(bubble_type=WadoMaterial)
    # intro cycles:
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_1", "free", "intro"], rehearsal_mark="A")
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_2", "free", "intro"])
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_3", "free", "intro"])
    music.add_cycle(bubble_type=WadoFree, flags=["intro_free_4", "free", "intro"])


    music.add_cycle(bubble_type=Intro, flags=["B1", "intro_1_a", "taiko_a", "intro_a"], rehearsal_mark="B")
    music.add_cycle(bubble_type=Intro, flags=["B2","intro_1_b", "taiko_b", "intro_b"])
    music.add_cycle(bubble_type=Intro2, flags=["B3","intro_2_a", "taiko_a", "intro_a"])
    music.add_cycle(bubble_type=Intro2, flags=["B4","intro_2_b", "taiko_b", "intro_b"])
    # # # melody cycles:
    music.add_cycle(bubble_type=MelodyA, flags=["C1", "melody","melody_1","melody_1_a", "taiko_a", "melody_start"], rehearsal_mark="C")
    music.add_cycle(bubble_type=MelodyB, flags=["C2","melody","melody_1","melody_1_b", "taiko_b"])

    music.add_cycle(bubble_type=MelodySwingA, flags=["D1", "melody","melody_2","melody_2_a", "taiko_a", "taiko_split"], rehearsal_mark="D")
    music.add_cycle(bubble_type=MelodySwingB, flags=["D2","melody","melody_2","melody_2_b", "taiko_b", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingA, flags=["D3","melody","melody_3","melody_3_a", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingB, flags=["D4","melody","melody_3","melody_3_b", "taiko_b", "taiko_split"])
    # day music cycles:
    music.add_cycle(bubble_type=DayMusicSplit, flags=["E1","day_music_1", "day_start"], rehearsal_mark="E")
    music.add_cycle(bubble_type=DayMusicSplit, flags=["E2","day_music_2"])
    music.add_cycle(bubble_type=DayMusicEnd, flags=["E3","day_music_end"])

    music.add_cycle(bubble_type=Evening, flags=["F1","evening_1_a","evening","free2"], rehearsal_mark="F")
    music.add_cycle(bubble_type=Evening, flags=["F2","evening_1_b","evening","free2"])
    # dusk
    music.add_cycle(bubble_type=Dusk1, flags=["G1","dusk_1","free3"], rehearsal_mark="G")
    music.add_cycle(bubble_type=Dusk2, flags=["G2","dusk_2","free3"])

    music.add_cycle(bubble_type=Conduct, flags=["H1", "conduct_1"], rehearsal_mark="H")# THIS NEEDS TO BE CONDUCT....
    music.add_cycle(bubble_type=Conduct, flags=["H2","conduct_2"])
    # # conduct / dark melody
    music.add_cycle(bubble_type=DarkMelodyA, flags=["I1","dark_melody", "dark_melody_a", "taiko_a"], rehearsal_mark="I")
    music.add_cycle(bubble_type=DarkMelodyB, flags=["I2","dark_melody", "dark_melody_b", "taiko_b"])

    music.add_cycle(bubble_type=DarkMelodyC, flags=["J1", "dark_melody", "dark_melody_c", "taiko_a", "taiko_split"], rehearsal_mark="J")
    music.add_cycle(bubble_type=DarkMelodyD, flags=["J2","dark_melody", "dark_melody_d", "taiko_b", "taiko_split"])
    music.add_cycle(bubble_type=DarkMelodyE, flags=["J3","dark_melody", "dark_melody_e", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=DarkMelodyF, flags=["J4","dark_melody", "dark_melody_f", "taiko_b", "taiko_split"])
    
    music.add_cycle(bubble_type=DayMusicSplit, flags=["K1","day_music_1", "day_start","yo_down4"], rehearsal_mark="K")
    music.add_cycle(bubble_type=DayMusicSplit, flags=["K2","day_music_2","yo_down4"])
    music.add_cycle(bubble_type=DayMusicEnd, flags=["K3","day_music_end","yo_down4"])
    #
    music.add_cycle(bubble_type=WadoSolo, flags=["L1", "solo_1","free4"], rehearsal_mark="L")
    music.add_cycle(bubble_type=WadoSolo, flags=["L2", "solo_2","free4"])

    music.add_cycle(bubble_type=Intro, flags=["M1", "intro_1_a", "taiko_a", "intro_a", "intro_return"], rehearsal_mark="M")
    music.add_cycle(bubble_type=Intro, flags=["M2", "intro_1_b", "taiko_b", "intro_b", "intro_return"])
    music.add_cycle(bubble_type=Intro2, flags=["M3", "intro_2_a", "taiko_a", "intro_a", "intro_return"])
    music.add_cycle(bubble_type=Intro2, flags=["M4", "intro_2_b", "taiko_b", "intro_b", "intro_return"])

    # melody starts up again (the first/last one is free)
    music.add_cycle(bubble_type=MelodyA, flags=["N1", "melody_last","melody_1","melody_1_a", "taiko_a","melody_start","free"], rehearsal_mark="N")
    music.add_cycle(bubble_type=MelodyB, flags=["N2", "melody","melody_1","melody_1_b", "taiko_b"])

    music.add_cycle(bubble_type=MelodySwingA, flags=["O1", "melody","melody_2","melody_2_a", "taiko_a", "taiko_split"], rehearsal_mark="O")
    music.add_cycle(bubble_type=MelodySwingB, flags=["O2", "melody","melody_2","melody_2_b", "taiko_b", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingA, flags=["O3", "melody","melody_3","melody_3_a", "taiko_a", "taiko_split"])
    music.add_cycle(bubble_type=MelodySwingB, flags=["O4", "melody","melody_3","melody_3_b", "taiko_b", "taiko_split"])
    # day music cycles:
    music.add_cycle(bubble_type=DayMusicSplit, flags=["P1", "day_music_1", "day_start"], rehearsal_mark="P")
    music.add_cycle(bubble_type=DayMusicSplit, flags=["P2","day_music_2"])
    music.add_cycle(bubble_type=DayMusicEnd, flags=["P3","day_music_end"])
    music.add_cycle(bubble_type=DayMusicEnd, flags=["P4","final"])

    return music
