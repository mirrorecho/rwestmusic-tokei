from abjad import *

from arrangement import Arrangement

music = Arrangement()

music.parts['flute1'].extend("e4 fs4 g4 a4")

show(music.make_score())