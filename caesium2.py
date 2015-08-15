import settings
from abjad import *
from calliope.bubbles import *
from score import *


class LineBoo(Line):
    music = "g1"

class CaesiumMusic(Bubble):
    flute1 = Line("b2")
    flute2 = LineBoo()
    oboe2 = Line("a2")

class CaesiumScore(TokeiScore):
    pass

print("********************************")
score = TokeiScore( CaesiumMusic() )
# score = TokeiWinds( CaesiumMusic() )
# score = TokeiFlutes( CaesiumMusic() )
score.show()
# print(score)