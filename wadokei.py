from abjad import *
import os
import settings

import copy

from tokei import TokeiBubble
from wadokei_material import WadoMaterial

from calliope.tools import music_from_durations, transpose_pitches
from calliope.cycles.loop import CycleLoop


class Intro(WadoMaterial):
    def __init__(self):
        super().__init__()

        self.material["rhythm"]["cresc_blow_A"] = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.material["rhythm"]["cresc_blow_B"] = "r4. c4.\\pp\\< ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

        self.material["rhythm"]["clarinet_blow_A"] = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4.\\mp\\! r4. "
        self.material["rhythm"]["clarinet_blow_B"] = "c4.\\pp\\< ~ c4. ~ c4. ~ | c4. ~ c4. ~ c4.\\mp\\! "

    def add_taiko_a(self, part_names=["taiko1", "taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_down_beat",
            "taiko_rest",
            "taiko_down_beat",
            "taiko_rest",
            ]])

    def add_taiko_b(self, part_names=["taiko1", "taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
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
    def add_cresc_a(self):
        clarinet_rhythms_list = ["clarinet_blow_A", "clarinet_blow_B",]
        blow_rhythms_list = ["cresc_blow_A","cresc_blow_B",]
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

    # to do... maybe this calls/inherits from above?
    def add_cresc_b(self):
        clarinet_rhythms_list = ["rest", "clarinet_blow_B", "rest"]
        blow_rhythms_list = ["rest","cresc_blow_B","rest"]
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


    def add_taiko_a(self, part_names=["taiko1"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_lead_in",
            "taiko_up_groove",
            "taiko_conduct", # 2 bars
            ]])

    def add_taiko_b(self, part_names=["taiko1"]):
        self.arrange_music(part_names=part_names, rhythm_material=[[
            "taiko_conduct", # 2 bars
            "taiko_up_ka",
            "taiko_lead_in",
            ]])

    def add_taiko_split(self, part_names=["taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[
            ["taiko_split_don", "taiko_split_ka"]*2,
        ])

class Conduct(WadoMaterial):
    def add_taiko(self, part_names=["taiko1","taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=["taiko_conduct"]*8)

class DayMusicSplit(WadoMaterial):
    def __init__(self):
        super().__init__(time_signature=TimeSignature((6,8)), measures_durations=[(6,8)]*12)

    def add_taiko(self, part_names=["taiko1","taiko2"]):
        self.arrange_music(part_names=part_names, rhythm_material=[
                [
                    "taiko_day_swirl",
                    "taiko_day_middle",
                    "taiko_day_boom", 
                ],
                ["taiko_day_ji"]*3
            ])

class DayMusicEnd(WadoMaterial):
    pass


# THIS IS ACTUALLY HARDER TO FOLLOW... HOW TO SIMPLIFY????
music = CycleLoop(bubble_type=WadoMaterial)
# intro cycles:
music.add_cycle(bubble_type=Intro, flags=["intro_1_a", "taiko_a", "intro_a"])
music.add_cycle(bubble_type=Intro, flags=["intro_1_b", "taiko_b", "intro_b"])
music.add_cycle(bubble_type=Intro, flags=["intro_2_a", "taiko_a", "intro_a"])
music.add_cycle(bubble_type=Intro, flags=["intro_2_b", "taiko_b", "intro_b"])
# # melody cycles:
music.add_cycle(bubble_type=Melody, flags=["melody_1_a", "taiko_a","melody_start"])
music.add_cycle(bubble_type=Melody, flags=["melody_1_b", "taiko_b"])
music.add_cycle(bubble_type=Melody, flags=["melody_2_a", "taiko_a", "taiko_split"])
music.add_cycle(bubble_type=Melody, flags=["melody_2_b", "taiko_b", "taiko_split"])
music.add_cycle(bubble_type=Melody, flags=["melody_3_a", "taiko_a", "taiko_split"])
music.add_cycle(bubble_type=Melody, flags=["melody_3_b", "taiko_b", "taiko_split"])
# day music cycles:
music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_1", "day_start"])
music.add_cycle(bubble_type=DayMusicSplit, flags=["day_music_2"])
music.add_cycle(bubble_type=DayMusicEnd, flags=["day_music_end"])

# ----------------------------------------------------------

music.exec_method("add_orch_ji")

music.exec_method("add_cresc_a", apply_flags=["intro_a"])
music.exec_method("add_cresc_b", apply_flags=["intro_b"])

# ----------------------------------------------------------
# harmonies/lines reference parts:
music.exec_method("add_harmony_ref", apply_flags=["intro_1_a"])
music.exec_method("add_harmony_ref_2", apply_flags=["intro_1_b"])
music.exec_method("add_harmony_ref_2", apply_flags=["intro_2_a"])
music.exec_method("add_harmony_ref_2", pitch_material="ancient_B_modulate", apply_flags=["intro_2_b"])
music.exec_method("add_harmony_ref_2", apply_flags=["melody_1_a"])
music.exec_method("add_harmony_night_ref", apply_flags=["melody_1_b"])
# TO DO... add festival lines ref
music.exec_method("add_harmony_night_2_ref", apply_flags=["melody_2_a"])
music.exec_method("add_harmony_night_3_ref", apply_flags=["melody_2_b"])
music.exec_method("add_harmony_night_2_ref", transpose=[-1], respell=["flats"],  apply_flags=["melody_3_a"])
music.exec_method("add_harmony_night_3_ref", transpose=[4], respell=["sharps"], apply_flags=["melody_3_b"])

# ----------------------------------------------------------
# the taiko parts
music.exec_method("add_taiko_a", apply_flags=["taiko_a"], skip_flags=["taiko_split"])
music.exec_method("add_taiko_b", apply_flags=["taiko_b"], skip_flags=["taiko_split"])
# here's the taiko melody split (simplify this code??):
music.exec_method("add_taiko_a", part_names=["taiko1"], apply_flags=["melody_2_a"])
music.exec_method("add_taiko_b", part_names=["taiko1"], apply_flags=["melody_2_b"])
music.exec_method("add_taiko_split", part_names=["taiko2"], apply_flags=["melody_2_a","melody_2_b"])
music.exec_method("add_taiko_a", part_names=["taiko2"], apply_flags=["melody_3_a"])
music.exec_method("add_taiko_b", part_names=["taiko2"], apply_flags=["melody_3_b"])
music.exec_method("add_taiko_split", part_names=["taiko1"], apply_flags=["melody_3_a","melody_3_b"])
# here's the taiko day music
music.exec_method("add_taiko", part_names=["taiko1","taiko2"], apply_flags=["day_music_1"])
music.exec_method("add_taiko", part_names=["taiko2","taiko1"], apply_flags=["day_music_2"])
# next up.... add

music.apply_transforms()

music.cycles[0].show_pdf()

#bubble = music.make_bubble()

#bubble.show_pdf()


# intro1 = Intro()
# intro1.add_harmony_ref()
# intro1.add_harmony_ref_2()
# intro1.add_taiko(part_names=["taiko1","taiko2"])
# intro1.add_orch_ji()
# intro1.add_cresc()

# intro2 = Intro()
# intro2.add_harmony_ref_2()
# intro2.add_harmony_ref_2(pitch_material="ancient_B_modulate")
# intro2.add_taiko(part_names=["taiko1","taiko2"])
# intro2.add_orch_ji()
# intro2.add_cresc()

# melody1 = Melody()
# melody1.add_harmony_ref_2()
# melody1.add_harmony_night_ref()
# melody1.add_festival_lines_ref()
# melody1.add_taiko_melody()
# melody1.add_taiko_melody(part_names=["taiko2"])

# melody2 = Melody()
# melody2.add_harmony_night_2_ref()
# melody2.add_harmony_night_3_ref()
# melody2.add_taiko_melody(part_names=["taiko1"])
# melody2.add_taiko_split(part_names=["taiko2"])

# melody3 = Melody()
# melody3.add_harmony_night_2_ref(transpose=[-1], respell=["flats"])
# melody3.add_harmony_night_3_ref(transpose=[4], respell=["sharps"])
# melody3.add_taiko_melody(part_names=["taiko2"])
# melody3.add_taiko_split(part_names=["taiko1"])

# day_music1 = DayMusicSplit()
# day_music1.add_taiko(part_names=["taiko1","taiko2"])
# day_music1.add_taiko(part_names=["taiko2","taiko1"])
# day_music1.show_pdf()


# w = intro1
# w.append_bubble(intro2)
# w.append_bubble(melody1)
# w.append_bubble(melody2)
# w.append_bubble(melody3)
# w.append_bubble(day_music1)
# w.show_pdf(part_names=["harmony_3","taiko2","flute2"])

# print(format(w))

# w.make_score()
# print(format(w.score))




# day_music1.show_pdf(part_names=["taiko1","taiko2"])

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