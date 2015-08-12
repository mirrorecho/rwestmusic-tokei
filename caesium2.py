import settings
from abjad import *
from calliope.bubbles import *
from score import *



class CaesiumMusic(Bubble):
    flute1 = Line("b2")
    oboe2 = Line("a2")

class CaesiumScore(TokeiScore):
    pass


score = TokeiScore( CaesiumMusic() )
score.show()