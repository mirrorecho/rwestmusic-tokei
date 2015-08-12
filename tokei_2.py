from abjad import *
import settings

from calliope.bubbles import Bubble

import copy

PROJECT = Project(name="rwestmusic-tokei")
JI_PITCH = get_pitch_number("A5")

# TO DO... still think it would be better to inherit from CloudPitches...
class TokeiBubble(Bubble):

    material = Bubble.load

    def music(self *args, *kwargs):
        self.material[""]