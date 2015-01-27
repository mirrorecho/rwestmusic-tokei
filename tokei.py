from abjad import *
import settings

from calliope.work import Bubble, Project
from calliope.cloud.pitches import CloudPitches, TallyCircleOfFifthsRange, TallyMelodicIntervals, TallyRepeatedJumps
from calliope.tools import get_pitch_number

PROJECT = Project(name="rwestmusic-tokei")
JI_PITCH = get_pitch_number("A5")

# TO DO... still think it would be better to inherit from CloudPitches...
class TokeiBubble(Bubble):

    #  use **args here?
    def __init__(self, layout="orchestra", name="full-score", time_signature=TimeSignature((4,4)), measures_durations=[(4,4)]*3):

        super().__init__(title="Tokei for Taiko and Orchestra", name=name, project=PROJECT, layout=layout, measures_durations=measures_durations, time_signature=time_signature)

        self.add_part(name='flute1', instrument=instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
        self.add_part(name='flute2', instrument=instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))
        self.add_part(name='oboe1', instrument=instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
        self.add_part(name='oboe2', instrument=instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))
        self.add_part(name='oboe3', instrument=instrumenttools.Oboe(instrument_name="Oboe 3", short_instrument_name="ob.3"))
        self.add_part(name='clarinet1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 1 in Bb", short_instrument_name="cl.1"))
        self.add_part(name='clarinet2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 2 in Bb", short_instrument_name="cl.2"))
        self.add_part(name='bassoon1', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 1", short_instrument_name="bsn.1"), clef="bass")
        self.add_part(name='bassoon2', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 2", short_instrument_name="bsn.2"), clef="bass")

        self.add_part(name='horn1', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 1", short_instrument_name="hn.1"))
        self.add_part(name='horn2', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 2", short_instrument_name="hn.2"))
        self.add_part(name='trumpet1', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 1", short_instrument_name="tpt.1"))
        self.add_part(name='trumpet2', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 2", short_instrument_name="tpt.2"))
        self.add_part(name='trombone1', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 1", short_instrument_name="tbn.1"), clef="bass")
        self.add_part(name='trombone2', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 2", short_instrument_name="tbn.2"), clef="bass")
        self.add_part(name='tuba', instrument=instrumenttools.Tuba(instrument_name="Tuba", short_instrument_name="tba"), clef="bass")

        self.add_perc_part(name='perc1', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 1", short_instrument_name="perc.1"))
        self.add_perc_part(name='perc2', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 2", short_instrument_name="perc.2"))
        self.add_part(name='timpani', instrument=instrumenttools.Instrument(instrument_name="Timpani", short_instrument_name="timp", allowable_clefs=("bass", ),
                        pitch_range="[D2, A3]", sounding_pitch_of_written_middle_c="C4"), clef="bass")
        #self.add_piano_staff_part(name='harp', instrument=instrumenttools.Harp(instrument_name="Harp", short_instrument_name="hp"))
       
        self.add_perc_part(name='shime', instrument=instrumenttools.UntunedPercussion(instrument_name="Shime", short_instrument_name="sh."))
        #self.add_perc_part(name='gane', instrument=instrumenttools.UntunedPercussion(instrument_name="Gane", short_instrument_name="gn."))
        self.add_perc_part(name='odaiko', instrument=instrumenttools.UntunedPercussion(instrument_name="Odaiko", short_instrument_name="o.d."))
        self.add_perc_part(name='taiko1', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 1", short_instrument_name="t.1"))
        self.add_perc_part(name='taiko2', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 2 ", short_instrument_name="t.2."))
        
        self.add_part(name='violinI', instrument=instrumenttools.Violin(instrument_name="Violin I", short_instrument_name="vln.I"))
        self.add_part(name='violinII', instrument=instrumenttools.Violin(instrument_name="Violin II", short_instrument_name="vln.II"))
        self.add_part(name='viola', instrument=instrumenttools.Viola(instrument_name="Viola", short_instrument_name="vla"))
        self.add_part(name='cello', instrument=instrumenttools.Cello(instrument_name="Cello", short_instrument_name="vc."), clef="bass")
        self.add_part(name='bass', instrument=instrumenttools.Contrabass(instrument_name="Bass", short_instrument_name="cb."))
 
        self.material["pitch"]["ji"]=[JI_PITCH]

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

    def prepare_score(self):
        
        self.fill_empty_parts_with_rests()

        for part_name in self.parts:
            if part_name in ["taiko1","taiko2","odaiko"]:
                text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
                attach(text_length_on, self.parts[part_name][0])
                dynamic_up = indicatortools.LilyPondCommand('dynamicUp', 'before')
                attach(dynamic_up, self.parts[part_name][0])

class TokeiCloud():
    def __init__(self, 
            name="cloud", 
            autoload=True,
            autorandom=True,
            *args,
            **kwargs
            ):
        # if ref_pitch is not None:
        #     self.transpose = 0
        # else:
        #     self.transpose = ref_pitch - start_pitch 
        self.name=name
        self.filename = self.name + ".dat"
        self.autoload = autoload

        self.ji_pitch = JI_PITCH
        self.pitches = [] # this will be a list of lists
        self.prepare_pitches()

        self.get_pitch_ranges()
        self.get_pitches()

        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-99), 
            TallyMelodicIntervals(interval_ratings=[(0, -60), (1,12), (2,22), (3,9), (4,9), (5,6), (6,-6), (7,-4), (10,-8), (11,-20), (12,-4)], over_incremental_multiplier=(12,-60)),
            TallyRepeatedJumps(),
        ]

        self.prepare_cloud()
              
        self.cloud = CloudPitches(project=PROJECT, filename=self.filename, autoload=self.autoload, pitch_ranges=self.pitch_ranges) 
        self.cloud.auto_move_into_ranges = True

        for app in self.tally_apps:
            self.cloud.add_tally_app(app)     

        # if cloud data not already loaded, get our pitch lines, and load them
        if not self.cloud.is_loaded:
            self.cloud.init_data(pitch_lines=self.pitches)
            #if autorandom:
                #self.cloud.randomize_all_columns() 
        
        # is this necessary?
        #self.cloud.move_into_ranges()

        self.cloud.get_tallies()

    #PROBABLY NOT NEEDED
    # def cloud_pitches(self):
    #     if self.transpose:
    #         return transpose_pitches(self.cloud.pitch_lines, self.transpose)
    #     else:
    #         return self.cloud.pitch_lines

    def prepare_pitches(self):
        # a hook so that inherited classes can add/do stuff without overriding __init__
        pass

    def get_pitch_ranges(self):
        self.pitch_ranges = [[pitchtools.PitchRange("[C4,B4]")]]

    def get_pitches(self):
        # a hook for actually adding the pitches
        pass

    def prepare_cloud(self):
        # a hook so that inherited classes can add/do stuff without overriding __init__
        pass

    def add_single_pitch_row(self, pitch=0, times=1):
        for t in range(times):
            self.pitches.append([pitch] * len(self.pitches[0]) )

    def add_ji_row(self, times=1):
        self.add_single_pitch_row(self.ji_pitch)

    def duplicate_row(self, index=0, times=1):
        for t in range(times):
            self.pitches.append(self.pitches[index].copy())

    def tally_loop(self):
        self.cloud = self.cloud.tally_loop()

    def cloud_pitches(self):
        return self.cloud.pitch_lines
