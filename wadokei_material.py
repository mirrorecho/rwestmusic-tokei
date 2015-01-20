from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement

from calliope.tools import music_from_durations

print("")
print("---------------------------------------------------------------------------")
print("")

# TO DO (TODAY... by 5:45)
# - taiko material DOWN IN CODE for wadokei
# - class structure for wadokei
# - able to change time signature
# - harmonic ideas DOWN IN CODE for wadokei (can view and play at piano)
# - basic integration with cycles
# - (later...)
# - make kas X note-heads
# - get dividers to work
# - understand lilypond contexts!


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

        self.pitch_stack_9ths = [0,14,28,42]

        self.harmonies_old = ["B0", "C4"]



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

    def prepare_material(self):
        for part_name in self.part_names:
            text_length_on = indicatortools.LilyPondCommand('textLengthOn', 'before')
            attach(text_length_on, self.arrangement.parts[part_name][0])

    def add_relative_music(self, part_name):
        pass

class Intro(WadoMaterial):
    def __init__(self):
        super().__init__()
        self.part_names.append("harmony_1")
        self.arrangement.parts["harmony_1"].extend(music_from_durations("c2. c4 c8", pitches=[14, ["C4", "A4"], 21]))
        self.part_names.append("harmony_3")
        self.arrangement.parts["harmony_3"].extend("b,2. r4.")
        self.add_phrases("taiko1", [
            "down_beat",
            "rest",
            "down_beat",
            "rest",
            "lead_in",
            "down_beat",
            "down_beat",
            "rest",
            ])

class Melody(WadoMaterial):
    def __init__(self):
        super().__init__()
        self.add_phrases("taiko1", [
            "lead_in",
            "up_groove",
            "conduct", # 2 bars
            "conduct", # 2 bars
            "up_ka",
            "lead_in",
            ])

class MelodySplit(WadoMaterial):
    def __init__(self):
        super().__init__()
        self.add_phrases("taiko1", [
            "lead_in",
            "up_groove",
            "conduct", # 2 bars
            "conduct", # 2 bars
            "up_ka",
            "lead_in",
            ])
        for i in range(4):
            self.add_phrases("taiko2", [
                "split_don",
                "split_ka"
            ])



class DayMusic():
    pass


material = Intro()

#material_music.append_material(MelodySplit())

material.show()

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