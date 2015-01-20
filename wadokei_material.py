from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement

from calliope.tools import music_from_durations, transpose_pitches

print("")
print("---------------------------------------------------------------------------")
print("")

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

        self.harmonies_night = [
            [["D#4","D#5"], "D#4","E4"],    "F#4","C#5"
            [["C#2","C#3","B3"],            "A2"],
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

class Intro(WadoMaterial):
    def __init__(self):
        super().__init__()

        self.cresc_blow_durations = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.cresc_blow_durations_2 = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

        self.clarinet_blow_durations = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.clarinet_blow_durations_2 = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

    def add_taiko(self, part_name="taiko1"):
        self.add_phrases(part_name, [
            "down_beat",
            "rest",
            "down_beat",
            "rest",
            "lead_in",
            "down_beat",
            "down_beat",
            "rest",
            ])

    def add_harmony_ref(self):
        self.arrange_music(
                    duration_sets= [self.measure_note * 4 ],
                    pitch_sets= self.harmonies_old, 
                    part_names= ["harmony_1","harmony_3"],
                    )

    def add_harmony_ref_2(self, pitch_sets_name="harmonies_old_2"):
        self.arrange_music(
                    duration_sets= ["c4. c4. c4. | c2. r4.  | c4. c4. c4. |  c4. c4 c8 c4. ",
                                    "c4. c4. c4. | " + (self.measure_note * 3),
                                    ],
                    pitch_sets= getattr(self, pitch_sets_name), 
                    part_names= ["harmony_1","harmony_3"],
                    )

        # this is the blowing stuff...
    def add_cresc(self):
        self.arrange_music(
                    duration_sets=[
                        self.clarinet_blow_durations + self.clarinet_blow_durations_2 + self.rest + self.clarinet_blow_durations_2 + self.rest,
                        self.cresc_blow_durations + self.cresc_blow_durations_2 + self.rest + self.cresc_blow_durations_2 + self.rest,
                        self.cresc_blow_durations + self.cresc_blow_durations_2 + self.rest + self.cresc_blow_durations_2 + self.rest,
                        ],
                    pitch_sets=[["x"]], # placeholder for now...
                    part_names=["clarinet1", "clarinet2", "horn1", "horn2"]
            )

        # the ji osc...
    def add_orch_ji(self):
        self.arrange_music(
                    duration_sets = [
                        (self.ji_osc_durations * 2 + self.rest * 2) * 2, 
                        (self.rest * 2 + self.ji_osc_durations * 2) * 2], 
                    pitch_sets = [self.ji_osc], 
                    part_names = ["flute1", "flute2"]
            )



class Melody(WadoMaterial):
    def __init__(self):
        super().__init__()

    def add_harmony_ref_2(self, pitch_sets_name="harmonies_old_2_transposed"):
        self.arrange_music(
                    duration_sets= ["c4. c4. c4. | c2. r4.  | c4. c4. c4. |  c4. c4 c8 c4. ",
                                    "c4. c4. c4. | " + (self.measure_note * 3),
                                    ],
                    pitch_sets= getattr(self, pitch_sets_name), 
                    part_names= ["harmony_1","harmony_3"],
                    )

    def add_taiko_melody(self, part_name="taiko1"):
        self.add_phrases(part_name, [
            "lead_in",
            "up_groove",
            "conduct", # 2 bars
            "conduct", # 2 bars
            "up_ka",
            "lead_in",
            ])

    def add_taiko_split(self, part_name="taiko2"):
        for i in range(4):
            self.add_phrases(part_name, [
                "split_don",
                "split_ka"
            ])

class Conduct(WadoMaterial):
    def __init__(self):
        super().__init__()

    def make_music(self):
        self.add_phrases("taiko1", ["conduct" for i in range(8)])

class DayMusic():
    pass


intro1 = Intro()
intro1.add_harmony_ref()
intro1.add_harmony_ref_2()
intro1.add_taiko()
#intro1.add_taiko("taiko2")
intro1.add_orch_ji()
intro1.add_cresc()

intro2 = Intro()
intro2.add_harmony_ref_2()
intro2.add_harmony_ref_2("harmonies_old_2_modulate")
intro2.add_taiko()
#intro1.add_taiko("taiko2")
intro2.add_orch_ji()
intro2.add_cresc()

melody1 = Melody()
melody1.add_harmony_ref_2()
melody1.add_taiko_melody()
#melody1.add_taiko_melody("taiko2")


#material_music.append_material(MelodySplit())

melody1.show()


# material_music.prepare_material()
# material_music.arrangement.make_score(part_names=material_music.part_names)
# print(format(material_music.arrangement.score))






# cycle_measures = 

# music = 



# staff = Staff()
# staff.extend(music)
# show(staff)
#attach(Articulation('staccato'), staff[0][0])



#print(material_music.part_names)
# material_music.arrangement.show_pdf()

# c = Container("R1")

# s = Staff()

# s2 = Staff("r4 r4 r4 r4_tsu")

# #s.extend(c)
# s.extend(s2)

# show(s)