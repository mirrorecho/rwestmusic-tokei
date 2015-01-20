from abjad import *
import os
import settings

# any way to avoid this sys path part??

#TO DO
# - fast straight hits on taiko with alternating crescendos...

#(if possible...)
# - L / R notes on music!!
# - proportional music... 


from tokei import TokeiArrangement
from calliope.work import Project, Arrangement
from calliope.cycles.loop import CycleLoop, Cycle
from calliope.cycles.transform import *
from calliope.cloud.pitches import * 
from calliope.tools import get_pitch_range, get_pitch_number, music_from_durations

class KaiLine():
    half1_pitches = "cs    cs d     cs e d       cs e d fs cd        cs d      cs fs  e       fs     cs d"
    half1_durations = "c1 | c8 c1 r8"
    half1 = "cs1 | cs8 d4. d2 | "
    bass_ = "cs1 ~ | cs1 | fs1 ~ | cs1"