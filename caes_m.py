from abjad import *
import settings

from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *
from calliope.cloud.pitches import * 
from calliope.tools import get_pitch_range, get_pitch_number, transpose_pitches, get_pitch_ranges

from tokei import TokeiBubble, TokeiCloud

import copy


# to do... some of this stuff could be more generic...
class ForceData(TokeiCloud):
    def __init__(self, 
            start_pitch="A3", 
            *args,
            **kwargs
            ):
        self.start_pitch=get_pitch_number(start_pitch)
        super().__init__(*args, **kwargs)


    def force_by_index(self, indices):
        self.force_line_base = [self.force_pitches[i % len(self.force_pitches)] for i in indices]

    def prepare_pitches(self):
        self.divisions = 24
        self.force_pitches = ["bf", "cs'", "d'", "e'", "fs'", "g'"]
        if self.start_pitch != get_pitch_number("A3"):
            self.force_pitches = transpose_pitches(self.force_pitches, self.start_pitch-get_pitch_number("A3"))
        self.force_harmonic_stack = [0, 3, 7]
        self.ji_harmonic_stack = [0, 1, 7]
        # low harmonic stack is usually based on ji...
        self.low_harmonic_stack = transpose_pitches([0, 6, 7, 12], self.start_pitch -24)
    
    def get_base_lines(self):
        # can be overriden to do things like alternating between force pitches and other things
        self.force_line_base=[]
        # there's probably some more elegant way to do this...
        pitch_repeat_times = round( self.divisions / len(self.force_pitches) )
        for p in self.force_pitches:
            for r in range(pitch_repeat_times):
                self.force_line_base.append(p)
        self.ji_base = [self.ji_pitch] * self.divisions

    def get_pitches(self):
        self.get_base_lines()
        for i, transpose in enumerate(self.force_harmonic_stack):
            self.pitches.append(
                [get_pitch_number(pitch) + transpose for pitch in self.force_line_base]
                )
        for i, transpose in enumerate(self.ji_harmonic_stack):
            self.pitches.append(
                [get_pitch_number(pitch) + transpose for pitch in self.ji_base]
                )

    # used a lot for this movement...
    def get_pitch_ranges_strings_divisi(self, violins_range=None, violas_range=None, cellos_range=None, basses_range=None):
        self.pitch_ranges = []
        if violins_range is not None:
            self.pitch_ranges.append(copy.deepcopy(violins_range))
            self.pitch_ranges.append(copy.deepcopy(violins_range))
            self.pitch_ranges.append(copy.deepcopy(violins_range))
            self.pitch_ranges.append(copy.deepcopy(violins_range))
        if violas_range is not None:
            self.pitch_ranges.append(copy.deepcopy(violas_range))
            self.pitch_ranges.append(copy.deepcopy(violas_range))
        if cellos_range is not None:
            self.pitch_ranges.append(copy.deepcopy(cellos_range))
            self.pitch_ranges.append(copy.deepcopy(cellos_range))
        if basses_range is not None:
            self.pitch_ranges.append(copy.deepcopy(basses_range))
            self.pitch_ranges.append(copy.deepcopy(basses_range))

    def prepare_cloud(self):
        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-99), 
            TallyParallelIntervals(interval_ratings=[(0,-20), (7,-11)]), 
            TallyMelodicIntervals(interval_ratings=[(0, -20), (1,12), (2,22), (3,9), (4,9), (5,6), (6,-6), (7,-4), (10,-8), (11,-20), (12,-4)], over_incremental_multiplier=(12,-60)),
            TallyRepeatedJumps(),
        ]

# ----------------------------------------------------------------------------

class ForceUp4(ForceData):
    def __init__(self, *args, **kwargs):
        super().__init__(start_pitch="C#4", *args, **kwargs)

    def prepare_pitches(self):
        super().prepare_pitches()    
        self.divisions=10
        # self.force_harmonic_stack = [0, 3, 7] # (same as force data)
        self.ji_harmonic_stack = [-8, -1, 0]
        # low harmonic stack is usually based on ji...
        self.low_harmonic_stack = transpose_pitches([0, 7, 10, 12], self.start_pitch -24)


class ForceUp4BrassMelody(ForceUp4):
    def prepare_pitches(self):
        super().prepare_pitches()    
        self.force_pitches.insert(0, self.start_pitch)

    def get_base_lines(self):
        super().get_base_lines()
        self.force_by_index([0, 1, 2, 3,     4, 3, 4,  5, 6, 6])

    # moves upward slightly
    def get_pitch_ranges(self):
        self.pitch_ranges = get_pitch_ranges(
            num_lines=6, 
            times=10,
            high_intervals=[13], # may make the lines better...?
            low_pitches=("Eb4","D4","A3","F#3","A3","F#3"),
            increments=[[0,1,1]]
            )

