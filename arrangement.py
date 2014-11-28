from abjad import *
from collections import OrderedDict
from shutil import copyfile

# TO DO... move this to a library for use in other pieces...
class Part(scoretools.Container):
    
    def __init__(self, instrument=None):
        self.instrument = instrument
        super().__init__()

    def make_staff(self):
        staff = scoretools.Staff([])
        attach(self.instrument, staff)
        staff.extend(self)
        return staff

class Arrangement:
    """
    Represents a collection of parts. Parts should be added in score order.
    """

    # TO DOs:
    # - get/set length
    # - option to hide empty parts/staves
    # - fill parts with rests/skips
    # - arrange at certain duration
    # - specify paper/book/misc lilypond output settings

    score = None # scoretools.Score([])

    parts = None # OrderedDict()

    project_path = "/home/randall/Code/mirrorecho/rwestmusic-tokei"

    name = "full-score"

    def __init__(self):
        self.parts = OrderedDict()
        self.score = scoretools.Score([])

    def add_part(self, name, instrument=None):
        self.parts[name] = Part(instrument)

    def make_score(self):

        self.score = scoretools.Score([])

        self.score.extend([self.parts[x].make_staff() for x in self.parts])

    def make_pdf(self, subfolder = None):
        """
        similar to abjad's builtin show()... but uses arrangement-specific file path/name instead of the abjad default,
        creates and returns pdf filename without showing it, and pdf file name does NOT increment
        """
        self.make_score()
        assert '__illustrate__' in dir(self.score)
        result = topleveltools.persist(self.score).as_pdf()
        pdf_file_path = result[0]
        abjad_formatting_time = result[1]
        lilypond_rendering_time = result[2]
        success = result[3]
        if success:
            subfolder = subfolder + "/" if subfolder is not None else ""
            project_pdf_file_path = self.project_path + "/pdf/" + subfolder + self.name + ".pdf"
            
            # not sure why save_last_pdf_as doesn't work (UnicodeDecodeError)... so just using copyfile isntead
            #systemtools.IOManager.save_last_pdf_as(project_pdf_file_path)

            copyfile(pdf_file_path, project_pdf_file_path)

            return project_pdf_file_path
        if return_timing:
            return abjad_formatting_time, lilypond_rendering_time

    def show_pdf(self):
        """
        calls make_pdf and then shows the pdf: similar to abjad's builtin show() method... 
        but uses arrangement-specific file path/name instead of the abjad default 
        and pdf filename does NOT increment
        """
        pdf_file_path = self.make_pdf()
        systemtools.IOManager.open_file(pdf_file_path)

    def partial_score(self, part_names):
        score = scoretools.Score([])

        score.extend([self.parts[x].make_staff() for x in part_names])

        return score

    def append_arrangement(self, arrangement):
        for part_name in self.parts:
            self.parts[part_name].extend(arrangement.parts[part_name])


class TokeiArrangement(Arrangement):


    def __init__(self):

        super().__init__()

        self.add_part(name='flute1', instrument=instrumenttools.Flute(instrument_name="Flute 1", short_instrument_name="fl.1"))
        self.add_part(name='flute2', instrument=instrumenttools.Flute(instrument_name="Flute 2", short_instrument_name="fl.2"))
        self.add_part(name='oboe1', instrument=instrumenttools.Oboe(instrument_name="Oboe 1", short_instrument_name="ob.1"))
        self.add_part(name='oboe1', instrument=instrumenttools.Oboe(instrument_name="Oboe 2", short_instrument_name="ob.2"))
        self.add_part(name='clarinet1', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 1 in Bb", short_instrument_name="cl.1"))
        self.add_part(name='clarinet2', instrument=instrumenttools.ClarinetInBFlat(instrument_name="Clarinet 2 in Bb", short_instrument_name="cl.2"))
        self.add_part(name='bassoon1', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 1", short_instrument_name="bsn.1"))
        self.add_part(name='bassoon2', instrument=instrumenttools.Bassoon(instrument_name="Bassoon 2", short_instrument_name="bsn.2"))

        self.add_part(name='horn1', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 1", short_instrument_name="hn.1"))
        self.add_part(name='horn2', instrument=instrumenttools.FrenchHorn(instrument_name="Horn in F 2", short_instrument_name="hn.2"))
        self.add_part(name='trumpet', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 1", short_instrument_name="tpt.1"))
        self.add_part(name='trumpet', instrument=instrumenttools.Trumpet(instrument_name="Trumpet in C 2", short_instrument_name="tpt.2"))
        self.add_part(name='trombone1', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 1", short_instrument_name="tbn.1"))
        self.add_part(name='trombone2', instrument=instrumenttools.TenorTrombone(instrument_name="Tenor Trombone 2", short_instrument_name="tbn.2"))
        self.add_part(name='tuba', instrument=instrumenttools.Tuba(instrument_name="Tuba", short_instrument_name="tba"))

       
        # # to do... figure out instrument (and staff) changes for perc
        # self.perc1 = scoretools.Container()
        # self.perc2 = scoretools.Container()
        # self.timpani = scoretools.Container()
        # self.harp =  scoretools.Container()

        # self.taiko_shime = scoretools.Container()
        # self.taiko_odaiko = scoretools.Container()
        # self.taiko_group1 = scoretools.Container()
        # self.taiko_group2 = scoretools.Container()

        # self.violinI = scoretools.Container()
        # self.violinI_div_1 = scoretools.Container()
        # self.violinI_div_2 = scoretools.Container()
        # self.violinI_stand_1 = scoretools.Container()
        # self.violinI_stand_2 = scoretools.Container()
        # self.violinI_stand_3 = scoretools.Container()
        # self.violinI_1 = scoretools.Container()
        # self.violinI_2 = scoretools.Container()
        # self.violinI_3 = scoretools.Container()
        # self.violinI_4 = scoretools.Container()
        # self.violinI_5 = scoretools.Container()
        # self.violinI_6 = scoretools.Container()

        # self.violinII = scoretools.Container()
        # self.violinII_div_1 = scoretools.Container()
        # self.violinII_div_2 = scoretools.Container()
        # self.violinII_stand_1 = scoretools.Container()
        # self.violinII_stand_2 = scoretools.Container()
        # self.violinII_stand_3 = scoretools.Container()
        # self.violinII_1 = scoretools.Container()
        # self.violinII_2 = scoretools.Container()
        # self.violinII_3 = scoretools.Container()
        # self.violinII_4 = scoretools.Container()
        # self.violinII_5 = scoretools.Container()
        # self.violinII_6 = scoretools.Container()

        # self.viola =  scoretools.Container()
        # self.viola_div_1 =  scoretools.Container()
        # self.viola_div_2 =  scoretools.Container()
        # self.viola_1 =  scoretools.Container()
        # self.viola_2 =  scoretools.Container()
        # self.viola_3 =  scoretools.Container()
        # self.viola_4 =  scoretools.Container()

        # self.cello =  scoretools.Container()
        # self.cello_div_1 =  scoretools.Container()
        # self.cello_div_2 =  scoretools.Container()
        # self.cello_1 =  scoretools.Container()
        # self.cello_2 =  scoretools.Container()
        # self.cello_3 =  scoretools.Container()
        # self.cello_4 =  scoretools.Container()

        # self.bass = scoretools.Container()
        # self.bass_1 =  scoretools.Container()
        # self.bass_2 =  scoretools.Container()

