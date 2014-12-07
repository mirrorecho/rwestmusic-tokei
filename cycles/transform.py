from abjad import *
from cycles.cells import IntervalRepeatCell
from cloud.pitches import CloudPitches

import copy

# TO DO... make sure using pitches as numbers everywhere...

def get_pitch_number(pitch_object):
    if isinstance(pitch_object, int):
        return pitch_object
    elif isinstance(pitch_object, str):
        return pitchtools.NamedPitch(pitch_object).pitch_number
    elif isinstance(pitch_object, pitchtools.Pitch):
        return pitch_object.pitch_number

def music_from_durations(durations, times=None, split_durations=None, pitches=None):
    # durations is either:
    # - a string with rests and notes (usually c) to be transposed by pitches
    # - a music container with rests and notes (usually c) to be transposed by pitches
    # a list of durations
    if type(durations) is str:
        music = scoretools.Container(durations)
    elif isinstance(durations, scoretools.Container):
        music = copy.deepcopy(durations)
    else:
        music = scoretools.make_leaves([0], durations)

    for i, note in enumerate(iterate(music).by_class(Note)):
        #QUESTION... should we NOT loop around the pitches?
       note.written_pitch += pitchs[i % len(pitches)]

    if times is not None:
        music_times = scoretools.Container()
        for i in range(times):
            music_times.extend(copy.deepcopy(music))
        music = music_times

    # split notes accross bar lines (with ties) .... 
    if split_durations is not None:
        music = mutate(music).split(
                        split_durations,
                        fracture_spanners=False,
                        tie_split_notes=True,
                        )
    return music


class TransformBase:

    name = ""

    start_flag = None
    stop_flag = None
    start_iter = None # the cycle iteration to start on... if negative, will count from the end (e.g. -1 will start on the last cycle, -2 on the second to last)
    stop_iter = None # the cycle iteration to stop on... likewise, if negative, will count from the end
    apply_flags = []
    
    is_loop_active = False

    args = {}

    def __init__(self, name, stop_flag=None, start_flag=None, start_iter=None, stop_iter=None, apply_flags=[], **kwargs):
        self.name = name
        
        self.start_flag = start_flag
        self.stop_flag = stop_flag
        self.start_iter = start_iter
        self.stop_iter = stop_iter
        self.apply_flags = apply_flags

        # TO DO... add skip flags?

        # if no start is specified, start at 0:
        if start_iter is None and start_flag is None and len(apply_flags) == 0:
            self.start_iter = 0

        self.args = kwargs

    def is_active(self, loop_iter, loop_total, flags):
        # make "loop inactive" if this cycle is flagged with the loop stop flag or iteration 
        # (note we give priority to stopping over starting... if they ever both apply)
        if (
            self.stop_flag in flags or 
            loop_iter == self.stop_iter or 
            (self.stop_iter is not None and self.stop_iter < 0 and loop_iter == self.stop_iter + loop_total)
        ):
            self.is_loop_active = False
        # otherwise make "loop active" if this cycle is flagged with the loop start flag or iteration 
        elif (
            self.start_flag in flags or 
            loop_iter == self.start_iter or 
            (self.start_iter is not None and self.start_iter < 0 and loop_iter == self.start_iter + loop_total)
        ):
            self.is_loop_active = True        

        return self.is_loop_active or any(f in self.apply_flags for f in flags)


    def apply(self, cycle, previous_cycle):
        pass

# something to think about ...

# class ArrangementProperties():
#     part_name = None
#     before_durations = None
#     durations = None
#     after_durations = None
#     transposition = 0

class AddData(TransformBase):
    def apply(self, cycle, previous_cycle):
        cycle.data[self.name] = self.args["value"]


class AddMusicFromPitches(TransformBase):
    def apply(self, cycle, previous_cycle):
        pitches = cycle.data[self.args["pitches"]]
        durations = cycle.data[self.args["durations"]]
        # use make_leaves to map intervals + start pitch to durations to create the music
        raw_music = scoretools.make_leaves(pitches, durations)
        # split notes accross bar lines (with ties) .... QUESTION... should this happen here or at the arrangement mod?
        cycle.data[self.name] = mutate(raw_music).split(
                        cycle.data["measures_durations"],
                        fracture_spanners=False,
                        tie_split_notes=True,
                        )

