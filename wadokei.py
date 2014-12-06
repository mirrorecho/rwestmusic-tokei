from abjad import *

from arrangement import TokeiArrangement
from cycles.loop import CycleLoop, Cycle
from cycles.transform import *

day_music = CycleLoop()
night_music = CycleLoop()

# to do... figure out how to add otoshi as a data point...

# alternate between 3/4 and 6/8??

day_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(8)], start_iter=1)
night_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(4)], start_iter=1)

day_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(10)], start_iter=2)
night_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(2)], start_iter=2)

day_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(8)], start_iter=3)
night_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(4)], start_iter=3)

day_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(6)], start_iter=4)
night_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(6)], start_iter=4)

day_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(4)], start_iter=5)
night_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(8)], start_iter=5)

day_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(2)])
night_music.add_data("measures_durations", [durationtools.Duration(6,8) for i in range(10)])