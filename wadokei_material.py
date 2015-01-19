from abjad import *
import os
import settings

import copy

from tokei import TokeiArrangement

wado_arr = TokeiArrangement(layout="standard", name="taiko-material", time_signature=TimeSignature((9,8)))

# TO DO... text spacing for taiko ki-ai


wado_ideas = {}
wado_ideas['rest']=Container("R4. R4. R4.")
wado_ideas['lead_in']=Container("r4._tsu          c8^don r   r           c8^don[ r r]")
wado_ideas['down_beat']=Container("c8_don[ r8 r]    r4.                   r4.")
wado_ideas['up_ka']=Container("r8_tsu[ r c8_don]         r8_tsu[ r c8_don]         c8_ka    c8_ra   c8_ka")
wado_ideas['up_groove']=Container("r8_tsu[ r c8_don]         r8[ r c8_do]          c4_do           c8_ko")
wado_ideas['mostly_triples']=Container("c4_do c8_ko " + "c8_do c_ko c_do "*2)
wado_ideas['triples']=Container("c8_do c_ko c_do "*3)
wado_ideas['conduct']=Container("c4_don r8   c4_don r8       r4.       |    c4_don r8      c4_ka r8    r4.")

def add_ideas(arrangement, part_name, ideas_dict, ideas):
    """
    adds ideas to a part in an arrangement... ideas are a list of keys to a dict with musical containers
    """
    for idea in ideas:
        arrangement.parts[part_name].extend(copy.deepcopy(ideas_dict[idea]))


def wado_intro_phrase():
    add_ideas(wado_arr, "taiko1", wado_ideas, [
        "down_beat",
        "rest",
        "down_beat",
        "rest",
        "lead_in",
        "down_beat",
        "down_beat",
        "rest",
        ])
def wado_phrase():
    add_ideas(wado_arr, "taiko1", wado_ideas, [
        "lead_in",
        "up_groove",
        "conduct", # 2 bars
        "conduct", # 2 bars
        "up_ka",
        "lead_in",
        ])


wado_intro_phrase()
wado_intro_phrase()
wado_phrase()
wado_phrase()

wado_arr.show_pdf(part_names=["taiko1","taiko2", "odaiko"])