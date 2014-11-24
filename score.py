from abjad import *



score = Score([])

flute1_staff = scoretools.Staff()
flute2_staff = scoretools.Staff()

flute1 = instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1")
flute2 = instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2")

oboe1 = instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1")
oboe2 = instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2")

clarinet1 = instrumenttools.Oboe(instrument_name="Clarinet 1", short_instrument_name="cl.1")
clarinet2 = instrumenttools.Oboe(instrument_name="Clarinet 2", short_instrument_name="cl.2")


attach(flute1, flute1_staff)
attach(flute2, flute2_staff)

flute1_music = scoretools.Container()
flute1_music.extend("e1 d2 d2")

flute1_staff.extend(flute1_music)

# to do... output notes as JSON data?

score.extend([
    flute1_staff, 
    flute2_staff
    ])

show(score)