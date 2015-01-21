from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement

from calliope.tools import music_from_durations, transpose_pitches

# TO DO (TODAY... )
# - wadokei printable for tomorrow
# - class structure of wado material moved for general use
# - some material for kairos taiko
# - list of ideas in preparation for taiko session tomorrow

# TOMORROW
# - buy headphones
# - studio setup (play keyboard)?
# - tech day?

# SOON (important for the work)
# - able to change time signature
# - harmonic ideas DOWN IN CODE f(can view and play at piano)
# - orchestration ideas DOWN IN CODE
# - basic integration with cycles
# - better ji osc arrangement
# - - - dynamics for ji osc
# - use make_music function?
# - move some of this code structure to calliope for general use (with other movements)
# - something to help taiko players here 3 beats per measure
# - auto cautionary naturals

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
class WadoMaterial(TokeiArrangement):
    def __init__(self):

        super().__init__(layout="standard", name="wadokei-material", time_signature=TimeSignature((9,8)))
        self.add_part(name='line_1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 1", short_instrument_name="ln.1"))
        self.add_part(name='line_2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Line 2", short_instrument_name="ln.2"))
        self.add_part(name='harmony_1', instrument=instrumenttools.Violin(instrument_name="Harmony 1", short_instrument_name="har.1"))
        self.add_part(name='harmony_2', instrument=instrumenttools.Violin(instrument_name="Harmony 2", short_instrument_name="har.2"))
        self.add_part(name='harmony_3', instrument=instrumenttools.Cello(instrument_name="Harmony 3", short_instrument_name="har.3"), clef="bass")

        self.empty_measures = Container("R4. R4. R4. | " * 8)

        self.rhythms["rest"] = "R4. R4. R4."
        self.rhythms["taiko_rest"] = "r4._tsu r4. r4."

        self.rhythms['taiko_lead_in']="r4._tsu          c4._don          c4._don"
        self.rhythms['taiko_down_beat']="c4._don    r4.                   r4."
        self.rhythms['taiko_up_ka']="r8_tsu[ r c8_don]         r8_tsu[ r c8_do]         c8_ka    c8_ra   c8_ka"
        self.rhythms['taiko_up_groove']="r8_tsu[ r c8_don]         r8[ r c8_do]          c4_do           c8_ko"
        
        self.rhythms['taiko_split_don']="c4_do  c8_don r8[ r8 c8_don] r8[ r8 c8_do]"
        self.rhythms['taiko_split_ka']="c4_ka c8_don r8[ r8 c8_don] r8[ r8 c8_don] "

        # this is a 2-measure phrases...
        self.rhythms['taiko_conduct']="c4._don   c4._don    r4._tsu   |    c4._ka  c4._don   r4._tsu"
        
        # not sure I'll use these...
        self.rhythms['taiko_triples']="c8_do c_ko c_do "*3
        self.rhythms['taiko_mostly_triples']="c4_do c8_ko " + "c8_do c_ko c_do "*2

        self.rhythms["ji_osc"] = "c4.( c4.) c4.-- "

        # note... this will typically start on a pickup
        self.rhythms["festival_a"] = "c4( c8)    c4 -. c8( ~ c4. c4.)     c4.--->  c4.( c4.) "
        self.rhythms["festival_b"] = "c4-- c8-.      c4. ~ c4. ~ c4. "
        # this one would typically start on the 2nd beat
        self.rhythms["festival_c"] = "c4.( c4.)        c4. ~ c4. ~ c4. "
        # this one would typically start on the downbeat
        self.rhythms["festival_d"] = "c4.( c4. c4.)       c4. ~ c4. ~ c4. "

        # self.part_names = []
        self.ji_osc = ["A5","B5","A5"]

        self.pitch_material["9ths"] = [0,14,28,42]

        self.pitch_material["ancient"] = [ 
            [["B3","D4"],   ["C#4","E4"],   ["B3","D4"],    ["C#4","E4"],],
            ["B2",          "A2",           "G2",            "A2",],
            ]


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
        self.festival_pitches_2 = ["F#4","G4","E4","A4","E5","A4","E5","A4"]



        # TO DO... add downward lines.

        self.harmonies_night_1 = [
                # D# E festival swing goes here
            [["D#4","D#5"],             ["F#4","C#5"],  ["A4","C#5","F#5"], "C#6","F#5",    ["D#4","D#5"], ],
            [["C#2","C#3","B3"],        "A2",           ["F#2","A3"],                       ["A2","A3"]],
            ]
        # TO DO... add some of the festival lines in here (see notes)
        self.harmonies_night_2 = [
            ["F#4", "F5",   "D#4",  ["B3","D#4","G#4"],     ["G#4","D#5","F5","F#5"],   ["G#4","D#5","F5","F#5"],   ["C#4","C#5"],  ["D#4","D#5"]],
            ["B2",          "B2",                           "G#2",                      ["C#3","B3"],               ["A2","A3"],]
        ]
        # TO DO... add some of the festival lines in here (see notes)
        self.harmonies_night_3 = [
            [["Eb4","Eb5"],     ["F4","F5"],    ["G4","A5"],    "C5",   "Eb4",      "D5",       ["F4","C5"]],
            [["Eb2","Eb3"],                     ["Eb2","F3"],           ["F2","Eb3"],           "A2"],
        ]


        # NOTE... can use transposition of night harmonies 2 and 3 
        # in order to move up to the end of the night music!

        # BUT... HARMONIES FOR 3 may not be dark enough?


        self.harmonies_day = [
            [],
            [],
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

    # def arrange_music(self, duration_sets, pitch_sets, part_names, respell_sets=[None], transpose_sets=[0]):

    #     for i, part_name in enumerate(part_names):
    #         pitches = pitch_sets[i % len(pitch_sets)]
    #         durations = duration_sets[i % len(duration_sets)]
    #         respell = respell_sets[i % len(respell_sets)]
    #         transpose=transpose_sets[i % len(transpose_sets)]

    #         # TO DO... could pass along split durations here...
    #         self.arrangement.parts[part_name].extend(music_from_durations(durations=durations, pitches=pitches, transpose=transpose, respell=respell))

    #         for part_name in part_names:
    #             if part_name not in self.part_names:
    #                 self.part_names.append(part_name)


    # def add_phrases(self, part_name, phrases):
    #     """
    #     adds phrases to a part in an arrangement... 
    #     """
    #     for phrase_name in phrases:
    #         self.arrangement.parts[part_name].extend(self.phrases[phrase_name])

    #     if part_name not in self.part_names:
    #         self.part_names.append(part_name)

    # def show(self):
    #     self.prepare_material()
    #     self.arrangement.show_pdf(part_names=self.part_names)

    # def append_material(self, material):
    #     # making sure all parts from the new material are included in this material
    #     for part_name in material.part_names:
    #         if part_name not in self.part_names:
    #             self.part_names.append(part_name)
        
    #     # adding rests to any empty parts
    #     self.fill_empty_parts_with_rests()
    #     material.fill_empty_parts_with_rests()
        
    #     # appending the new material's arrangement
    #     self.arrangement.append_arrangement(material.arrangement)

    # def make_music(self):
    #     # for inherited classes to call to append actual material
    #     pass

    def prepare_material(self):
        self.make_music() #  !!
        for part_name in self.part_names:
            text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
            attach(text_length_on, self.arrangement.parts[part_name][0])