# tumpets and 1,3 horns move up, 2,4 horns and trombones move down
class ForceUp4BrassMelodyWiden(ForceUp4BrassMelody):
    def prepare_pitches(self):
        super().prepare_pitches()    
        self.force_harmonic_stack.extend([0,7]) #add two lines for the trombones

    # widen!
    def get_pitch_ranges(self):
        self.pitch_ranges = get_pitch_ranges(
            num_lines=8, 
            times=10,
            high_intervals=[13], # may make the lines better...?
            low_pitches=("B3","G3","E3","F#3","E3","F#3","F#3","F#3"),
            increments=[[1,2],[1,2],[1,2],[-1,-2],[-1,2],[-1,-2],[-1,-2],[-1,-2]]
            )




class ForceMoveUp4(ForceData):
    def prepare_pitches(self):
        super().prepare_pitches()    
        self.force_pitches = ["a", "bf", "cs'", "d'", "cs'", "fs'","d'", "gs'","as'","b'"]
        if self.start_pitch != get_pitch_number("A3"):
            self.force_pitches = transpose_pitches(self.force_pitches, get_pitch_number("A3")-self.start_pitch)
        self.force_harmonic_stack = [0, 3, 7]
    
    def get_base_lines(self):
        super().get_base_lines()
        self.force_by_index([0,0,0, 1,1,1, 2,2, 3,3,   4,4,4, 5,5, 6,6,  7,7, 8,8, 9,9,9])
   
class ForceMoveUp4WindsDown(ForceMoveUp4):
    def prepare_pitches(self):
        super().prepare_pitches()    
        self.force_harmonic_stack = [0,0, 3,3, 7,7]

    def prepare_cloud(self):
        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-66), 
            # don't care some much about parralel intervals here...
            #TallyParallelIntervals(interval_ratings=[(0,-20), (7,-11)]), 
            TallyMelodicIntervals(
                    interval_ratings=[(0, -200), (1,40), (2,22), (3,9), (4,9), (5,6), (6,-6), (7,-4), (10,-8), (11,-20), (12,-4)], 
                    over_incremental_multiplier=(12,-60),
                    up_rating=-12,
                    down_rating=20,
                    ),
            TallyRepeatedJumps(),
        ]
    
    def get_pitch_ranges(self):
        self.pitch_ranges = get_pitch_ranges(
            num_lines=9, 
            times=24,
            low_pitches=["G5","G5","Eb5","Eb5","Eb5","Bb4","Bb4","Bb3","Bb3"],
            increments=[[0,-1,-1]]*7 + [[-1]]*2 #bassoons going down faster...
            )



class ForceData1(ForceData):

    def prepare_pitches(self):
        super().prepare_pitches()
        self.force_harmonic_stack.append(7)
        self.force_harmonic_stack.append(12)
        self.ji_harmonic_stack.insert(0,0)

    def get_base_lines(self):
        super().get_base_lines()
        self.force_line_base = []
        for p in self.force_pitches:
            self.force_line_base.append(self.ji_pitch)
            self.force_line_base.extend([p]*3)
        print(self.force_line_base)

    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        # flutes:
        self.force_pitch_ranges_high = [get_pitch_range(i+6, i+17) for i in range(24)]
        # clarinets:
        self.force_pitch_ranges_mid_high = [get_pitch_range(i, i+11) for i in range(24)]
        # oboes: (2 at a time here??)
        self.force_pitch_ranges_mid_low = [get_pitch_range(22-i, (22-i)+11) for i in range(24)]
        # bassoons:
        self.force_pitch_ranges_low = [get_pitch_range(-2-i, (-2-i)+11) for i in range(24)]
        self.pitch_ranges = []
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_high))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_high))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_high))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_high))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_low))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_low))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_mid_low))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_low))
        self.pitch_ranges.append(copy.deepcopy(self.force_pitch_ranges_low))


class ForceDataMelody(ForceData):
    def prepare_pitches(self):
        super().prepare_pitches()
        self.force_pitches.insert(0, self.ji_pitch-24)
        self.force_harmonic_stack.append(7)
        self.force_harmonic_stack.append(12)

    def get_base_lines(self):
        super().get_base_lines()
        self.force_by_index([0,0,0, 1,1,1, 2,2,2,2,   3,3,3, 4,4,4,4,  5,5,5,5, 6,6,6])


