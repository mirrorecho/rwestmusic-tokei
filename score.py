from abjad import *

score = Score([])

flute1_staff = scoretools.Staff()
flute2_staff = scoretools.Staff()

flute1_staff.extend("e1 d2 d2")

# to do... output notes as JSON data?

score.extend([
    flute1_staff, 
    flute2_staff
    ])

show(score)