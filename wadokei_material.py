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

        self.material["rhythm"]["cresc_blow_A"] = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.material["rhythm"]["cresc_blow_B"] = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

        self.material["rhythm"]["clarinet_blow_A"] = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.material["rhythm"]["clarinet_blow_B"] = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

    def add_taiko(self, part_names=["taiko1"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_down_beat",
            "taiko_rest",
            "taiko_down_beat",
            "taiko_rest",
            "taiko_lead_in",
            "taiko_down_beat",
            "taiko_down_beat",
            "taiko_rest",
            ]])

    def add_harmony_ref(self):
        self.arrange_music(
                    rhythms = [self.material["rhythm"]["measure_note"] * 4 ],
                    pitch_material= "ancient_A", 
                    part_names= ["harmony_1","harmony_3"],
                    respell=["sharps"]
                    )

    def add_harmony_ref_2(self, pitch_material="ancient_B"):
        self.arrange_music(
                    rhythms = ["c4. c4. c4. | c2. r4.  | c4. c4. c4. |  c4. c4 c8 c4. ",
                                    "c4. c4. c4. | " + (self.material["rhythm"]["measure_note"] * 3),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_3"],
                    respell=["sharps"]
                    )

        # this is the blowing stuff...
    def add_cresc(self):
        clarinet_rhythms_list = ["clarinet_blow_A", "clarinet_blow_B", "rest", "clarinet_blow_B", "rest"]
        blow_rhythms_list = ["cresc_blow_A","cresc_blow_B","rest","cresc_blow_B","rest"]
        self.arrange_music(
                    rhythm_material=[
                        clarinet_rhythms_list,
                        clarinet_rhythms_list,
                        blow_rhythms_list,
                        blow_rhythms_list,
                        ],
                    pitches=[["x"]], # placeholder for now...
                    part_names=["clarinet1", "clarinet2", "horn1", "horn2"],
                    respell=["sharps"]
            )

        # the ji osc...
    def add_orch_ji(self):
        self.arrange_music(
                    rhythm_material= [
                        ["ji_osc", "ji_osc", "rest", "rest"] * 2, 
                        ["rest", "rest", "ji_osc", "ji_osc"] * 2,  
                        ],
                    pitch_material = ["ji_osc"], 
                    part_names = ["flute1", "flute2"]
            )


class Melody(WadoMaterial):
    def __init__(self):
        super().__init__()

    def add_harmony_ref_2(self, pitch_material="ancient_B_up2"):
        self.arrange_music(
                    rhythms= ["c4. c4. c4. | c2. r4.  | c4. c4. c4. |  c4. c4 c8 c4. ",
                                    "c4. c4. c4. | " + (self.material["rhythm"]["measure_note"] * 3),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_3"],
                    respell=["sharps"]
                    )
    def add_festival_lines_ref(self):
        self.arrange_music(part_names=["line_1"],rhythms=["R4. R4. R4. | "*4  + "r4. r4. "]),
        self.arrange_music(
                rhythm_material=["festival_B"], 
                pitch_material=["festival_A"], 
                part_names=["line_1"], 
                transpose=[-3], 
                respell=["sharps"]
                )
        self.arrange_music(part_names=["line_1"],rhythms=["R4. R4. R4. | "*2 ])

    def add_harmony_night_ref(self, pitch_material="night_A"):
        self.arrange_music(
                    rhythms = [(self.material["rhythm"]["measure_note"] * 2) + "c4. c4. c4. | " + self.material["rhythm"]["measure_note"],
                                    (self.material["rhythm"]["measure_note"] * 4),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_3"],
                    respell=["sharps"]
                    )

    def add_harmony_night_2_ref(self, pitch_material="night_B", transpose=[0], respell=["sharps"]):
        self.arrange_music(
                    rhythms= ["c4. c2. | "*2 + self.material["rhythm"]["measure_note"] + "c4. c4. c4. | ",
                                    (self.material["rhythm"]["measure_note"] * 3) + "c4. c2. | ",
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_3"],
                    respell=respell,
                    transpose=transpose,
                    )
    
    def add_harmony_night_3_ref(self, pitch_material="night_C", transpose=[0], respell=["sharps"]):
        self.arrange_music(
                    rhythms = ["c2. c4. | "*2 + "c4. c2. | " + self.material["rhythm"]["measure_note"],
                                    (self.material["rhythm"]["measure_note"] * 4),
                                    ],
                    pitch_material= pitch_material, 
                    part_names= ["harmony_1","harmony_3"],
                    respell=respell,
                    transpose=transpose,
                    )


    def add_taiko_melody(self, part_names=["taiko1"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_lead_in",
            "taiko_up_groove",
            "taiko_conduct", # 2 bars
            "taiko_conduct", # 2 bars
            "taiko_up_ka",
            "taiko_lead_in",
            ]])

    def add_taiko_split(self, part_names=["taiko2"]):
        for i in range(4):
            self.arrange_music(part_names=part_names, rhythm_material=[[
                "taiko_split_don",
                "taiko_split_ka"
            ]])

class Conduct(WadoMaterial):
    def __init__(self):
        super().__init__()

    def add_taiko(self, part_names=["taiko1","taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=["taiko_conduct"]*8)

class DayMusic():
    pass


intro1 = Intro()
intro1.add_harmony_ref()
intro1.add_harmony_ref_2()
intro1.add_taiko(part_names=["taiko1","taiko2"])
intro1.add_orch_ji()
intro1.add_cresc()

intro2 = Intro()
intro2.add_harmony_ref_2()
intro2.add_harmony_ref_2(pitch_material="ancient_B_modulate")
intro1.add_taiko(part_names=["taiko1","taiko2"])
intro2.add_orch_ji()
intro2.add_cresc()

melody1 = Melody()
melody1.add_harmony_ref_2()
melody1.add_harmony_night_ref()
melody1.add_festival_lines_ref()
melody1.add_taiko_melody()
melody1.add_taiko_melody(part_names=["taiko2"])

melody2 = Melody()
melody2.add_harmony_night_2_ref()
melody2.add_harmony_night_3_ref()
melody2.add_taiko_melody(part_names=["taiko1"])
melody2.add_taiko_split(part_names=["taiko2"])

melody3 = Melody()
melody3.add_harmony_night_2_ref(transpose=[-1], respell=["flats"])
melody3.add_harmony_night_3_ref(transpose=[4], respell=["sharps"])
melody3.add_taiko_melody(part_names=["taiko2"])
melody3.add_taiko_split(part_names=["taiko1"])

w = WadoMaterial()
w.append_arrangement(intro1)
w.append_arrangement(intro2)
w.append_arrangement(melody1)
w.append_arrangement(melody2)
w.append_arrangement(melody3)
w.show_pdf()
#w.show_pdf(part_names=["harmony_1","harmonony_3","taiko_1","taiko_2","flute_1"])

#material_music.append_material(MelodySplit())

# w = WadoMaterial()
# w.append_material(intro1)
# w.append_material(intro2)
# w.append_material(melody1)
# w.append_material(melody2)
# w.append_material(melody3)
# w.show()


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