# these are a strings cloud... that stays in place in range and pitch material...
class ForceCloudStringsMelody(ForceDataMelody):
    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        violins_range = [pitchtools.PitchRange("[G3, G5]") for i in range(24)]
        violas_range = [pitchtools.PitchRange("[C3, C5]") for i in range(24)]
        cellos_range = [pitchtools.PitchRange("[F2, C4]") for i in range(24)]
        self.get_pitch_ranges_strings_divisi(violins_range=violins_range, violas_range=violas_range, cellos_range=cellos_range)

    # will probably used staccato... so don't care about repeated notes
    def prepare_cloud(self):
        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-99), 
            TallyMelodicIntervals(interval_ratings=[(0, 4), (1,12), (2,22), (3,9), (4,9), (5,6), (6,-6), (7,-4), (10,-8), (11,-20), (12,-4)], over_incremental_multiplier=(12,-60)),
            TallyRepeatedJumps(),
        ]

# similar to above pitch cloud, but ranges move up
class ForceCloudStringsMelodyUp(ForceCloudStringsMelody):
    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        violins_range = [get_pitch_range(i-5, i+6) for i in range(24)]
        violas_range = [get_pitch_range(i-12, i-1) for i in range(24)]
        cellos_range = [get_pitch_range(i-24, i-13) for i in range(24)]
        self.get_pitch_ranges_strings_divisi(violins_range=violins_range, violas_range=violas_range, cellos_range=cellos_range)

# similar to above, but ranges move up after half-way through
class ForceCloudStringsMelodyUpEnd(ForceCloudStringsMelody):
    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        violins_range = [get_pitch_range(-5, 6) for i in range(12)]
        violas_range = [get_pitch_range(-12, -1) for i in range(12)]
        cellos_range = [get_pitch_range(-24, -13) for i in range(12)]
        violins_range.extend([get_pitch_range((i*2)-5, (i*2)+6) for i in range(12)])
        violas_range.extend([get_pitch_range((i*2)-12, (i*2)-1) for i in range(12)])
        cellos_range.extend([get_pitch_range((i*2)-24, (i*2)-13) for i in range(12)])
        self.get_pitch_ranges_strings_divisi(violins_range=violins_range, violas_range=violas_range, cellos_range=cellos_range)

# similar to above, but ranges move down
class ForceCloudStringsMelodyDown(ForceCloudStringsMelody):
    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        violins_range = [get_pitch_range(19-i, 30-i) for i in range(24)]
        violas_range = [get_pitch_range(12-i, 23-i) for i in range(24)]
        cellos_range = [get_pitch_range(-i, 11-i) for i in range(24)]
        self.get_pitch_ranges_strings_divisi(violins_range=violins_range, violas_range=violas_range, cellos_range=cellos_range)

