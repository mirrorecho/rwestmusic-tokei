from abjad import *

from cloud.pitches import CloudPitches

simple_line = [16, 14, 12, 11, 9, 7, 5, 4, 2, 0, -2, -3, -5, -7, -9, -10, -12, -14, -16, -17, -19, -21, -23, -24]

pitch_lines = [
        simple_line,
        simple_line,
        [x + 7 for x in simple_line],
        [x + 7 for x in simple_line],
        [x + 14 for x in simple_line],
        [x + 14 for x in simple_line],
        [x + 21 for x in simple_line],
        [x + 21 for x in simple_line],
    ]

cloud = CloudPitches(project="rwestmusic-tokei", pitch_lines=pitch_lines)

cloud.show()