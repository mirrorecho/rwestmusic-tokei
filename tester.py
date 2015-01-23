from abjad import *
import settings

import copy

from tokei import TokeiArrangement

# # any way to avoid this sys path part??
# import sys
# sys.path.append("/Users/randallwest/Code/mirrorecho")

# import calliope.work

# f# rom arrangement import Arrangement
# from copy import deepcopy

# project = calliope.work.Project("rwestmusic-tokei")

# ar = calliope.work.Arrangement(project=project, name="tester-arrangement")
# ar.add_part(name='line1', instrument=instrumenttools.Violin(instrument_name="Line 1", short_instrument_name="1"))
# ar.add_part(name='line2', instrument=instrumenttools.Violin(instrument_name="Line 2", short_instrument_name="2"))
# ar.add_part(name='line3', instrument=instrumenttools.Violin(instrument_name="Line 3", short_instrument_name="3"))
# ar.add_part(name='line4', instrument=instrumenttools.Violin(instrument_name="Line 4", short_instrument_name="4"))

# m_durations = [(4,4), (4,4), (1,4), (4,4), (4,4)]

# for part_name, part in ar.parts.items():
#     part.extend(scoretools.make_spacer_skip_measures(m_durations))

# m1 = scoretools.Container("b4 b b b b b b b r8")
# m_replace = mutate(ar.parts["line1"]).replace_measure_contents(m1)

# for m, m_new in zip(ar.parts["line1"], m_replace):
#     m = m_new


# # del ar.parts["line1"][:]
# # ar.parts["line1"].extend(m_replaced)

# ar.show_pdf()



arr = TokeiArrangement()
arr.material["pitch"]["rise_octaves"] = [
                                ["C4","D4","E4", ["F4","F5"] ],
                                ["C5","D5","E5", ["F5","F6"] ],
                                ]
arr.material["pitch"]["down_row_A"] = ["A3","G3","F3","E3"]
arr.material["pitch"]["down_row_B"] = ["B3","A3","G3","F3"]

arr.material["rhythm"]["pickup"] = "c4. c8"
arr.material["rhythm"]["straight"] = "c4 c4"

arr.material["rhythm"]["eighths_measure"] = "c8( c8 c8 c8)    c8( c8 c8 c8)"


arr.arrange_music(part_names=["clarinet1","clarinet2"],pitch_material="rise_octaves",rhythm_material=[["pickup","straight"]])

arr.arrange_music(part_names=["flute1","flute2"],pitches=[["G5","A5","B5",0]], rhythm_material=["eighths_measure"])

arr.arrange_music(part_names=["oboe1","oboe2"],pitch_material=["down_row_A","down_row_B"], rhythms=["c4-. c4-. c4-. c4-. "])


arr.show_pdf()
