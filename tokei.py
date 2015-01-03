from abjad import *

# any way to avoid this sys path part??
import sys
sys.path.append("/Users/randallwest/Code/mirrorecho")

from calliope.work import Arrangement, Project

class TokeiArrangement(Arrangement):


    def __init__(self):

        super().__init__(title="Tokei for Taiko and Orchestra", project=Project(name="rwestmusic-tokei"))

        self.add_perc_part(name='cycle', instrument=instrumenttools.UntunedPercussion(instrument_name="Cycle", short_instrument_name="[C]"))

        self.add_part(name='flute1', instrument=instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
        self.add_part(name='flute2', instrument=instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))
        self.add_part(name='oboe1', instrument=instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
        self.add_part(name='oboe2', instrument=instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))
        self.add_part(name='oboe3', instrument=instrumenttools.Oboe(instrument_name="Oboe 3", short_instrument_name="ob.3"))
        self.add_part(name='clarinet1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 1 in Bb", short_instrument_name="cl.1"))
        self.add_part(name='clarinet2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 2 in Bb", short_instrument_name="cl.2"))
        self.add_part(name='bassoon1', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 1", short_instrument_name="bsn.1"))
        self.add_part(name='bassoon2', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 2", short_instrument_name="bsn.2"))

        self.add_part(name='horn1', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 1", short_instrument_name="hn.1"))
        self.add_part(name='horn2', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 2", short_instrument_name="hn.2"))
        self.add_part(name='trumpet1', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 1", short_instrument_name="tpt.1"))
        self.add_part(name='trumpet2', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 2", short_instrument_name="tpt.2"))
        self.add_part(name='trombone1', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 1", short_instrument_name="tbn.1"), cleff="bass")
        self.add_part(name='trombone2', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 2", short_instrument_name="tbn.2"), cleff="bass")
        self.add_part(name='tuba', instrument=instrumenttools.Tuba(instrument_name="Tuba", short_instrument_name="tba"), cleff="bass")

        self.add_perc_part(name='perc1', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 1", short_instrument_name="perc.1"))
        self.add_perc_part(name='perc2', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 2", short_instrument_name="perc.2"))
        self.add_part(name='timpani', instrument=instrumenttools.Instrument(instrument_name="Timpani", short_instrument_name="timp", allowable_clefs=("bass", ),
                        pitch_range="[D2, A3]", sounding_pitch_of_written_middle_c="C4"), cleff="bass")
        self.add_piano_staff_part(name='harp', instrument=instrumenttools.Harp(instrument_name="Harp", short_instrument_name="hp"))
       
        self.add_perc_part(name='shime', instrument=instrumenttools.UntunedPercussion(instrument_name="Shime", short_instrument_name="sh."))
        self.add_perc_part(name='gane', instrument=instrumenttools.UntunedPercussion(instrument_name="Gane", short_instrument_name="gn."))
        self.add_perc_part(name='odaiko', instrument=instrumenttools.UntunedPercussion(instrument_name="Odaiko", short_instrument_name="o.d."))
        self.add_perc_part(name='taiko1', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 1", short_instrument_name="t.1"))
        self.add_perc_part(name='taiko2', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 2 ", short_instrument_name="t.1."))
        
        self.add_part(name='violinI', instrument=instrumenttools.Violin(instrument_name="Violin I", short_instrument_name="vln.I"))
        self.add_part(name='violinII', instrument=instrumenttools.Violin(instrument_name="Violin II", short_instrument_name="vln.II"))
        self.add_part(name='viola', instrument=instrumenttools.Violin(instrument_name="Viola", short_instrument_name="vla"))
        self.add_part(name='cello', instrument=instrumenttools.Violin(instrument_name="Cello", short_instrument_name="vc."))
        self.add_part(name='bass', instrument=instrumenttools.Violin(instrument_name="Bass", short_instrument_name="cb."))
 

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



