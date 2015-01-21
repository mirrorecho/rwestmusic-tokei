from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement

from calliope.tools import music_from_durations, transpose_pitches


# TO DO (TODAY... by 2:00!)
# - taiko material DOWN IN CODE (almost done)
# - - - GREAT PLAN: core material (pitches, rythms, maybe even instrument sets, etc.)
# - - - defined as properties... piecing it together defined as functions
# - class structure  (almost done)
# - able to change time signature
# - harmonic ideas DOWN IN CODE f(can view and play at piano)
# - orchestration ideas DOWN IN CODE
# - basic integration with cycles
# - - - dynamics for osc

# SOON (important for the work)
# - better ji osc arrangement
# - use make_music function?
# - move some of this code structure to calliope for general use (with other movements)

# (later...)
# - make kas X note-heads
# - get dividers to work
# - understand lilypond contexts!
# - make everything proportional while in working mode
# - show harmony #s above harmony reference lines for making it easier to arrange

# cycle_measures = [Measure(TimeSignature((9,8)), "c4. r4. r4.") for i in range(3)  ]

# music = scoretools.Context(cycle_measures)

# staff = Staff()
# staff.extend(music)
# attach(Articulation('staccato'), staff[0][0])

# show(staff)

# TO DO... text spacing for taiko ki-ai


