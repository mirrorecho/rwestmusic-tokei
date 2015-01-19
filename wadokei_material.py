from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement

print("")
print("---------------------------------------------------------------------------")
print("")

# TO DO (TODAY... by 5:45)
# - taiko material DOWN IN CODE for wadokei
# - class structure for wadokei
# - able to change time signature
# - harmonic ideas DOWN IN CODE for wadokei (can view and play at piano)
# - basic integration with cycles


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

        self.phrases = {}
        self.phrases['rest']=Container("R4. R4. R4.")
        self.phrases['lead_in']=Container("r4._tsu          c8^don r   r           c8^don[ r r]")
        self.phrases['down_beat']=Container("c8_don[ r8 r]    r4.                   r4.")
        self.phrases['up_ka']=Container("r8_tsu[ r c8_don]         r8_tsu[ r c8_don]         c8_ka    c8_ra   c8_ka")
        self.phrases['up_groove']=Container("r8_tsu[ r c8_don]         r8[ r c8_do]          c4_do           c8_ko")
        
        self.phrases['split_don']=Container("c8_do[ r8  c8_don] r8[ r8 c8_don] r8[ r8 c8_don] r8[ r8 c8_do]")
        self.phrases['split_ka']=Container("c8_ka[ r8  c8_don] r8[ r8 c8_don] r8[ r8 c8_don] r8[ r8 c8_do]")

        # this is a 2-measure phrases...
        self.phrases['conduct']=Container("c4_don r8   c4_don r8       r4.       |    c4_don r8      c4_ka r8    r4.")
        
        # not sure I'll use these...
        self.phrases['triples']=Container("c8_do c_ko c_do "*3)
        self.phrases['mostly_triples']=Container("c4_do c8_ko " + "c8_do c_ko c_do "*2)

        self.part_names = []

    def add_phrases(self, part_name, phrases):
        """
        adds phrases to a part in an arrangement... 
        """
        for phrase_name in phrases:
            self.arrangement.parts[part_name].extend(copy.deepcopy(self.phrases[phrase_name]))

        if part_name not in self.part_names:
            self.part_names.append(part_name)

    def show(self):
        self.arrangement.show_pdf(part_names=self.part_names)

class Intro(WadoMaterial):
    def __init__(self):
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
        self.add_phrases("taiko1", [
            "lead_in",
            "up_groove",
            "conduct", # 2 bars
            "conduct", # 2 bars
            "up_ka",
            "lead_in",
            ])
        self.add_phrases("taiko2"), [
 
        ]



class DayMusic():








class WadoMelodyB(WadoTaiko)

class WadoLine2(WadoTaiko)

class WadoLine3(WadoTaiko)






def wado_intro_phrase():

def wado_phrase():



wado_intro_phrase()
wado_intro_phrase()
wado_phrase()
wado_phrase()

wado_arr.show_pdf(part_names=["taiko1","taiko2"])