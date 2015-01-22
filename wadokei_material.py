from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement
from wadokei_material_base import WadoMaterial

from calliope.tools import music_from_durations, transpose_pitches


class Intro(WadoMaterial):
    def __init__(self):
        super().__init__()

        self.rhythms["cresc_blow_A"] = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.rhythms["cresc_blow_B"] = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

        self.rhythms["clarinet_blow_A"] = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.rhythms["clarinet_blow_B"] = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

    def add_taiko(self, part_names=["taiko1"]):
        self.arrrange_music(part_names=["taiko1"], rhythms=[[
            "down_beat",
            "taiko_rest",
            "down_beat",
            "taiko_rest",
            "lead_in",
            "down_beat",
            "down_beat",
            "taiko_rest",
            ]])

    def add_harmony_ref(self):
        self.arrange_music(
                    rhythm_strings = [[self.measure_note * 4 ]],
                    pitch_material= "ancient_A", 
                    part_names= ["harmony_1","harmony_3"],
                    respell_sets=["sharps"]
                    )

    def add_harmony_ref_2(self, pitch_sets_name="harmonies_old_2"):
        self.arrange_music(
                    rhythm_strings = [["c4. c4. c4. | c2. r4.  | c4. c4. c4. |  c4. c4 c8 c4. ",
                                    "c4. c4. c4. | " + (self.measure_note * 3),
                                    ],
                    pitch_sets= getattr(self, pitch_sets_name), 
                    part_names= ["harmony_1","harmony_3"],
                    respell_sets=["sharps"]
                    )

        # this is the blowing stuff...
    def add_cresc(self):
        clarinet_rhythms_list = ["clarinet_blow_A", "clarinet_blow_B", "rest", "clarinet_blow_B", "rest"]
        blow_rhythms_list = ["cresc_blow_A","cresc_blow_B","rest","cresc_blow_B","rest"]
        self.arrange_music(
                    rhythms=[
                        clarinet_rhythms_list,
                        clarinet_rhythms_list,
                        blow_rhythms_list,
                        blow_rhythms_list,
                        ],
                    pitch_material=[["x"]], # placeholder for now...
                    part_names=["clarinet1", "clarinet2", "horn1", "horn2"],
                    respell_sets=["sharps"]
            )

        # the ji osc...
    def add_orch_ji(self):
        self.arrange_music(
                    rhythm_strings = [[
                        (self.ji_osc_durations * 2 + self.rest * 2) * 2, 
                        (self.rest * 2 + self.ji_osc_durations * 2) * 2]], 
                    pitch_material = [self.ji_osc], 
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
                    respell_sets=["sharps"]
                    )
    def add_festival_lines_ref(self):
        self.arrangement.parts["line_1"].extend(("R4. R4. R4. | " * 4) + " r4. r4.")
        self.arrange_music(
                duration_sets=[self.festival_rhythm_2], 
                pitch_sets=[self.festival_pitches_1], 
                part_names=["line_1"], 
                transpose_sets=[-3], 
                respell_sets=["sharps"]
                )
        self.arrangement.parts["line_1"].extend("R4. R4. R4. | " * 2)

    def add_harmony_night_ref(self, pitch_sets_name="harmonies_night_1"):
        self.arrange_music(
                    duration_sets= [(self.measure_note * 2) + "c4. c4. c4. | " + self.measure_note,
                                    (self.measure_note * 4),
                                    ],
                    pitch_sets= getattr(self, pitch_sets_name), 
                    part_names= ["harmony_1","harmony_3"],
                    respell_sets=["sharps"]
                    )

    def add_harmony_night_2_ref(self, pitch_sets_name="harmonies_night_2", transpose_sets=[0], respell_sets=["sharps"]):
        self.arrange_music(
                    duration_sets= ["c4. c2. | "*2 + self.measure_note + "c4. c4. c4. | ",
                                    (self.measure_note * 3) + "c4. c2. | ",
                                    ],
                    pitch_sets= getattr(self, pitch_sets_name), 
                    part_names= ["harmony_1","harmony_3"],
                    respell_sets=respell_sets,
                    transpose_sets=transpose_sets
                    )
    
    def add_harmony_night_3_ref(self, pitch_sets_name="harmonies_night_3", transpose_sets=[0], respell_sets=["sharps"]):
        self.arrange_music(
                    duration_sets= ["c2. c4. | "*2 + "c4. c2. | " + self.measure_note,
                                    (self.measure_note * 4),
                                    ],
                    pitch_sets= getattr(self, pitch_sets_name), 
                    part_names= ["harmony_1","harmony_3"],
                    respell_sets=respell_sets,
                    transpose_sets=transpose_sets
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
intro1.add_taiko("taiko2")
intro1.add_orch_ji()
intro1.add_cresc()

intro2 = Intro()
intro2.add_harmony_ref_2()
intro2.add_harmony_ref_2("harmonies_old_2_modulate")
intro2.add_taiko()
intro2.add_taiko("taiko2")
intro2.add_orch_ji()
intro2.add_cresc()

melody1 = Melody()
melody1.add_harmony_ref_2()
melody1.add_harmony_night_ref()
melody1.add_festival_lines_ref()
melody1.add_taiko_melody()
melody1.add_taiko_melody("taiko2")

melody2 = Melody()
melody2.add_harmony_night_2_ref()
melody2.add_harmony_night_3_ref()
melody2.add_taiko_melody()
melody2.add_taiko_split("taiko2")

melody3 = Melody()
melody3.add_harmony_night_2_ref(transpose_sets=[-1], respell_sets=["flats"])
melody3.add_harmony_night_3_ref(transpose_sets=[4], respell_sets=["sharps"])
melody3.add_taiko_melody("taiko2")
melody3.add_taiko_split("taiko1")

#material_music.append_material(MelodySplit())

w = WadoMaterial()
w.append_material(intro1)
w.append_material(intro2)
w.append_material(melody1)
w.append_material(melody2)
w.append_material(melody3)
w.show()


# w.arrangement.parts["harmony_1"].append("r4. r4.")
# w.arrange_music(duration_sets=[w.festival_rhythm_1], pitch_sets=[w.festival_pitches_1], part_names=["harmony_1"], transpose_sets=[-3], respell_sets=["sharps"])
# w.show()


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