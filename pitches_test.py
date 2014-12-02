from abjad import *

import copy

from cloud.pitches import CloudPitches, TallyParallelIntervals, TallyMelodicIntervals

simple_line = [0, 0, 16, 14, 12, 11, 9, 7, 5, 4, 2, 0, -2, -3, -5, -7, -9, -10, -12, -14, -16, -17, -19, -21, -23, -24]

#simple_line = [0, 5, 2, -2]

pitch_lines = [
        simple_line,
        copy.deepcopy(simple_line),
        copy.deepcopy(simple_line),
        [x + 7 for x in simple_line],
        [x + 7 for x in simple_line],
        #[x + 7 for x in simple_line],
        [x + 5 for x in simple_line],
        [x + 5 for x in simple_line],
        #[x + 21 for x in simple_line],
        #[x + 21 for x in simple_line],
    ]

cloud = CloudPitches(project="rwestmusic-tokei", pitch_lines=pitch_lines)
cloud.randomize_all_columns()

cloud.add_tally_app(TallyParallelIntervals([(0,-40), (7,-11), (5,2), (2,4), (4,4)]))

cloud.add_tally_app(TallyMelodicIntervals([(0,-40), (1,9), (2,12), (3,9), (4,9), (5,6), (6,-6), (7,6), (10,-2), (11,-2)]))

cloud.get_tallies()

def tally_loop(cloud):

    cloud.show() 
    foo=input("Enter any key to try rearranging or 'q' to quit")
    if foo != "q":
        cloud = cloud.get_rearranged()
        tally_loop(cloud)


tally_loop(cloud)


# for i in cloud.pitch_lines:
#     print(i)
# print(sum([sum(line) for line in cloud.tallies]))

# print(".........................................")


# worst = cloud.worst_column_index()

# print("The worst column was " + str(worst))
# print(cloud.column(worst))
# print("Tallied at")
# print(cloud.tallies_column(worst))
# print("Total tally:" + str(cloud.tally_total))

# print(".........................................")

# cloud.column_swap2_weighted(worst)
# cloud.get_tallies()

# print(".........................................")
# for i in cloud.pitch_lines:
#     print(i)
# print(sum([sum(line) for line in cloud.tallies]))

# print(".........................................")

# print(cloud.column(worst))
# print("Tallied at")
# print(cloud.tallies_column(worst))
# print("Total tally:" + str(cloud.tally_total))

# over_incremental_add=(12,-9)

#cloud.show() 