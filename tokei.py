from abjad import *
import settings

from calliope.work import Bubble, Project
from calliope.cloud.pitches import CloudPitches, TallyCircleOfFifthsRange, TallyMelodicIntervals, TallyRepeatedJumps
from calliope.tools import get_pitch_number, attach_commands, get_pitch_range

import copy

PROJECT = Project(name="rwestmusic-tokei")
JI_PITCH = get_pitch_number("A5")

# TO DO... still think it would be better to inherit from CloudPitches...
class TokeiBubble(Bubble):

    #  use **args here?
    def __init__(self, title="Tokei for Taiko and Orchestra", layout="orchestra", name="full-score", measures_durations=[(4,4)]*3, odd_meters=False, div_strings=False, tempo = ((1, 4), 120), rehearsal_mark=None):

        super().__init__(title=title, name=name, project=PROJECT, layout=layout, measures_durations=measures_durations, odd_meters=odd_meters, tempo=tempo, rehearsal_mark=rehearsal_mark)

        self.add_staff_group(name="winds", part_names=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2","bassoon1","bassoon2"])
        self.add_part(name='flute1', ly_name='fluteOne', instrument=instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
        self.add_part(name='flute2', ly_name='fluteTwo', instrument=instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))
        self.add_part(name='oboe1', ly_name='oboeOne', instrument=instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
        self.add_part(name='oboe2', ly_name='oboeTwo', instrument=instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))
        self.add_part(name='oboe3', ly_name='oboeThree', instrument=instrumenttools.Oboe(instrument_name="Oboe 3", short_instrument_name="ob.3"))
        self.add_part(name='clarinet1', ly_name='clarinetOne', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 1 in Bb", short_instrument_name="cl.1"))
        self.add_part(name='clarinet2', ly_name='clarinetTwo', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 2 in Bb", short_instrument_name="cl.2"))
        self.add_part(name='bassoon1', ly_name='bassoonOne', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 1", short_instrument_name="bsn.1"), clef="bass")
        self.add_part(name='bassoon2', ly_name='bassoonTwo', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 2", short_instrument_name="bsn.2"), clef="bass")

        self.add_staff_group(name="brass", part_names=["horn1","horn2","horn3","horn4","trumpet1","trumpet2","trombone1","trombone2","tuba"])
        self.add_part(name='horn1', ly_name='hornOne', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 1", short_instrument_name="hn.1"))
        self.add_part(name='horn2', ly_name='hornTwo', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 2", short_instrument_name="hn.2"))
        self.add_part(name='horn3', ly_name='hornThree', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 3", short_instrument_name="hn.3"))
        self.add_part(name='horn4', ly_name='hornFour', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 4", short_instrument_name="hn.4"))
        self.add_part(name='trumpet1', ly_name='trumpetOne', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 1", short_instrument_name="tpt.1"))
        self.add_part(name='trumpet2', ly_name='trumpetTwo', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 2", short_instrument_name="tpt.2"))
        self.add_part(name='trombone1', ly_name='tromboneOne', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 1", short_instrument_name="tbn.1"), clef="bass")
        self.add_part(name='trombone2', ly_name='tromboneTwo', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 2", short_instrument_name="tbn.2"), clef="bass")
        self.add_part(name='tuba', ly_name='tuba', instrument=instrumenttools.Tuba(instrument_name="Tuba", short_instrument_name="tba"), clef="bass")

        # TO DO EVENTUALLY... shouldn't always add crotales.... and it shouldn't be a flute
        self.add_staff_group(name="perc", part_names=["crotales","perc1","perc2","timpani"])
        self.add_part(name='crotales', ly_name='crotales', instrument=instrumenttools.Instrument(instrument_name="Crotales", short_instrument_name="cro."))
        self.add_perc_part(name='perc1', ly_name='percOne', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 1", short_instrument_name="perc.1"))
        self.add_perc_part(name='perc2', ly_name='percTwo', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 2", short_instrument_name="perc.2"))
        self.add_part(name='timpani', ly_name='timpani', instrument=instrumenttools.Instrument(instrument_name="Timpani", short_instrument_name="timp"), clef="bass")
        #self.add_piano_staff_part(name='harp', instrument=instrumenttools.Harp(instrument_name="Harp", short_instrument_name="hp"))
       
        self.add_staff_group(name="taiko", part_names=["shime","odaiko","taiko1","taiko2"])
        self.add_perc_part(name='shime', ly_name='shime', instrument=instrumenttools.UntunedPercussion(instrument_name="Shime", short_instrument_name="sh."))
        #self.add_perc_part(name='gane', instrument=instrumenttools.UntunedPercussion(instrument_name="Gane", short_instrument_name="gn."))
        self.add_perc_part(name='odaiko', ly_name='odaiko', instrument=instrumenttools.UntunedPercussion(instrument_name="Odaiko", short_instrument_name="o.d."))
        self.add_perc_part(name='taiko1', ly_name='taikoOne', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 1", short_instrument_name="t.1"))
        self.add_perc_part(name='taiko2', ly_name='taikoTwo', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 2 ", short_instrument_name="t.2."))
        
        if not div_strings:
            self.add_staff_group(name="strings", part_names=["violinI","violinII","viola","cello","bass"])
            self.add_part(name='violinI', ly_name='violinI', instrument=instrumenttools.Violin(instrument_name="Violin I", short_instrument_name="vln.I"))
            self.add_part(name='violinII', ly_name='violinII', instrument=instrumenttools.Violin(instrument_name="Violin II", short_instrument_name="vln.II"))
            self.add_part(name='viola', ly_name='viola', instrument=instrumenttools.Viola(instrument_name="Viola", short_instrument_name="vla"), clef="alto")
            self.add_part(name='cello', ly_name='cello', instrument=instrumenttools.Cello(instrument_name="Cello", short_instrument_name="vc."), clef="bass")
            self.add_part(name='bass', ly_name='bass', instrument=instrumenttools.Contrabass(instrument_name="Bass", short_instrument_name="cb."), clef="bass")
        else:
            self.add_staff_group(name="strings", part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2","cello_div1","cello_div2","bass_div1","bass_div2"])
            self.add_part(name='violinI_div1', ly_name='violinIDivOne', instrument=instrumenttools.Violin(instrument_name="Violin I 1", short_instrument_name="vln.I.1"))
            self.add_part(name='violinI_div2', ly_name='violinIDivTwo', instrument=instrumenttools.Violin(instrument_name="Violin I 2", short_instrument_name="vln.I.2"))
            self.add_part(name='violinII_div1', ly_name='violinIIDivOne', instrument=instrumenttools.Violin(instrument_name="Violin II 1", short_instrument_name="vln.II.1"))
            self.add_part(name='violinII_div2', ly_name='violinIIDivTwo', instrument=instrumenttools.Violin(instrument_name="Violin II 2", short_instrument_name="vln.II.2"))
            self.add_part(name='viola_div1', ly_name='violaDivOne', instrument=instrumenttools.Viola(instrument_name="Viola 1", short_instrument_name="vla.1"), clef="alto")
            self.add_part(name='viola_div2', ly_name='violaDivTwo', instrument=instrumenttools.Viola(instrument_name="Viola 2", short_instrument_name="vla.2"), clef="alto")
            self.add_part(name='cello_div1', ly_name='celloDivOne', instrument=instrumenttools.Cello(instrument_name="Cello 1", short_instrument_name="vc.1"), clef="bass")
            self.add_part(name='cello_div2', ly_name='celloDivTwo', instrument=instrumenttools.Cello(instrument_name="Cello 2", short_instrument_name="vc.2"), clef="bass")
            self.add_part(name='bass_div1', ly_name='bassDivOne', instrument=instrumenttools.Contrabass(instrument_name="Bass 1", short_instrument_name="cb.1"), clef="bass")
            self.add_part(name='bass_div2', ly_name='bassDivTwo', instrument=instrumenttools.Contrabass(instrument_name="Bass 2", short_instrument_name="cb.2"), clef="bass")

        # self.add_staff_group(name="ref", part_names=["line_1","line_2","line_3","harmony_1","harmony_2","harmony_3"])
        # self.add_part(name='line_1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 1", short_instrument_name="ln.1"))
        # self.add_part(name='line_2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 2", short_instrument_name="ln.2"))
        # self.add_part(name='line_3', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 3", short_instrument_name="ln.3"))
        # self.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        # self.add_part(name='harmony_2', instrument=instrumenttools.Cello(instrument_name="Harmony 2", short_instrument_name="har.2"), clef="bass")
        # self.add_part(name='harmony_3', instrument=instrumenttools.Cello(instrument_name="Harmony 3", short_instrument_name="har.3"), clef="bass")

        # self.add_perc_part(name='dummy', instrument=instrumenttools.UntunedPercussion(instrument_name=".", short_instrument_name="."))



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

        if div_strings:
            self.material["part"]["strings"] = ["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2","cello_div1","cello_div2","bass_div1","bass_div2"]
        else:
            self.material["part"]["strings"] = ["violinI","violinII","viola","cello","bass"]
        self.material["part"]["winds"] = ["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2","bassoon1","bassoon2"]
        # putting instruments high to low (trumpets first) for ease of arranging
        self.material["part"]["brass"] = ["trumpet1","trumpet2","horn1","horn3","horn2","horn4","trombone1","trombone2","tuba"]

        self.material["part"]["pitched"] = self.material["part"]["winds"] + self.material["part"]["brass"] + self.material["part"]["strings"]

        self.material["brass_ranges_wide"] = [
            get_pitch_range("B4","C6"), #trumpet 1
            get_pitch_range("A4","A5"), #trumpet 2
            get_pitch_range("G4","G5"), #horn 1
            get_pitch_range("E4","E5"), #horn 3
            get_pitch_range("B2","B3"), #horn 2
            get_pitch_range("A2","A3"), #horn 4
            get_pitch_range("G2","G3"), #trombone 1
            get_pitch_range("E2","E3"), #trombone 2
            get_pitch_range("D1","E2"), #tuba
            ]
        self.material["brass_ranges_mid"] = [
            get_pitch_range("F4","G5"), #trumpet 1
            get_pitch_range("D4","E5"), #trumpet 2
            get_pitch_range("A3","B4"), #horn 1
            get_pitch_range("G3","A4"), #horn 3
            get_pitch_range("F3","G4"), #horn 2
            get_pitch_range("E3","F4"), #horn 4
            get_pitch_range("A2","B3"), #trombone 1
            get_pitch_range("G2","A3"), #trombone 2
            get_pitch_range("C2","E3"), #tuba
            ]
        self.material["wind_ranges_mid"] = [
            get_pitch_range("E5","F6"), #piccolo (flute 1)
            get_pitch_range("E5","F6"), #flute (2)
            get_pitch_range("G4","A5"), #oboe 1
            get_pitch_range("F4","G5"), #oboe 2
            get_pitch_range("E4","F5"), #oboe 3
            get_pitch_range("A4","B5"), #clarinet 1
            get_pitch_range("C4","D5"), #clarinet 2 (switch to bass?)  ... assume no
            get_pitch_range("D3","E4"), #bassoon 1
            get_pitch_range("G2","A3"), #bassoon 2
        ]
        self.material["wind_ranges_hi"] = [
            get_pitch_range("Bb5","Bb6"), #piccolo (flute 1)
            get_pitch_range("Bb5","Bb6"), #flute (2)
            get_pitch_range("F#5","F#6"), #oboe 1
            get_pitch_range("F#5","F#6"), #oboe 2
            get_pitch_range("F#5","F#6"), #oboe 3
            get_pitch_range("E5","E6"), #clarinet 1
            get_pitch_range("E5","E6"), #clarinet 2 (switch to bass?)  ... assume no
            get_pitch_range("Bb3","Bb4"), #bassoon 1
            get_pitch_range("Bb3","Bb4"), #bassoon 2
        ]
        if div_strings:
            self.material["string_ranges_mid"] = [
                get_pitch_range("D4","G5"), #violin I div 1
                get_pitch_range("C4","F5"), #violin I div 2
                get_pitch_range("D4","G5"), #violin II div 1
                get_pitch_range("C4","F5"), #violin II div 2
                get_pitch_range("G3","C5"), #viola div 1
                get_pitch_range("F3","B4"), #viola div 2
                get_pitch_range("G2","C4"), #cello div 1
                get_pitch_range("F2","B3"), #cello div 2
                get_pitch_range("A2","B3"), #bass div 1
                get_pitch_range("G2","A3"), #bass div 2
            ]
            self.material["string_ranges_low"] = [
                get_pitch_range("G3","G4"), #violin I div 1
                get_pitch_range("G3","G4"), #violin I div 2
                get_pitch_range("G3","G4"), #violin II div 1
                get_pitch_range("G3","G4"), #violin II div 2
                get_pitch_range("C3","C4"), #viola div 1
                get_pitch_range("C3","C4"), #viola div 2
                get_pitch_range("C2","C3"), #cello div 1
                get_pitch_range("C2","C3"), #cello div 2
                get_pitch_range("E2","E3"), #bass div 1
                get_pitch_range("E2","E3"), #bass div 2
            ]
        else:
            self.material["string_ranges_mid"] = [
                get_pitch_range("D4","G5"), #violin I 
                get_pitch_range("D4","G5"), #violin II 
                get_pitch_range("G3","C5"), #viola  
                get_pitch_range("G2","C4"), #cello  
                get_pitch_range("A2","B3"), #bass 
            ]
            self.material["string_ranges_low"] = [
                get_pitch_range("G3","G4"), #violin I 
                get_pitch_range("G3","G4"), #violin II 
                get_pitch_range("C3","C4"), #viola 
                get_pitch_range("C2","C3"), #cello 
                get_pitch_range("E2","E3"), #bass 
            ]
        self.material["all_ranges_mid"] = copy.deepcopy(
                    self.material["wind_ranges_mid"] + self.material["brass_ranges_mid"] + self.material["string_ranges_mid"])


        self.material["all_ranges_wide"] = copy.deepcopy(
                    self.material["wind_ranges_hi"] + self.material["brass_ranges_wide"] + self.material["string_ranges_low"])

        self.material["part"]["all"] = self.parts

        self.material["rhythm"]["otoshi"] = "c4^otoshi \\p\\< r4 c4 r8 c4 c4 c8 c8 c16 c16 c1:32\\mf\\> c16 c16 c8 c8 c4 c4 r8 c4 r4 c4\\mp "

    def add_cloud_pitches(self, cloud_type, cloud_name, material_name):
        cloud = cloud_type(name=cloud_name)
        self.material["pitch"][material_name] = cloud.cloud_pitches()

    def prepare_score(self):
        
        # self.fill_empty_parts_with_rests()

        for part_name in self.parts:
            if part_name in ["taiko1","taiko2","odaiko"] and len(self.parts[part_name])>0:
                text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
                attach(text_length_on, self.parts[part_name][0])
                dynamic_up = indicatortools.LilyPondCommand('dynamicUp', 'before')
                attach(dynamic_up, self.parts[part_name][0])



# TO DO... move this to calliope for general use!
class TokeiFree(TokeiBubble):
    def __init__(self, title="Tokei for Taiko and Orchestra", name="full-score-free", layout="orchestra", measures_durations=[(24,8)], 
        show_x_time=True, div_strings=False, tempo = ((1, 4), 120), rehearsal_mark=None):

        super().__init__(name=name, title=title, measures_durations=measures_durations, odd_meters=False, 
            div_strings=div_strings, tempo=tempo, rehearsal_mark=rehearsal_mark)

        self.free = True
        self.show_x_time = show_x_time

        for part_name in self.parts:
            free_measure = Measure(self.measures_durations[0])
            free_measure.automatically_adjust_time_signature = True
            self.parts[part_name].append(free_measure)

    def align_parts(self):

        print("aligning parts...")

        longest_part_length = 0
        longest_part = None
        for part_name, part in self.parts.items():
            part_length = part[0].time_signature.numerator / part[0].time_signature.denominator
            if part_length > longest_part_length:
                longest_part = part
                longest_part_length = part_length
            
        longest_measure_duration = (longest_part[0].time_signature.numerator, longest_part[0].time_signature.denominator)

        # not too elegant... don't know a better way to reset the time signatures through...
        for part_name, part in self.parts.items():
            m = part[0]
            part.remove(m)
            m2 = Measure(longest_measure_duration)
            m2.extend(m[:])
            accidental_command = indicatortools.LilyPondCommand("context Staff {#(set-accidental-style 'forget)}", "before")
            accidental_command2 = indicatortools.LilyPondCommand("context Staff {#(set-accidental-style 'modern)}", "after")
            attach(accidental_command, m2)
            attach(accidental_command2, m2)
            part.append(m2)
            scoretools.append_spacer_skips_to_underfull_measures_in_expr(part)

            m2.automatically_adjust_time_signature = True

            # if self.show_x_time:
            #     time_command = indicatortools.LilyPondCommand("""override 
            #                 Staff.TimeSignature #'stencil = #(lambda (grob)
            #                 (parenthesize-stencil (grob-interpret-markup grob 
            #                 (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
            #                 ) 0.1 0.4 0.4 0.1 ))""", "before")
            # else:
            #     time_command = indicatortools.LilyPondCommand("once \remove \"Time_signature_engraver\"", "before")
            #     # \override Staff.TimeSignature #'stencil = #'default
            # attach(time_command, m2)


        self.time_signatures = [TimeSignature(longest_measure_duration)]

    def x_time_signatures(self):
        for part_name, part in self.parts.items():
            if self.show_x_time:
                time_command = indicatortools.LilyPondCommand("""once \\override 
                            Staff.TimeSignature #'stencil = #(lambda (grob)
                            (parenthesize-stencil (grob-interpret-markup grob 
                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                            ) 0.1 0.4 0.4 0.1 ))""", "before")
            else:
                time_command = indicatortools.LilyPondCommand("once \\override Staff.TimeSignature.stencil = ##f", "before")
                # attach the time sig command before the free measure
                # attach the time sig command before the free measure
            # TO DO EVENTUALLY... THIS IS A VERY BAD HACK!
            try:
                if part.first_item is not None:
                    attach(time_command, part.first_item)  
                else:
                    attach(time_command, part[0])  
            except:
                print("Warning... couldn't attach X time to part " + part_name)

    def prepare_score(self):
        self.align_parts()
        self.x_time_signatures()
        



# --------------------------------------------------------------------------------------------

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
        # print(self.cloud.pitch_ranges[7])
        self.cloud.auto_move_into_ranges = True

        for app in self.tally_apps:
            self.cloud.add_tally_app(app)     

        # if cloud data not already loaded, get our pitch lines, and load them
        if not self.cloud.is_loaded:
            self.cloud.init_data(pitch_lines=self.pitches)
            if autorandom:
                self.cloud.randomize_all_columns() 
        
        # is this necessary?
        self.cloud.move_into_ranges()

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

    def show_cloud(self):
        self.cloud.show()

    def show(self):
        bubble = Bubble(project=PROJECT, title="Cloud Pitches (pre-tallying):", name="cloud-pitches-pre-material")
        for i, line in enumerate(self.pitches):
            bubble.add_part(name="line" + str(i), instrument=instrumenttools.Instrument(instrument_name="Line " + str(i), short_instrument_name=str(i)))
            line_music = scoretools.make_notes(line, durationtools.Duration(1,4))
            bubble.parts["line" + str(i)].extend(line_music)

        # TO DO... remove bar lines (or barlines every note?)
        # TO DO... show scores!

        bubble.show_pdf()