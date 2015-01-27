from abjad import *
import settings

# any way to avoid this sys path part??

#TO DO
# - muffle taiko during ma?
# - EVERYONE DIFFERENT (at least one spot!!!)
# - my copyright

from tokei import TokeiBubble, TokeiCloud

# need to import all of this?
from calliope.work import Project, Bubble
from calliope.cycles.loop import CycleLoop
from calliope.cycles.cells import IntervalRepeatCell
from calliope.cycles.transform import *
from calliope.cloud.pitches import * 
from calliope.tools import get_pitch_range, get_pitch_number, music_from_durations, pitches_from_intervals, get_pitch_ranges, transpose_pitches

import copy


# -------------------------------------------------------------
# thought... just inherit from cloud???
class WaterCloudBase(TokeiCloud):
    def __init__(self, 
            start_pitch=4, 
            *args,
            **kwargs
            ):
        self.start_pitch=get_pitch_number(start_pitch)
        super().__init__(*args, **kwargs)

    def prepare_pitches(self):
        self.next_interval=1
        self.intervals=[0, -2, -2, -1, -2]
        self.counter_intervals=[4, 3, 5, -2, -5]
        self.stream_intervals=[0, 2, -2, -2, -1, 0, 3, -5, 0, 0, -2, 0, 5, 0, -7, 0, 12, 0, 0, -5, 0, 0, 0, 0]
        self.double_interval=7
        self.pitches = [[],[],[],[]]

    def get_pitches(self):
        self.cell=IntervalRepeatCell(intervals=self.intervals, start_pitch=self.start_pitch, pitch_range=self.pitch_ranges[0][0])
        self.counter_cell=IntervalRepeatCell(intervals=self.counter_intervals, start_pitch=self.start_pitch, pitch_range=self.pitch_ranges[0][0])
        for i in range(6):
            self.pitches[0].extend(self.cell.pitches)
            self.pitches[2].extend(self.counter_cell.pitches)
            self.cell.next()
            self.counter_cell.next()
        self.pitches[1]=[p + self.double_interval for p in self.pitches[0]]
        self.pitches[3]=[p + self.double_interval for p in self.pitches[2]]
        self.stream_pitches = pitches_from_intervals(intervals=self.stream_intervals,start_pitch=self.start_pitch)

    def add_ref_row(self, times=1):
        self.add_single_pitch_row(self.start_pitch)

    def add_stream(self, times=1, offset=0):
        for t in range(times):
            self.pitches.append(
                [self.stream_pitches[(i-offset) % len(self.stream_pitches)] for i in range(len(self.stream_pitches)) ]
                )
    def next(self, times=1):
        self.start_pitch += (self.next_interval * times)

class WaterCloudWindsUp(WaterCloudBase):
    def prepare_cloud(self):
        self.duplicate_row(0)
        self.duplicate_row(2)
        self.add_ji_row()

        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-99), 
            TallyParallelIntervals(interval_ratings=[(0,-20), (7,-11)]), 
            TallyMelodicIntervals(
                    interval_ratings=[(0, -80), (1,12), (2,22), (3,9), (4,9), (5,6), (6,-6), (7,-4), (10,-8), (11,-20), (12,-4)], 
                    over_incremental_multiplier=(12,-60),
                    up_rating=20,
                    down_rating=-12,
                    ),
            TallyRepeatedJumps(),
        ]

    def get_pitch_ranges(self):
        self.pitch_ranges = get_pitch_ranges(
            num_lines=len(self.pitches), 
            times=24,
            low_pitches=[5,5,2,2,2,-5,-5],
            increments=[[0,1]]
            )

class WaterCloudWindsDown(WaterCloudBase):
    def prepare_cloud(self):
        self.duplicate_row(0)
        self.duplicate_row(2)
        self.add_ji_row()

        self.tally_apps = [
            TallyCircleOfFifthsRange(over_range_multiplier=-99), 
            TallyParallelIntervals(interval_ratings=[(0,-20), (7,-11)]), 
            TallyMelodicIntervals(
                    interval_ratings=[(0, -80), (1,12), (2,22), (3,9), (4,9), (5,6), (6,-6), (7,-4), (10,-8), (11,-20), (12,-4)], 
                    over_incremental_multiplier=(12,-60),
                    up_rating=-12,
                    down_rating=20,
                    ),
            TallyRepeatedJumps(),
        ]
    
    def get_pitch_ranges(self):
        self.pitch_ranges = get_pitch_ranges(
            num_lines=len(self.pitches), 
            times=24,
            low_pitches=["G5","G5","Eb5","Eb5","Eb5","Bb4","Bb4"],
            increments=[[0,-1,-1]]
            )



class WaterCloudStringsUp(WaterCloudBase):
    pass

class WaterCloudStringsEcho(WaterCloudBase):
    pass

class WaterCloudWindsEcho(WaterCloudBase):
    pass

class Stream():
    def __init__(self, ref_pitch="E5"):
        #                         0     1    2    3     4    5    6    7    8    9    10   11
        self.relative_pitches = ["E5","F#5","E5","D5","C#5","E5","B4","A4","D5","G4","G5","D5"]
        #self.relative_pitches = [0,    2,    0,   -2,  -3,    0,  -5, -7,  -2,   -9,  3,  -2]
        self.ref_pitch = get_pitch_number(ref_pitch)
        self.transpose = self.ref_pitch - get_pitch_number(self.relative_pitches[0])
        self.next_ref_pitch = self.ref_pitch + 1
        # maybe durations works better back as a string?
        #              0     1   2    3    4    5      6          7      8      9      10      11 
        self.rhythms=["c8(","c","c)","c(","c4)","c8(","c8 ~ c4)","c4--","c4--","c4--","c4.--","c8-- ~ c4 r4"]
        self.split_durations = [durationtools.Duration(4,4) for i in range(3)]

    def remove(self, indices=(0,)):
        self.relative_pitches=[p for i,p in enumerate(self.relative_pitches) if i not in indices]
        self.rhythms=[r for i,r in enumerate(self.rhythms) if i not in indices]

    def pitches(self, offset=0):
        return transpose_pitches(self.relative_pitches[offset:], self.transpose)

    def rhythm(self, offset=0, rhythm_end=None):
        return " ".join(self.rhythms[offset:rhythm_end])

