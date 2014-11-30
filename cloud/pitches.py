from abjad import *

from arrangement import Arrangement

def get_diatonic_spread(pitch_line):


class CloudPitches:

    voice_ranges = [[0,12]]

    dont_touch_pitches = [[]]

    octave_transpositions_allowed = True

    pitch_lines = None # QUESTION ... better to use abjad's pitchtools.PitchArray()?

    def __init__(self, project, pitch_lines):
        self.project = project
        self.pitch_lines = pitch_lines

    def save(self):
        pass

    def load(self):
        pass

    def show(self):
        arrangement = Arrangement(project=self.project, title="Cloud Pitch Lines", name="cloud-pitches-show")
        for i, line in enumerate(self.pitch_lines):
            arrangement.add_part(name="line" + str(i), instrument=instrumenttools.Instrument(instrument_name="Line " + str(i), short_instrument_name=str(i)))
            line_music = scoretools.make_notes(line, durationtools.Duration(1,4))
            arrangement.parts["line" + str(i)].extend(line_music)

        # TO DO... remove bar lines (or barlines every note?)
        # TO DO... show scores!

        arrangement.show_pdf()

    # TO DO... figure out how to build up a library of these weigting functions... such as:
    # - no parallel pitch classes
    # - no repeated notes
    # - no triple repeated notes
    # - repetitions only allowed at certain positions
    # - minor on bottom
    # - limit voice diatonic spread
    # - small to large interval spread (and vice versa)
    # - voices going up / going down
    # - nice melodic intervals
    # - emphasize repeated notes


    def weight_melodic_interval(self, interval, position):
        pass

    def weight_voice_leading(self, harmonic_interval_1, harmonic_interval_2, position):
        pass

    def weigth_column(self, pitch_column, position):
        pass

    def weight_row(self, pitch_row):
        pass

    def arrange(self, max_tries=9):
        pass

    def get_weights(self):
        pass
