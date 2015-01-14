from abjad import *
import os

# any way to avoid this sys path part??
import sys
sys.path.append("/home/randall/Code/mirrorecho")

from tokei import TokeiArrangement

wado_arr = TokeiArrangement(layout="standard", name="taiko-material", time_signature=TimeSignature((9,8)))

# TO DO... text spacing for taiko ki-ai


wado_ideas = {}
wado_ideas['up']=Container("r4_tsu c8_don         r4_tsu c8_don   c8_ka  c8_ra   c8_ka")
wado_ideas['triples']=Container("c8_do c_ko c_do "*3)
wado_ideas['conduct']=Container("c4_don r8   c4_don r8       r4.       |    c4_don r8      c4_ka r8    r4.")

wado_arr.parts["taiko1"].extend(wado_ideas["up"])
wado_arr.parts["taiko1"].extend(wado_ideas["conduct"])


#wado_arr.show_pdf(part_names=["taiko1","taiko2"])

wado_arr.make_score()
print(format(wado_arr.score))


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