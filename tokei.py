from abjad import *
import settings

from calliope.work import Bubble, Project
from calliope.cloud.pitches import CloudPitches, TallyCircleOfFifthsRange, TallyMelodicIntervals, TallyRepeatedJumps
from calliope.tools import get_pitch_number, attach_commands

PROJECT = Project(name="rwestmusic-tokei")
JI_PITCH = get_pitch_number("A5")

# TO DO... still think it would be better to inherit from CloudPitches...
class TokeiBubble(Bubble):

    #  use **args here?
    def __init__(self, layout="orchestra", name="full-score", measures_durations=[(4,4)]*3, odd_meters=False, div_strings=False):

        super().__init__(title="Tokei for Taiko and Orchestra", name=name, project=PROJECT, layout=layout, measures_durations=measures_durations, odd_meters=odd_meters)

        self.add_staff_group(name="winds", part_names=["flute1","flute2","oboe1","oboe2","oboe3","clarinet1","clarinet2","bassoon1","bassoon2"])
        self.add_part(name='flute1', instrument=instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
        self.add_part(name='flute2', instrument=instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))
        self.add_part(name='oboe1', instrument=instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
        self.add_part(name='oboe2', instrument=instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))
        self.add_part(name='oboe3', instrument=instrumenttools.Oboe(instrument_name="Oboe 3", short_instrument_name="ob.3"))
        self.add_part(name='clarinet1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 1 in Bb", short_instrument_name="cl.1"))
        self.add_part(name='clarinet2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 2 in Bb", short_instrument_name="cl.2"))
        self.add_part(name='bassoon1', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 1", short_instrument_name="bsn.1"), clef="bass")
        self.add_part(name='bassoon2', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 2", short_instrument_name="bsn.2"), clef="bass")

        self.add_staff_group(name="brass", part_names=["horn1","horn2","horn3","horn4","trumpet1","trumpet2","trombone1","trombone2","tuba"])
        self.add_part(name='horn1', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 1", short_instrument_name="hn.1"))
        self.add_part(name='horn2', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 2", short_instrument_name="hn.2"))
        self.add_part(name='horn3', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 3", short_instrument_name="hn.3"))
        self.add_part(name='horn4', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 4", short_instrument_name="hn.4"))
        self.add_part(name='trumpet1', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 1", short_instrument_name="tpt.1"))
        self.add_part(name='trumpet2', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 2", short_instrument_name="tpt.2"))
        self.add_part(name='trombone1', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 1", short_instrument_name="tbn.1"), clef="bass")
        self.add_part(name='trombone2', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 2", short_instrument_name="tbn.2"), clef="bass")
        self.add_part(name='tuba', instrument=instrumenttools.Tuba(instrument_name="Tuba", short_instrument_name="tba"), clef="bass")

        # TO DO EVENTUALLY... shouldn't always add crotales.... and it shouldn't be a flute
        self.add_staff_group(name="perc", part_names=["crotales","perc1","perc2","timpani"])
        self.add_part(name='crotales', instrument=instrumenttools.Instrument(instrument_name="Crotales", short_instrument_name="cro."))
        self.add_perc_part(name='perc1', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 1", short_instrument_name="perc.1"))
        self.add_perc_part(name='perc2', instrument=instrumenttools.UntunedPercussion(instrument_name="Percussion 2", short_instrument_name="perc.2"))
        self.add_part(name='timpani', instrument=instrumenttools.Instrument(instrument_name="Timpani", short_instrument_name="timp", allowable_clefs=("bass", ),
                        pitch_range="[D2, A3]", sounding_pitch_of_written_middle_c="C4"), clef="bass")
        #self.add_piano_staff_part(name='harp', instrument=instrumenttools.Harp(instrument_name="Harp", short_instrument_name="hp"))
       
        self.add_staff_group(name="taiko", part_names=["shime","odaiko","taiko1","taiko2"])
        self.add_perc_part(name='shime', instrument=instrumenttools.UntunedPercussion(instrument_name="Shime", short_instrument_name="sh."))
        #self.add_perc_part(name='gane', instrument=instrumenttools.UntunedPercussion(instrument_name="Gane", short_instrument_name="gn."))
        self.add_perc_part(name='odaiko', instrument=instrumenttools.UntunedPercussion(instrument_name="Odaiko", short_instrument_name="o.d."))
        self.add_perc_part(name='taiko1', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 1", short_instrument_name="t.1"))
        self.add_perc_part(name='taiko2', instrument=instrumenttools.UntunedPercussion(instrument_name="Taiko 2 ", short_instrument_name="t.2."))
        
        if not div_strings:
            self.add_staff_group(name="strings", part_names=["violinI","violinII","viola","cello","bass"])
            self.add_part(name='violinI', instrument=instrumenttools.Violin(instrument_name="Violin I", short_instrument_name="vln.I"))
            self.add_part(name='violinII', instrument=instrumenttools.Violin(instrument_name="Violin II", short_instrument_name="vln.II"))
            self.add_part(name='viola', instrument=instrumenttools.Viola(instrument_name="Viola", short_instrument_name="vla"))
            self.add_part(name='cello', instrument=instrumenttools.Cello(instrument_name="Cello", short_instrument_name="vc."), clef="bass")
            self.add_part(name='bass', instrument=instrumenttools.Contrabass(instrument_name="Bass", short_instrument_name="cb."), clef="bass")
        else:
            self.add_staff_group(name="strings", part_names=["violinI_div1","violinI_div2","violinII_div1","violinII_div2","viola_div1","viola_div2","cello_div1","cello_div2","bass_div1","bass_div2"])
            self.add_part(name='violinI_div1', instrument=instrumenttools.Violin(instrument_name="Violin I 1", short_instrument_name="vln.I.1"))
            self.add_part(name='violinI_div2', instrument=instrumenttools.Violin(instrument_name="Violin I 2", short_instrument_name="vln.I.2"))
            self.add_part(name='violinII_div1', instrument=instrumenttools.Violin(instrument_name="Violin II 1", short_instrument_name="vln.II.1"))
            self.add_part(name='violinII_div2', instrument=instrumenttools.Violin(instrument_name="Violin II 2", short_instrument_name="vln.II.2"))
            self.add_part(name='viola_div1', instrument=instrumenttools.Viola(instrument_name="Viola 1", short_instrument_name="vla.1"))
            self.add_part(name='viola_div2', instrument=instrumenttools.Viola(instrument_name="Viola 2", short_instrument_name="vla.2"))
            self.add_part(name='cello_div1', instrument=instrumenttools.Cello(instrument_name="Cello 1", short_instrument_name="vc.1"), clef="bass")
            self.add_part(name='cello_div2', instrument=instrumenttools.Cello(instrument_name="Cello 2", short_instrument_name="vc.2"), clef="bass")
            self.add_part(name='bass_div1', instrument=instrumenttools.Contrabass(instrument_name="Bass 1", short_instrument_name="cb.1"), clef="bass")
            self.add_part(name='bass_div2', instrument=instrumenttools.Contrabass(instrument_name="Bass 2", short_instrument_name="cb.2"), clef="bass")

        self.add_staff_group(name="ref", part_names=["line_1","line_2","line_3","harmony_1","harmony_2","harmony_3"])
        self.add_part(name='line_1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 1", short_instrument_name="ln.1"))
        self.add_part(name='line_2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 2", short_instrument_name="ln.2"))
        self.add_part(name='line_3', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 3", short_instrument_name="ln.3"))
        self.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        self.add_part(name='harmony_2', instrument=instrumenttools.Cello(instrument_name="Harmony 2", short_instrument_name="har.2"), clef="bass")
        self.add_part(name='harmony_3', instrument=instrumenttools.Cello(instrument_name="Harmony 3", short_instrument_name="har.3"), clef="bass")

        self.add_perc_part(name='dummy', instrument=instrumenttools.UntunedPercussion(instrument_name=".", short_instrument_name="."))



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
        
        # self.fill_empty_parts_with_rests()

        for part_name in self.parts:
            if part_name in ["taiko1","taiko2","odaiko"] and len(self.parts[part_name])>0:
                text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
                attach(text_length_on, self.parts[part_name][0])
                dynamic_up = indicatortools.LilyPondCommand('dynamicUp', 'before')
                attach(dynamic_up, self.parts[part_name][0])



# TO DO... move this to calliope for general use!
class TokeiFree(TokeiBubble):
    def __init__(self, name="full-score-free", layout="orchestra", measures_durations=[(24,8)], 
        show_x_time=True):

        super().__init__(name=name, measures_durations=measures_durations, odd_meters=False)

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
        self.pitches = [[]] # this will be a list of lists
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