# TO DO... something like this could be useful as a class for more generic uses...
class WadoMaterial():
    def __init__(self):

        self.arrangement = TokeiArrangement(layout="standard", name="wadokei-material", time_signature=TimeSignature((9,8)))
        self.arrangement.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        self.arrangement.add_part(name='harmony_2', instrument=instrumenttools.Violin(instrument_name="Harmony 2", short_instrument_name="har.2"))
        self.arrangement.add_part(name='harmony_3', instrument=instrumenttools.Cello(instrument_name="Harmony 3", short_instrument_name="har.3"), clef="bass")


        self.empty_measures = Container("R4. R4. R4. | " * 8)

        self.rest = "R4. R4. R4."

        self.phrases = {}
        self.phrases['rest']="r4._tsu r4. r4."
        self.phrases['lead_in']="r4._tsu          c4._don          c4._don"
        self.phrases['down_beat']="c4._don    r4.                   r4."
        self.phrases['up_ka']="r8_tsu[ r c8_don]         r8_tsu[ r c8_do]         c8_ka    c8_ra   c8_ka"
        self.phrases['up_groove']="r8_tsu[ r c8_don]         r8[ r c8_do]          c4_do           c8_ko"
        
        self.phrases['split_don']="c4_do  c8_don r8[ r8 c8_don] r8[ r8 c8_do]"
        self.phrases['split_ka']="c4_ka c8_don r8[ r8 c8_don] r8[ r8 c8_don] "

        # this is a 2-measure phrases...
        self.phrases['conduct']="c4._don   c4._don    r4._tsu   |    c4._ka  c4._don   r4._tsu"
        
        # not sure I'll use these...
        self.phrases['triples']="c8_do c_ko c_do "*3
        self.phrases['mostly_triples']="c4_do c8_ko " + "c8_do c_ko c_do "*2

        self.part_names = []

        self.ji_osc = ["A5","B5","A5"]

        self.ji_osc_durations = "c4.( c4.) c4.-- "

        self.pitch_stack_9ths = [0,14,28,42]

        # variant of this can be to anticipate the last upper harmony, then repeat it (so that it's similar to version 2 above the low G)
        self.harmonies_old = [ 
            [["B3","D4"],   ["C#4","E4"],   ["B3","D4"],    ["C#4","E4"],],
            ["B2",          "A2",           "G2",            "A2",],
            ]

        self.harmonies_old_2 = [ 
            [["D4","E4","B4","F#5"],    ["C#4","B4","C#5"], ["C#4","C#5","D#5"],    ["D4","A5"],    ["B4","E5"],    ["B3","D4"], ["C#4","E4"],  "D4","G4","A4","C#5",   ],
            [["C2","D3"],               ["A2","D3","B3"],   ["G1","A2","B3"],       "F2",           "G2",                                       "A2",                   ],
            ]

        # (for now, everything is in A... and will transpose as needed)
        # (the 3rd/4th pitch would be the important one here in most cases...)
        self.festival_pitches_1 = ["F#4","G4","A4","A4","E5","A4","E5","A4"]
        self.festival_pitches_1 = ["D#4","E4","F#4","F#4","C#5","F#4","C#5","F#4"]

        # note... this will typically start on a pickup
        self.festival_rhythm_1 = "c4( c8)    c4 -. c8( ~ c4. c4.)     c4.--->  c4.( c4.) "
        self.festival_rhythm_2 = "c4-- c8-.      c4. ~ c4. ~ c4. ~  "
        # this one would typically start on the 2nd beat
        self.festival_rhythm_3 = "c4.( c4.) |      c4. ~ c4. ~ c4. ~ "

        # TO DO... add downward lines.

        self.harmonies_night_1 = [
                # D# E festival swing goes here
            [["D#4","D#5"],             ["F#4","C#5"],  ["A4","C#5","F#5"], "C#6","F#5",    ["D#4","D#5"], ],
            [["C#2","C#3","B3"],        "A2",           ["F#2","A3"],                       ["A2","A3"]],
            ]

        self.harmonies_day = [
            [
            ]
        ]

        self.harmonies_old_2_transposed = transpose_pitches(self.harmonies_old_2, 2)

        self.harmonies_old_2_modulate = copy.deepcopy(self.harmonies_old_2_transposed)
        self.harmonies_old_2_modulate[0][0] = copy.deepcopy(self.harmonies_old_2[0][0])
        self.harmonies_old_2_modulate[1][0] = copy.deepcopy(self.harmonies_old_2[1][0])
        self.harmonies_old_2_modulate[0][1] = copy.deepcopy(self.harmonies_old_2[0][1])
        self.harmonies_old_2_modulate[1][1] = copy.deepcopy(self.harmonies_old_2[1][1])
        self.harmonies_old_2_modulate[0][2] = ["C#4","D#5","D#6"]
        self.harmonies_old_2_modulate[1][2] = ["A2","B3"]

        self.measure_note = "c2. r4. "

    def arrange_music(self, duration_sets, pitch_sets, part_names):

        for i, part_name in enumerate(part_names):
            pitches = pitch_sets[i % len(pitch_sets)]
            durations = duration_sets[i % len(duration_sets)]

            # TO DO... could pass along split durations here...
            self.arrangement.parts[part_name].extend(music_from_durations(durations=durations, pitches=pitches))

            for part_name in part_names:
                if part_name not in self.part_names:
                    self.part_names.append(part_name)


    def add_phrases(self, part_name, phrases):
        """
        adds phrases to a part in an arrangement... 
        """
        for phrase_name in phrases:
            self.arrangement.parts[part_name].extend(self.phrases[phrase_name])

        if part_name not in self.part_names:
            self.part_names.append(part_name)

    def show(self):
        self.prepare_material()
        self.arrangement.show_pdf(part_names=self.part_names)

    def fill_empty_parts_with_rests(self):
        for part_name in self.arrangement.parts:
            part = self.arrangement.parts[part_name]
            if len(part) == 0:
                part.extend(copy.deepcopy(self.empty_measures))

    def append_material(self, material):
        # making sure all parts from the new material are included in this material
        for part_name in material.part_names:
            if part_name not in self.part_names:
                self.part_names.append(part_name)
        
        # adding rests to any empty parts
        self.fill_empty_parts_with_rests()
        material.fill_empty_parts_with_rests()
        
        # appending the new material's arrangement
        self.arrangement.append_arrangement(material.arrangement)

    def make_music(self):
        # for inherited classes to call to append actual material
        pass

    def prepare_material(self):
        self.make_music() #  !!
        for part_name in self.part_names:
            text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
            attach(text_length_on, self.arrangement.parts[part_name][0])

    def add_relative_music(self, part_name):
        pass