# this one descends down the whole way...
class StreamHint1(Stream):
    def __init__(self, ref_pitch="E5"):
        super().__init__(ref_pitch=ref_pitch)
        self.remove((2,3,5,8,10))
        self.rhythms=["c8(","c4.","c2)","c4(","c2)","c4( ~ c4.","c8 ~ c4) r4"]

        # NEED TO FIX...
        # self.relative_pitches = [p if i in (0,3,4,6,7,9,10) for i, p in enumerate(self.relative_pitches)]
        # self.durations = "r4 c8( c c4 c4) r4 c2( c4) c2. r4"

# STILL WORKING ON THIS...
class StreamHint2(StreamHint1):
    def __init__(self, ref_pitch="E5"):
        super.__init__(ref_pitch=ref_pitch)
        self.relative_pitches[4] += 12
        #self.relative_pitches = [p if i in (0,1,3,4,6,7,9,10) for i, p in enumerate(self.relative_pitches)]
        self.durations = "c8( c4) c( c4) c8( c4.) c4-- c4-- c4-- c4.-- c4.-- r4"

class ClepsydraMaterial(TokeiBubble):
    def __init__(self, time_signature=TimeSignature((4,4)), measures_durations=[(4,4)]*3, layout="orchestra"):

        super().__init__(name="clepsydra-material", time_signature=time_signature, measures_durations=measures_durations,layout=layout, )
        self.add_part(name='line_1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 1", short_instrument_name="ln.1"))
        self.add_part(name='line_2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 2", short_instrument_name="ln.2"))
        self.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        self.add_part(name='harmony_2', instrument=instrumenttools.Violin(instrument_name="Harmony 2", short_instrument_name="har.2"))
        self.add_part(name='harmony_3', instrument=instrumenttools.Cello(instrument_name="Harmony 3", short_instrument_name="har.3"), clef="bass")

        self.remove(self.parts["odaiko"])
        del self.parts["odaiko"]

        self.empty_measures = Container("R1 " * 3)

        self.stream = Stream()

        # note, this would typically start on the pickup before a strong beat (before ichi or san)
        self.material["rhythm"]["taiko_cresc"] = "c8\\p\\<_do c_do[ c_ko] c_do[ c\\mf->_don] "
        self.material["rhythm"]["taiko_melody_1"] = "r4 r8 " + self.material["rhythm"]["taiko_cresc"] + "r8 c_don r c_don  r c_do c4->_don |  c8_da\\p\\< c_da    r c_da    c_da c_da    r c_da"
        self.material["rhythm"]["taiko_melody_2"] = "c8_da[ c_da]\\mp   c_ka[\\p c_ka]    r8  c_ka   r8  c_ka   |  c4_don\\mf   r8 c_don r8 c_don r8 " + self.material["rhythm"]["taiko_cresc"] + "r2"

        self.material["rhythm"]["taiko_do_don"] = "c8->_do c8->_don r4 r4 c8->_do c8->_do "

        self.material["rhythm"]["taiko_intro_1"] = "c8_do[ c_ko] "*8 + self.material["rhythm"]["taiko_do_don"]
        self.material["rhythm"]["taiko_intro_2"] = "c8_do c_don r4^KATA r2 | R1 | c8_do c_don r4^KATA r2 "

        self.material["rhythm"]["steady_8ths"] = "c8 "*24
        
        self.material["rhythm"]["8ths_slured"] = "c8( c c c) "*6
        self.material["rhythm"]["8ths_slured_mf"] = "c8(\\mf c c c) " + "c8( c c c) "*5

        self.material["rhythm"]["last_measure_cresc"] = "R1 R1 c2.\\pp\\< ~ c4\\! "
        # self.material["rhythm"]["last_measure_cresc"] = "R1 R1 c1\\mp\\< \\mf\\! "

        self.material["rhythm"]["8ths_tied_cresc"] = """c8\\p( c c c) c( c c c) | 
                    c(\\< c c c) c( c c c) | c( c c c) c(\\mf\\! c c c) |
                    """

        self.material["rhythm"]["dotted"]="c4. c8 ~ c4 c4 ~ c8 c4. "*2


        self.material["rhythm"]["measure_note"] = "c1 "

    def arrange_stream(self, part_name, stream_type=Stream, pitch_offset=0, rhythm_offset=0, rhythm_end=None):
        stream = stream_type(ref_pitch=self.material["pitch"]["ref"][0])

        self.arrange_music(
                    part_names=[part_name],
                    rhythms=[stream.rhythm(offset=rhythm_offset, rhythm_end=rhythm_end)],
                    pitches=[stream.pitches(offset=pitch_offset)],
                    )


# w = WaterCloudWindsDown(name="clep-cloud-winds-down", start_pitch="F#5")
# w.tally_loop()
#w.cloud.show()


# c = ClepsydraMaterial()
# c.add_taiko_melody()
#c.show_pdf()


# taiko_music = TaikoMaterial()
# taiko_music.line = TaikoIntro().get_music_string() + (TaikoMelody().get_music_string()) * 2

# taiko_music.show()
