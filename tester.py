from abjad import *

from arrangement import Arrangement
from copy import deepcopy

ar = Arrangement(project="rwestmusic-tokei", name="tester-arrangement")
ar.add_part(name='line1', instrument=instrumenttools.Violin(instrument_name="Line 1", short_instrument_name="1"))
ar.add_part(name='line2', instrument=instrumenttools.Violin(instrument_name="Line 2", short_instrument_name="2"))
ar.add_part(name='line3', instrument=instrumenttools.Violin(instrument_name="Line 3", short_instrument_name="3"))
ar.add_part(name='line4', instrument=instrumenttools.Violin(instrument_name="Line 4", short_instrument_name="4"))

m_durations = [(4,4), (4,4), (1,4), (4,4), (4,4)]

for part_name, part in ar.parts.items():
    part.extend(scoretools.make_spacer_skip_measures(m_durations))

m1 = scoretools.Container("b4 b b b b b b b r8")
m_replace = mutate(ar.parts["line1"]).replace_measure_contents(m1)

for m, m_new in zip(ar.parts["line1"], m_replace):
    m = m_new


# del ar.parts["line1"][:]
# ar.parts["line1"].extend(m_replaced)

ar.show_pdf()