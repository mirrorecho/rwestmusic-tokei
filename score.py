import settings
from abjad import *
from calliope.bubbles import *


class TokeiFlutes(InstrumentStaffGroup):
    flute1 = BubbleStaff(instrument=instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
    flute2 = BubbleStaff(instrument=instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))

class TokeiOboes(InstrumentStaffGroup):
    oboe1 = BubbleStaff(instrument=instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
    oboe2 = BubbleStaff(instrument=instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))

class TokeiClarinets(InstrumentStaffGroup):
    clarinet1 = BubbleStaff(instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 1", short_instrument_name="cl.1"))
    clarinet2 = BubbleStaff(instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 2", short_instrument_name="cl.2"))

class TokeiBassoons(InstrumentStaffGroup):
    bassoon1 = BubbleStaff(instrument=instrumenttools.Oboe(instrument_name="Bassoon 1", short_instrument_name="bsn.1"))
    bassoon2 = BubbleStaff(instrument=instrumenttools.Oboe(instrument_name="Bassoon 2", short_instrument_name="bsn.2"))

class TokeiWinds(BubbleStaffGroup):
    flutes = TokeiFlutes()
    oboes = TokeiOboes()
    clarinets = TokeiClarinets()
    bassoons = TokeiBassoons()

    sequence = ("flutes","oboes", "clarinets", "bassoons")

class TokeiScore(BubbleScore):
    winds = TokeiWinds()