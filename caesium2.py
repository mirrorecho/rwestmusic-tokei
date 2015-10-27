
from abjad import *

# always import settings first
import settings

from calliope.bubbles import *
from score import *

class LineBoo(Line):
    music = "g1"

class MaLine(Line):
    def music(self):
        return Container("s8 r4\\fermata s8")
    
    def after_music(self, music):
        if len(music) > 0:
            time_signature = TimeSignature((2, 4))
            attach(time_signature, music[0])
        time_command = indicatortools.LilyPondCommand("once \\override Staff.TimeSignature.stencil = ##f", "before")
        attach(time_command, music)

class CaesiumMusic(Bubble):
    flute1 = Placeholder()
    flute2 = Placeholder()
    oboe1 = Placeholder()
    oboe2 = Placeholder()
    clarinet1 = Placeholder()
    clarinet2 = Placeholder()
    bassoon1 = Placeholder()
    bassoon2 = Placeholder()
    horn1 = Placeholder()
    horn2 = Placeholder()
    horn3 = Placeholder()
    horn4 = Placeholder()
    trumpet1 = Placeholder()
    trumpet2 = Placeholder()
    trombone1 = Placeholder()
    trombone2 = Placeholder()
    tuba = Placeholder()
    perc1 = Placeholder()
    perc2 = Placeholder()
    timpani = Placeholder()
    odaiko = Placeholder()
    shime = Placeholder()
    taiko1 = Placeholder()
    taiko2 = Placeholder()
    violinI1 = Placeholder()
    violinI2 = Placeholder()
    violinII1 = Placeholder()
    violinII2 = Placeholder()
    viola1 = Placeholder()
    viola2 = Placeholder()
    cello1 = Placeholder()
    cello2 = Placeholder()
    bass = Placeholder()


class Ma(CaesiumMusic):
    @classmethod
    def bubble_default(cls):
        return MaLine()

# TO DO... this would make more sense in a standard bubble...
class StartMa(Ma):
    @classmethod
    def bubble_imprint(cls, music):
        if not isinstance(music, Container):
            music = Container(music)
        if len(music) > 0:
            numeric_time_command = indicatortools.LilyPondCommand("numericTimeSignature","before")
            attach(numeric_time_command, music[0])
        return music

class In4Time(CaesiumMusic):
    @classmethod
    def bubble_default(cls):
        return Line("R1 R1 R1")

    @classmethod
    def bubble_imprint(cls, music):
        if not isinstance(music, Container):
            music = Container(music)
        time_signature = TimeSignature((4, 4))
        attach(time_signature, music[0])
        return music

class In28Time(CaesiumMusic):
    @classmethod
    def bubble_default(cls):
        return Line('r4. r4. r4 r4 \\bar "!" r4. r4 r4 \\bar "!" r4 r4 r4.')

    @classmethod
    def bubble_imprint(cls, music):
        if not isinstance(music, Container):
            music = Container(music)
        time_signature = TimeSignature((24, 8))
        attach(time_signature, music[0])
        time_signature = indicatortools.LilyPondCommand("compoundMeter #'((10 8) (7 8) (7 8))", "before"),
        attach(time_signature, music[0])
        return music

class TimpaniCrunchLine(Line):
    hit = BubbleMaterial("caesium.timpani_crunch")
    rests = Line("r4 r2 R1 R1 ")

class Straight4(In4Time):
    timpani = TimpaniCrunchLine()
    shime = BubbleMaterial("caesium.taiko_straight.rhythm")
    odaiko = BubbleMaterial("caesium.taiko_straight.rhythm")
    taiko1 = BubbleMaterial("caesium.taiko_straight.rhythm")
    taiko2 = BubbleMaterial("caesium.taiko_straight.rhythm")

class SectionA(GridSequence, CaesiumMusic):
    grid_sequence = (Straight4, Straight4, Straight4, Straight4)

class SectionB(GridSequence, CaesiumMusic):
    grid_sequence = (In28Time, In28Time, In28Time, In28Time)

class SectionC(GridSequence, CaesiumMusic):
    grid_sequence = (Ma,)

class CaesiumSequence(GridSequence, CaesiumMusic):
    grid_sequence = (StartMa, SectionA, SectionB, SectionC)

class CaesiumScore(TokeiScore):
    strings = TokeiStringsDiv()
    # hide_empty=True
    pass

print("********************************")
score = CaesiumScore( CaesiumSequence() )

m = Material("caesium.taiko_straight")
print( m.get() )

# score = TokeiWinds( CaesiumMusic() )
# score = TokeiFlutes( CaesiumMusic() )
# score.save()
# score.show()
# score.save()
# CaesiumMusic().show()