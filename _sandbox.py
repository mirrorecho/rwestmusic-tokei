# JUST FOR TESTING STUFF OUT....

from abjad import *

from arrangement import TokeiArrangement

music1 = TokeiArrangement()
music2 = TokeiArrangement()

music1.parts['flute2'].extend("e4 e4 e4 e4")

music2.parts['flute2'].extend("f4 f4 f4 f4")

my_pitch = pitchtools.NamedPitch("a''")

my_notes = scoretools.make_notes([my_pitch], [(4,4), (1,1), (1,2), (1,2)])

my_measures = scoretools.Container()
my_measures.extend(scoretools.Measure((4,4)))
my_measures.extend(scoretools.Measure((8,4)))

my_measures.extend(my_notes)

music2.parts['flute2'].extend(my_measures)

music1.append_arrangement(music2)

show(music1.make_score())