# just inherit this from the above???
class AddMusicFromRelativePitches(TransformBase):
    def apply(self, cycle, previous_cycle):
        start_pitch = cycle.data[self.args["start_pitch"]]
        relative_pitches = cycle.data[self.args["relative_pitches"]]
        durations = cycle.data[self.args["durations"]]
        # use make_leaves to map intervals + start pitch to durations to create the music
        raw_music = scoretools.make_leaves(
                        [start_pitch.pitch_number + i for i in relative_pitches], 
                        durations,
                        )
        # split notes accross bar lines (with ties) .... QUESTION... should this happen here or at the arrangement mod?
        cycle.data[self.name] = mutate(raw_music).split(
                        cycle.data["measures_durations"],
                        fracture_spanners=False,
                        tie_split_notes=True,
                        )

class ModCloudPitchesRearrangeLines(TransformBase):
    # tally_apps
    # times 
    # pitch_lines 
    def apply(self, cycle, previous_cycle):
        pitch_lines = [cycle.data[n] for n in self.args["pitch_lines"]]
        # assume we don't need the project, since we won't be showing anything directly...
        cloud = CloudPitches(pitch_lines=pitch_lines)
        cloud.randomize_all_columns()
        for tally_app in self.args["tally_apps"]:
            cloud.add_tally_app(tally_app)
        for i in range(self.args["times"]):
            cloud.get_tallies()
            cloud = cloud.get_rearranged()
        for j, n in enumerate(self.args["pitch_lines"]):
            cycle.data[n] = cloud.pitch_lines[j]

class AddMusicFromIntervalRepeatCell(TransformBase):
    def apply(self, cycle, previous_cycle):
        pitch_range = None
        if "pitch_range" in self.args:
            pitch_range = cycle.data[self.args["pitch_range"]]
        cell = IntervalRepeatCell(cycle.data[self.args["intervals"]], cycle.data[self.args["start_pitch"]], pitch_range)
        durations =cycle.data[self.args["durations"]]
        cycle.data[self.name] = scoretools.Container()
        for i in range(self.args["times"]):
            cycle.data[self.name].extend(cell.make_notes(durations))
            cell.next()

class AddPitchesFromIntervalRepeatCell(TransformBase):
    def apply(self, cycle, previous_cycle):
        pitch_range = None
        if "pitch_range" in self.args:
            pitch_range = cycle.data[self.args["pitch_range"]]
        cell = IntervalRepeatCell(cycle.data[self.args["intervals"]], cycle.data[self.args["start_pitch"]], pitch_range)
        cycle.data[self.name] = []
        for i in range(self.args["times"]):
            cycle.data[self.name].extend(cell.pitches)
            cell.next()

class ModTransposePitch(TransformBase):
    def apply(self, cycle, previous_cycle):
        if previous_cycle is not None:
            previous_pitch = previous_cycle.data[self.name]
            new_pitch = previous_pitch.transpose(self.args["value"])
            cycle.data[self.name] = new_pitch

class AddMusicCopy(TransformBase):
    def apply(self, cycle, previous_cycle):
        music = copy.deepcopy(cycle.data[self.args["copy_from"]])
        if "transpose" in self.args:
            # QUESTION... does this work for chords or to they need to be handled separately?
            for i, note in enumerate(iterate(music).by_class(Note)):
                note.written_pitch += cycle.data[self.args["transpose"]]
        cycle.data[self.name] = music

class AddPitchesCopy(TransformBase):
    def apply(self, cycle, previous_cycle):
        transpose = 0
        if "transpose" in self.args:
            transpose = cycle.data[self.args["transpose"]]
        copy_from = cycle.data[self.args["copy_from"]]
        cycle.data[self.name] = [pitch + transpose for pitch in copy_from]