class CaesiumMaterial(TokeiBubble):
    def __init__(self, measures_durations=[(4,4)]*3, layout="orchestra", odd_meters=False, rehearsal_mark=None):

        super().__init__(name="caesium-material", measures_durations=measures_durations,layout=layout, 
            odd_meters=odd_meters, div_strings=True, rehearsal_mark=rehearsal_mark, tempo=((1, 4), 160),)
        #self.add_perc_part(name='gane', instrument=instrumenttools.UntunedPercussion(instrument_name="Gane", short_instrument_name="gn."))

        del self.parts["crotales"]

        self.material["rhythm"]["rest"] = "R1 "*3

        self.material["rhythm"]["doko_f"] = "c8_do[\\f  c8_ko] "+ "c8_do[  c8_ko] "*11

        self.material["rhythm"]["doko"] = "c8_do[  c8_ko] "*12

        self.material["rhythm"]["melody"]="""
                    c8_don[ r8 r8]   c8_don[ r8 r8]   c8_don[ r8]    c8_don[ r8]  
                    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]    
                    c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8] """

        self.material["rhythm"]["melody_hits"]="""
                    c8[-> c8 c8]   c8[-> c8 c8]   c8[-> c8]    c8[-> c8]  
                    c8[-> c8 c8]     c8[-> c8]        c8[-> c8]    
                    c8[-> c8]        c8[-> c8]     c8[-> c8 c8] """

        self.material["rhythm"]["taiko_ji"]="c8_do[ c_ko] " * 12 

        self.material["rhythm"]["taiko_2"]="""  
            c8_do[\\<  c8_ko]   c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko]  
            c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko]\\!
            r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don """

        self.material["rhythm"]["taiko_3"]="c8_ka[ c8_do  c8_don]   c8_ka[ c8_do  c8_don ] " * 4

        self.material["rhythm"]["smack"] = "c8-.->\\sfz r4 r2 R1 R1"

        self.material["rhythm"]["tsu_don"] = "R1 | R1 | r8[ c8->] r8[ c8->] r8[ c8->] r8[ c8->]"

        self.material["rhythm"]["hits_2_3"]="r2 r4 c4-.-> |  c4-.-> r4 r2 | R1 "

        self.material["rhythm"]["smack_perc"] = "c4-> r4 r2 R1 R1"

        self.material["rhythm"]["rolls"] = "c1:32 ~ c1:32 ~ c1:32 "

        self.material["rhythm"]["string_nasty_3"] = "c8[-> c] c8[ c]-> c8[ c]" * 4
        self.material["rhythm"]["string_nasty_2"] = "c8[-> c]  " * 12

        self.material["rhythm"]["swell"] = "R1 c1\\p\\< ~ c1\\!\\f "

        self.material["rhythm"]["swell_cymb"] = "R1 R1 c2:32\\pp\\< ~ c4.:32 c8->\\!\\f "

        self.material["rhythm"]["staccato"] ="c8-.[ c-.] "*12

        # just used on odd meters?
        self.material["rhythm"]["melody_push"] = """c4.---> c4.-- c8--[ r8] c8--[ r8]
                        c4.---> c8--[ r8] c8--[ r8]
                        c4---> c8--[ r8] c4.--
                        """

        self.material["pitch"]["dummy_cloud"] = ["x8^\"[CLOUD]\""] + ["x "]*23

        self.material["rhythm"]["holds"] = ["c1  |   c1  |   c1  "]

        self.force_start() # do we always need to run this??

        self.copy_material("rhythm","smack","hits")
        # TO DO... use overrides or specific flags to develop this swell... over time
        self.copy_material("pitch", "ji_stack", "swell_ma")

    def force_start(self):
        force = ForceData()

        # TO DO... functionize this...!
        self.material["pitch"]["force_stack"] = [[p + force.start_pitch] for p in force.force_harmonic_stack]

        self.material["pitch"]["force_row"] = force.force_pitches

        self.material["pitch"]["swell_melody"] = [
                        [force.ji_pitch - 24], 
                        [force.force_pitches[0]],
                        ]

        self.material["pitch"]["low_stack"] = [[p + force.start_pitch] for p in force.low_harmonic_stack]
        self.material["pitch"]["ji_stack"] = [[p + force.ji_pitch] for p in force.ji_harmonic_stack]

    def force_strings_melody(self, cloud_name="caes-cloud-strings-melody"):
        force = ForceCloudStringsMelody(name=cloud_name)

        self.material["pitch"]["accents"] = [[force.ji_pitch for d in range(force.divisions)]]+transpose_pitches(
                        [force.pitches[2], force.pitches[1], force.pitches[0] ], 12)

        self.material["pitch"]["force_stack"] = force.force_harmonic_stack
        self.material["pitch"]["force_row"] = force.force_pitches

        self.material["pitch"]["strings_cloud"] = force.cloud_pitches()
        
        if cloud_name == "caes-cloud-strings-melody":
            self.material["strings_cloud_respell"]=["flats","flats","sharps","sharps","flats","sharps","sharps","flats"]
        elif cloud_name == "caes-cloud-strings-melody-up":
            self.material["strings_cloud_respell"]=["sharps","flats","flats","sharps","sharps","flats","sharps","sharps"]
        else:
            self.material["strings_cloud_respell"]=[None]


    def force_winds_up4_down(self, cloud_name="caes-cloud-winds-up4-down"):
        force = ForceMoveUp4WindsDown(name=cloud_name)

        # self.material["pitch"]["accents"] = [[force.ji_pitch for d in range(force.divisions)]]+transpose_pitches(
        #                 [force.pitches[2], force.pitches[1], force.pitches[0] ], 12)

        self.material["pitch"]["force_stack"] = force.force_harmonic_stack
        self.material["pitch"]["force_row"] = force.force_pitches

        self.material["pitch"]["winds_cloud"] = force.cloud_pitches()
        
        if cloud_name == "caes-cloud-winds-up4-down":
            self.material["winds_cloud_respell"]=["flats","flats","sharps","sharps","flats","sharps","flats","sharps"]
        else:
            self.material["winds_cloud_respell"]=[None]

    def force_brass_4_melody(self, cloud_name="caes-cloud-highbrass-4-melody"):
        force = ForceUp4BrassMelody(name=cloud_name)

        # self.material["pitch"]["accents"] = [[force.ji_pitch for d in range(force.divisions)]]+transpose_pitches(
        #                 [force.pitches[2], force.pitches[1], force.pitches[0] ], 12)

        self.material["pitch"]["force_stack"] = [[p + force.start_pitch] for p in force.force_harmonic_stack]

        self.material["pitch"]["force_row"] = force.force_pitches

        self.material["pitch"]["brass_lines"] = force.cloud_pitches()
        
        if cloud_name == "caes-cloud-highbrass-4-melody":
            self.material["brass_lines_respell"]=["flats","sharps","flats","sharps","sharps","sharps"]
        elif cloud_name == "caes-cloud-brass-4-melody-widen":
            self.material["brass_lines_respell"]=["flats","flats","flats","sharps","flats","sharps","flats","sharps"]
        else:
            self.material["brass_lines_respell"]=[None]
        
        self.material["pitch"]["low_stack"] = [[p + force.start_pitch] for p in force.low_harmonic_stack]
        self.material["pitch"]["ji_stack"] = [[p + force.ji_pitch] for p in force.ji_harmonic_stack]


