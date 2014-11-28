from abjad import *

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

        self.args = kwargs

        print(self.args)

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

class AddMusicFromIntervals(TransformBase):
    def apply(self, cycle, previous_cycle):
        start_pitch = cycle.data[self.args["start_pitch"]]
        intervals = cycle.data[self.args["intervals"]]
        durations = cycle.data[self.args["durations"]]
        # use make_leaves to map intervals + start pitch to durations to create the music
        raw_music = scoretools.make_leaves(
                        [start_pitch.pitch_number + i for i in intervals], 
                        durations,
                        )
        # split notes accross bar lines (with ties) .... QUESTION... should this happen here or at the arrangement mod?
        cycle.data[self.name] = mutate(raw_music).split(
                        cycle.data["measures_durations"],
                        fracture_spanners=False,
                        tie_split_notes=True,
                        )

class ModTransposePitch(TransformBase):
    def apply(self, cycle, previous_cycle):
        if previous_cycle is not None:
            previous_pitch = previous_cycle.data[self.name]
            new_pitch = previous_pitch.transpose(self.args["value"])
            cycle.data[self.name] = new_pitch

class ArrangeMusic(TransformBase):
    def apply(self, cycle, previous_cycle):
        cycle.arrangement.parts[self.args["part"]].extend(cycle.data[self.name])


class ArrangePitch(TransformBase):
    def apply(self, cycle, previous_cycle):
        music = scoretools.Container()
        
        # TO DO... handle before and after durations

        music.extend(scoretools.make_notes(cycle.data[self.name], cycle.data["measures_durations"]))
        cycle.arrangement.parts[self.args["part"]].extend(music)