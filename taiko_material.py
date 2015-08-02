from abjad import *
import os

import copy

# any way to avoid this sys path part??
import sys
sys.path.append("/Users/randallwest/Code/mirrorecho")
#sys.path.append("/home/randall/Code/mirrorecho")

from tokei import TokeiArrangement

wado_arr = TokeiArrangement(layout="standard", name="taiko-material", time_signature=TimeSignature((9,8)))

# TO DO... text spacing for taiko ki-ai


wado_ideas = {}
wado_ideas['rest']=Container("R4. R4. R4.")
wado_ideas['lead_in']=Container("r4._tsu          c4_don   r8           c4_don   r8")
wado_ideas['down_beat']=Container("c4_don   r8    r4.                   r4.")
wado_ideas['up_ka']=Container("r4_tsu c8_don         r4_tsu c8_don         c8_ka    c8_ra   c8_ka")
wado_ideas['up_groove']=Container("r4_tsu c8_don         r4 c8_do          c4_do           c8_ko")
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

# REMEMBER FLUTE WITH ABOVE THE HEAD

# MA: dramatic held breath in clepsydra and caesium, defined space in wadokei and kairos

#wado_arr.make_score()
#print(format(wado_arr.score))

# STORY:

#Clepsydra

# - taiko players walk on stage to As and sliding
# - (PAUSE) and then comaide at key moment in build (and then wait)
Contaienr("R1 "*4) # 4 measures rest instead of 3?

# - do dons punctuate (with some shime accents?)
Container("c8 c8 r4 r2    |    R1     |     c8 c8 r4 r2 " * 3) # 3  times.... 2 with one choreography, 2 with another
# - - - choreography?
# - - - funny little figures in winds/strings mostly
# - do dons increase 
Container("c8 c8 r4 r2    |    R1     |     c8 c8  r4   c8  r4  c8") #4th one has additional strikes at end 
Container("c8 c8 r4 r2    |  c8 c8 r4 r2    |   R1 ")
Container("c8 c8 r4 r2    |  c8 c8 r4 r2    |   R1 ")

Container("c8 c8 r4 r4 c8 c8    |  c8 c8 r4 r2    |   R1 ")
Container("c8 c8 r4 r4 c8 c8    |  c8 c8 r4 r2    |   R1 ")
# - - - strings staccato
# - - - horns, some other brass begin building with held notes


# - shime part + real taiko melody
# - - - tsu don  do    (- don  -   do) ... is the pick up to this
Container("")
# - - - strings switch to bowed & held... and a line (maybe doubled in winds)
# - - - accent individual shime strike with the orchestra (esp with the percussionists)

#

#Kairos
# - soft O-daiko!


# wadokei material on paper
# round ideas (may need to flesh out )

# GOALS FOR TONIGHT....
# tempi of each movement

# get caesium taiko parts DONE!

#CAESIUM NOTES
#alternating hands works for:
# -bounce with group of 3 at end only
# -all groups of 3
# - accents only

#CLEPSYDRA NOTES
# big beginning?
# - great to use hold bachi on the head and move in out from middle!
# - (do ko do ko do ko)going down   tsu    do don

#WADOKEI NOTES
# -                                                                  tsu don   tsu don   tsu  don    ka  la  ka
# OR BETTER IN 3:

# - tsu don    tsu don   ka  la  ka
#   don (R)                    don (L)(right out)      tsu(both up)
#   ka  (L)(right down)        don (R)(left point)     tsu(both up)
# OR ka (R) with left point


#   do   ko     do         do   ko   do      do   ko    do

#   tsu        -            tsu             don         tsu        don
#   tsu        -            tsu             don         tsu        don

#   tsu         don         tsu             don          tsu       don
# (3 jis)

#low( or mid low)       low               tsu
#hi                     low               tsu 


# keep left hand playing off beats ... right hand does various stuff on down beats   ( Don  Don  tsu,    ka  tsu tsu, etc.)
# RADICAL TEMPO CHANGES!!!!!



#nice accents
# -on 0, 10, and 3 kas at very end
# - ka don don alternating 8ths sound nice


# clepsydra notes:
# - tsu -  ka la ka la ka la ka - ka -


# choreography

# MEET WITH CHRIS??