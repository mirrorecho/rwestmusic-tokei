from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement
from wadokei_material_base import WadoMaterial

from calliope.tools import music_from_durations, transpose_pitches


print("")
print("---------------------------------------------------------------------------")
print("")

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

    def add_harmony_night_ref(self, pitch_sets_name="harmonies_night_1"):
        self.arrange_music(
                    duration_sets= [(self.measure_note * 2) + "c4. c4. c4. | " + self.measure_note,
                                    (self.measure_note * 4),
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
melody1.add_harmony_night_ref()
melody1.add_taiko_melody()
#melody1.add_taiko_melody("taiko2")


#material_music.append_material(MelodySplit())

# melody1.show()
w = WadoMaterial()
w.arrangement.parts["harmony_1"].append("r4. r4.")
w.arrange_music(duration_sets=[w.festival_rhythm_1], pitch_sets=[w.festival_pitches_1], part_names=["harmony_1"])
w.show()


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