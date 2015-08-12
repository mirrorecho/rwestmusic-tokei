import settings
from abjad import *
from calliope.bubbles import *


class TokeiFlutes(BubbleStaffGroup):
    flute1 = BubbleStaff(instrument=instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
    flute2 = BubbleStaff(instrument=instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))

class TokeiOboes(BubbleStaffGroup):
    oboe1 = BubbleStaff(instrument=instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
    oboe2 = BubbleStaff(instrument=instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))

class TokeiScore(BubbleScore):
    flutes = TokeiFlutes()
    oboes = TokeiOboes()