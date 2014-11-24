from abjad import *
from collections import OrderedDict

class Part(scoretools.Container):
    
    def __init__(self, instrument=None):
        self.instrument = instrument
        super().__init__()

    def make_staff(self):
        staff = scoretools.Staff([])
        attach(self.instrument, staff)
        staff.extend(self)
        return staff

class Arrangement():

    score = scoretools.Score([])

    parts = OrderedDict()

    def __init__(self):

        self.parts['flute1'] = Part(instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
        self.parts['flute2'] = Part(instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))
        self.parts['oboe1'] = Part(instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
        self.parts['oboe2'] = Part(instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))
        self.parts['clarinet1'] = Part(instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 1 in Bb", short_instrument_name="cl.1"))
        self.parts['clarinet2'] = Part(instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 2 in Bb", short_instrument_name="cl.2"))
        self.parts['bassoon1'] = Part(instrumenttools.Bassoon(instrument_name="Bassoon 1", short_instrument_name="bsn.1"))
        self.parts['bassoon2'] = Part(instrumenttools.Bassoon(instrument_name="Bassoon 2", short_instrument_name="bsn.2"))


       
        # self.horn1 = scoretools.Container()
        # self.horn2 = scoretools.Container()
        # self.trumpet1 = scoretools.Container()
        # self.trumpet2 = scoretools.Container()
        # self.trombone1 = scoretools.Container()
        # self.trombone2 = scoretools.Container()
        # # is tuba happening?
        # self.tuba = scoretools.Container()

        # # to do... figure out instrument (and staff) changes for perc
        # self.perc1 = scoretools.Container()
        # self.perc2 = scoretools.Container()
        # self.timpani = scoretools.Container()
        # self.harp =  scoretools.Container()

        # self.taiko_shime = scoretools.Container()
        # self.taiko_odaiko = scoretools.Container()
        # self.taiko_group1 = scoretools.Container()
        # self.taiko_group2 = scoretools.Container()

        # self.violinI = scoretools.Container()
        # self.violinI_div_1 = scoretools.Container()
        # self.violinI_div_2 = scoretools.Container()
        # self.violinI_stand_1 = scoretools.Container()
        # self.violinI_stand_2 = scoretools.Container()
        # self.violinI_stand_3 = scoretools.Container()
        # self.violinI_1 = scoretools.Container()
        # self.violinI_2 = scoretools.Container()
        # self.violinI_3 = scoretools.Container()
        # self.violinI_4 = scoretools.Container()
        # self.violinI_5 = scoretools.Container()
        # self.violinI_6 = scoretools.Container()

        # self.violinII = scoretools.Container()
        # self.violinII_div_1 = scoretools.Container()
        # self.violinII_div_2 = scoretools.Container()
        # self.violinII_stand_1 = scoretools.Container()
        # self.violinII_stand_2 = scoretools.Container()
        # self.violinII_stand_3 = scoretools.Container()
        # self.violinII_1 = scoretools.Container()
        # self.violinII_2 = scoretools.Container()
        # self.violinII_3 = scoretools.Container()
        # self.violinII_4 = scoretools.Container()
        # self.violinII_5 = scoretools.Container()
        # self.violinII_6 = scoretools.Container()

        # self.viola =  scoretools.Container()
        # self.viola_div_1 =  scoretools.Container()
        # self.viola_div_2 =  scoretools.Container()
        # self.viola_1 =  scoretools.Container()
        # self.viola_2 =  scoretools.Container()
        # self.viola_3 =  scoretools.Container()
        # self.viola_4 =  scoretools.Container()

        # self.cello =  scoretools.Container()
        # self.cello_div_1 =  scoretools.Container()
        # self.cello_div_2 =  scoretools.Container()
        # self.cello_1 =  scoretools.Container()
        # self.cello_2 =  scoretools.Container()
        # self.cello_3 =  scoretools.Container()
        # self.cello_4 =  scoretools.Container()

        # self.bass = scoretools.Container()
        # self.bass_1 =  scoretools.Container()
        # self.bass_2 =  scoretools.Container()

    def make_score(self):

        self.score = scoretools.Score([])

        self.score.extend([self.parts[x].make_staff() for x in self.parts])

        return self.score

    def partial_score(self, part_names):
        score = scoretools.Score([])

        score.extend([self.parts[x].make_staff() for x in part_names])

        return score