class CaesiumMaterialOdd(CaesiumMaterial):
    def __init__(self, measures_durations=[(10,8), (7,8), (7,8)], rehearsal_mark=None):
        super().__init__(measures_durations=measures_durations, odd_meters=True, rehearsal_mark=rehearsal_mark)

        rest_1 = "r4. r4. r4 r4  | "
        rest_2 = "r4. r4 r4 | "
        rest_3 = "r4 r4 r4. "

        self.material["rhythm"]["rest"] = rest_1 + rest_2 + rest_3

        self.material["rhythm"]["smack"] = "c8-.->[\\sfz r8 r]  r4. r4 r4 | " + rest_2 + rest_3
        self.material["rhythm"]["smack_perc"] = "c8->[\\sfz r8 r]  r4. r4 r4 | " + rest_2 + rest_3

        self.material["rhythm"]["swell"] = rest_1 + "c4.\\p\\< ~ c4 ~ c4 ~ | c4 ~ c4 ~ c4 c8-.->\\!\\f "

        self.material["rhythm"]["swell_cymb"] = rest_1 + rest_2 + "c4:32\\pp\\< ~ c4:32 ~ c4:32  c8->\\!\\f "

        self.material["rhythm"]["staccato"] =""""c8-.[ c-. c-.]   c-.[ c-. c-.]   c-.[ c-.]   c-.[ c-.] |
                    c-.[ c-. c-.]   c-.[ c-.]   c-.[ c-.] |
                    c-.[ c-.]   c-.[ c-.] c-.[ c-. c-.] |
                    """ 
        self.material["rhythm"]["rolls"] = """c4.:32 ~ c4.:32 ~ c4:32 ~ c4:32 ~ |
                    c4.:32 ~ c4:32 ~ c4:32 ~ |
                    c4:32 ~ c4:32 ~ c4.:32"""

        self.material["rhythm"]["holds"] = """c4. ~ c4. ~ c4 ~ c4  |  
                    c4. ~ c4 ~ c4  |  c4 ~ c4 ~ c4. """


        for r_name, m in self.material["rhythm"].items():
            if isinstance(m,str):
                self.material["rhythm"][r_name] = m.replace("|", " \\bar \";\" ")


class CaesiumMa(CaesiumMaterial):
    def __init__(self, rehearsal_mark=None):    
        super().__init__(measures_durations=[(8,8)], rehearsal_mark=rehearsal_mark)

    def arrange_ma(self):
        special_parts=["perc1", "dummy"]
        self.arrange_music(part_names=("perc1",), 
            rhythms=("s8^\"*dampen\" s4 r4\\fermata s4.",) )
        # special_parts=[]
        basic_parts = [p for p in self.parts if p not in special_parts]
        self.arrange_music(part_names=basic_parts, rhythms=["s4. r4\\fermata s4. "])
        # self.arrange_music(part_names=basic_parts, rhythms=["r4 r4 r4 r4 "])
        time_command = indicatortools.LilyPondCommand("once \\override Staff.TimeSignature.stencil = ##f", "before")
        for part_name, part in self.parts.items():
            if len(part) > 0:
                attach(time_command, part[0])
