from abjad import *
import os
import settings

# any way to avoid this sys path part??

# BEFORE REHEARSAL TODAY:
# - - - kairos draft taiko parts (by 11:20)
# - - - odaiko/shime parts throughout... rough draft (by 11:40)
# - - - rough arrangement... (by 12:20)
# - - - - - - TEMPOS
# - - - - - - # of repetitions
# - - - - - - # of repetitions
# - - - kata... (by 12:40)
# - - - taiko parts inputed/adjusted and printable (or fallback time)  (by 1:20)
# - - - double check & adjust... rethink games (by 1:40)
# - - - leave to print it! (by 1:40)

#TO DO
# - fast straight hits on taiko with alternating crescendos...
# - hand-playing
# - (here or maybe another movement)... short fast series of 16th notes as accent (esp. mixed into hand playing)
# - free taiko
# - tie/slur between 2 halves of melody
# - pitch class, not exact pitch?
# - longer ties

from tokei import TokeiBubble

from calliope.cycles.loop import CycleLoop
from calliope.cloud.pitches import * 
from calliope.tools import get_pitch_range, get_pitch_number, music_from_durations

class KaiLine():
    half1_pitches = "cs    cs d     cs e d       cs e d fs cd        cs d      cs fs  e       fs     cs d"
    half1_durations = "c1 | c8 c1 r8"
    half1 = "cs1 | cs8 d4. d2 | "
    bass_ = "cs1 ~ | cs1 | fs1 ~ | cs1"


class KaiMaterial(TokeiBubble):
    def __init__(self, time_signature=TimeSignature((4,4)), measures_durations=[(4,4)]*8, layout=None):

        super().__init__(name="kairos-material", time_signature=time_signature, measures_durations=measures_durations,layout=layout, )
        self.add_part(name='line_1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 1", short_instrument_name="ln.1"))
        self.add_part(name='line_2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 2", short_instrument_name="ln.2"))
        self.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        self.add_part(name='harmony_2', instrument=instrumenttools.Violin(instrument_name="Harmony 2", short_instrument_name="har.2"))


        # maybe switch E and D?
        self.material["pitch"]["long_cycle"]=["C#2","F#2","E2","D2"]

        self.material["rhythm"]["kairos_a"]="""c1 | c8( c4. ~ c2) | r4 r8 c8( ~ c4 c4 | c2.) c4( | 
                        c4. c8 ~ c4 c4 | c2.) c8( c8 ~ | c4.) c8( c4 c4) | c2. c8( c8) """

        self.material["pitch"]["kairos_a"]=["C#4",   "C#4","D4",   "C#4","E4","D4",   "C#4","E4","D4","F#4",
                    "C#4",   "C#4","D4",   "C#4","F#4","E4",   "F#4",   "C#4", "D4"]


        self.material["rhythm"]["kairos_b"]="""r2 c2 | c4.( c8 ~ c2) | r4 r8 c8( ~ c2 ~ | c4. c8 ~ c2 ~ | 
                    c2.) c4( | c2.) c4( | c4.) c8( ~ c8 c4.) | c4( c8 c8 c8) c4"""

        self.material["pitch"]["kairos_b"]=["A4","E4","A4",   "E4","F#4",   "D4","E4",   
                    "E4","A4",   "E4","A4",   "F#4","C#5","D5","E4",   "E4","A4"]


m = KaiMaterial(layout="standard")
m.arrange_music(part_names=["line_1"], rhythm_material=["kairos_a"], pitch_material=["kairos_a"])
m.arrange_music(part_names=["line_2"], rhythm_material=["kairos_b"], pitch_material=["kairos_b"])

m.show_pdf(part_names=["line_2","line_1"])