class AddPitchCopy(TransformBase):
    def apply(self, cycle, previous_cycle):
        transpose = 0
        if "transpose" in self.args:
            transpose = cycle.data[self.args["transpose"]]
        cycle.data[self.name] = pitchtools.NumberedPitch(cycle.data[self.args["copy_from"]] + transpose)

class ArrangeMusic(TransformBase):
    def apply(self, cycle, previous_cycle):
        # copying the music... since we may use it for multiple parts...
        music = copy.deepcopy(cycle.data[self.name])
        if "pitch_range" in self.args:
            # QUESTION... does this work for chords or to they need to be handled separately?
            for i, note in enumerate(iterate(music).by_class(Note)):
                note.written_pitch = pitchtools.transpose_pitch_expr_into_pitch_range([note.written_pitch.pitch_number], cycle.data[self.args["pitch_range"]])[0]


        cycle.arrangement.parts[self.args["part"]].extend(music)

class ArrangePitches(TransformBase):
    def apply(self, cycle, previous_cycle):
        pitches = [get_pitch_number(p) for p in cycle.data[self.name]]
        # if "durations" in self.args:
        #     durations = cycle.data[self.args["durations"]]
        #     # use make_leaves to map intervals + start pitch to durations to create the music
        #     raw_music = scoretools.make_leaves(pitches, durations)
        # elif "music_pattern" in self.args:
        #     if type(cycle.data[self.args["music"]]) is str:
        #         raw_music = scoretools.Container(cycle.data[self.args["music"]])
        #     # if type of c_music not string, then assume it's aready container of music...
        #     else:
        #         raw_music = copy.deepcopy(cycle.data[self.args["music"]])
        #     # TO DO... account for ties...
        #     for i, note in enumerate(iterate(raw_music).by_class(Note)):
        #         #QUESTION... should we NOT loop around the pitches?
        #        note.written_pitch += pitchs[i % len(pitches)]
        # # split notes accross bar lines (with ties) .... QUESTION... should this happen here or at the arrangement mod?
        # music = mutate(raw_music).split(
        #                 cycle.data["measures_durations"],
        #                 fracture_spanners=False,
        #                 tie_split_notes=True,
        #                 )
        if "pitch_range" in self.args:
            # QUESTION... does this work for chords or to they need to be handled separately?
            for i, note in enumerate(iterate(music).by_class(Note)):
                note.written_pitch = pitchtools.transpose_pitch_expr_into_pitch_range([note.written_pitch.pitch_number], cycle.data[self.args["pitch_range"]])[0]

        cycle.arrangement.parts[self.args["part"]].extend(music)


class ArrangePitch(TransformBase):
    def apply(self, cycle, previous_cycle):
        # really necessary to create this container first?
        music = scoretools.Container()
        
        # TO DO... handle before and after durations
        if "durations" in self.args:
            durations = cycle.data[self.args["durations"]]
            # use make_leaves to map intervals + start pitch to durations to create the music
            raw_music = scoretools.make_leaves(get_pitch_number(cycle.data[self.name]), durations)
            # split notes accross bar lines (with ties) .... QUESTION... should this happen here or at the arrangement mod?
            music.extend(mutate(raw_music).split(
                            cycle.data["measures_durations"],
                            fracture_spanners=False,
                            tie_split_notes=True,
                            ))

        else: 
            music.extend(scoretools.make_notes(cycle.data[self.name], cycle.data["measures_durations"]))
        cycle.arrangement.parts[self.args["part"]].extend(music)

# similar to arrange pitches above, but for percussion parts where we only arrange the rhythm
class ArrangeRhythm(TransformBase):
    def apply(self, cycle, previous_cycle):

        # note... we'll apply the split after getting the music from the durations...
        raw_music = music_from_durations(cycle.data[self.name])


      
        music = mutate(music).split(
                        cycle.data["measures_durations"],
                        fracture_spanners=False,
                        tie_split_notes=True,
                        )
        cycle.arrangement.parts[self.args["part"]].extend(music)