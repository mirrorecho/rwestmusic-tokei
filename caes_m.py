from abjad import *
import settings

from calliope.cycles.loop import CycleLoop
from calliope.cycles.transform import *
from calliope.cloud.pitches import * 
from calliope.tools import get_pitch_range, get_pitch_number, transpose_pitches

from tokei import TokeiBubble, TokeiCloud

import copy


# ----------------------------------------------------------------------------
# TO DO - TAKE THIS OUT OF caesium.py?

# def joinalter(it, delimiter):
#     for x in it:
#         yield delimiter
#         yield x

# def joinalter_2(it, delimiter):
#     for x in it:
#         yield delimiter
#         yield x
#         yield x
#         yield x


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
            self.force_pitches = transpose_pitches(self.force_pitches, get_pitch_number("A3")-self.start_pitch)
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

class ForceCloud1(ForceData):

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

# these are a strings cloud... that stays in place in range and pitch material...
class ForceCloud2(ForceData):
    def prepare_pitches(self):
        super().prepare_pitches()
        self.force_pitches.insert(0, self.ji_pitch)
        self.force_harmonic_stack.append(7)
        self.force_harmonic_stack.append(12)

    def get_base_lines(self):
        super().get_base_lines()
        self.force_by_index([0,0,0, 1,1,1, 2,2,2,2,   3,3,3, 4,4,4,4,  5,5,5,5, 6,6,6])
    
    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        violins_range = [pitchtools.PitchRange("[G3, G5]") for i in range(24)]
        violas_range = [pitchtools.PitchRange("[C3, C5]") for i in range(24)]
        cellos_range = [pitchtools.PitchRange("[F2, C4]") for i in range(24)]
        self.get_pitch_ranges_strings_divisi(violins_range=violins_range, violas_range=violas_range, cellos_range=cellos_range)

# similar to above pitch cloud, but ranges move up
class ForceCloud2A(ForceCloud2):
    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        violins_range = [get_pitch_range(i-5, i+6) for i in range(24)]
        violas_range = [get_pitch_range(i-12, i-1) for i in range(24)]
        cellos_range = [get_pitch_range(i-24, i-13) for i in range(24)]
        self.get_pitch_ranges_strings_divisi(violins_range=violins_range, violas_range=violas_range, cellos_range=cellos_range)

# similar to above, but ranges move up after half-way through
class ForceCloud2B(ForceCloud2):
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
class ForceCloud2C(ForceCloud2):
    # this could be better handled with new pitch range functions...
    def get_pitch_ranges(self):
        violins_range = [get_pitch_range(19-i, 30-i) for i in range(24)]
        violas_range = [get_pitch_range(12-i, 23-i) for i in range(24)]
        cellos_range = [get_pitch_range(-i, 11-i) for i in range(24)]
        self.get_pitch_ranges_strings_divisi(violins_range=violins_range, violas_range=violas_range, cellos_range=cellos_range)

class CaesiumMaterial(TokeiBubble):
    def __init__(self, measures_durations=[(4,4)]*3, layout="orchestra", odd_meters=False):

        super().__init__(name="caesium-material", measures_durations=measures_durations,layout=layout, odd_meters=odd_meters, div_strings=True)
        #self.add_perc_part(name='gane', instrument=instrumenttools.UntunedPercussion(instrument_name="Gane", short_instrument_name="gn."))

        self.force_data = ForceData()

        # TO DO... functionize this...!
        self.material["pitch"]["force_stack"] = self.force_data.force_harmonic_stack

        self.material["pitch"]["force_row"] = self.force_data.force_pitches

        self.material["pitch"]["swell_stack"] = [
                        [self.force_data.ji_pitch - 24], 
                        [self.force_data.force_pitches[0]],
                        ]

        self.material["pitch"]["low_stack"] = [[p] for p in self.force_data.low_harmonic_stack]


        self.material["rhythm"]["doko_f"] = "c8_do[\\f  c8_ko] "+ "c8_do[  c8_ko] "*11

        self.material["rhythm"]["doko"] = "c8_do[  c8_ko] "*12

        self.material["rhythm"]["melody"]="""
                    c8_don[ r8 r8]   c8_don[ r8 r8]   c8_don[ r8]    c8_don[ r8]  
                    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]    
                    c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8] """

        self.material["rhythm"]["taiko_ji"]="c8_do c_ko " * 12 

        self.material["rhythm"]["taiko_1"]="""  
            c8_do[\\<  c8_ko]   c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko]  
            c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko]\\!
            r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don """

        self.material["rhythm"]["taiko_2"]="c8_ka[ c8_do  c8_don]   c8_ka[ c8_do  c8_don ] " * 4

        self.material["rhythm"]["smack"] = "c8-.->\\sfz r4 r2 R1 R1"

        self.material["rhythm"]["smack_perc"] = "c8->\\sfz r4 r2 R1 R1"

        self.material["rhythm"]["string_nasty_3"] = "c8[-> c] c8[ c]-> c8[ c]" * 4
        self.material["rhythm"]["string_nasty_2"] = "c8[-> c]  " * 12

        self.material["rhythm"]["swell"] = "R1 c1\\mp\\< ~ c1\\!\\mf "

        self.material["rhythm"]["swell_cymb"] = "R1 R1 c2:32\\pp\\< ~ c4.:32 c8->\\!\\f "

        self.material["pitch"]["dummy_cloud"] = ["x8^\"[CLOUD]\""] + ["x "]*23


class CaesiumMaterialOdd(CaesiumMaterial):
    def __init__(self, measures_durations=[(10,8), (7,8), (7,8)]):
        super().__init__(measures_durations=measures_durations, odd_meters=True)

        rest_1 = "r4. r4. r4 r4 "
        rest_2 = "r4. r4 r4 "
        rest_3 = "r4 r4 r4. "

        self.material["rhythm"]["smack"] = "c8-.->[\\sfz r8 r]  r4. r4 r4 " + rest_2 + rest_3
        self.material["rhythm"]["smack_perc"] = "c8-.->[\\sfz r8 r]  r4. r4 r4 " + rest_2 + rest_3

        self.material["rhythm"]["swell"] = rest_1 + "c4.\\mp\\< ~ c4 ~ c4 ~ c4 ~ c4 ~ c4.\\!\\mf "

        self.material["rhythm"]["swell_cymb"] = rest_1 + rest_2 + "c4:32\\pp\\< ~ c4:32 ~ c4:32  c8->\\!\\f "

class CaesiumMa(CaesiumMaterial):
    def __init__(self):    
        super().__init__(measures_durations=[(8,8)])

    def arrange_ma(self):
        basic_parts = [p for p in self.parts if p not in ("perc1","dummy")]
        self.arrange_music(part_names=basic_parts, rhythms=["s4. r4\\fermata s4."])
        self.arrange_music(part_names=("perc1",), 
            rhythms=("s8^\"*dampen\" s4 r4\\fermata s4.",) )

