# JUST FOR TESTING STUFF OUT....

# from abjad import *

# from arrangement import TokeiArrangement

# music1 = TokeiArrangement()
# music2 = TokeiArrangement()

# music1.parts['flute2'].extend("e4 e4 e4 e4")

# music2.parts['flute2'].extend("f4 f4 f4 f4")

# my_pitch = pitchtools.NamedPitch("a''")

# my_notes = scoretools.make_notes([my_pitch], [(4,4), (1,1), (1,2), (1,2)])

# my_measures = scoretools.Container()
# my_measures.extend(scoretools.Measure((4,4)))
# my_measures.extend(scoretools.Measure((8,4)))

# my_measures.extend(my_notes)

# music2.parts['flute2'].extend(my_measures)

# music1.append_arrangement(music2)

# show(music1.make_score())

from abjad import *
import settings

import copy

from tokei import TokeiBubble, TokeiCloud, TokeiFree
from calliope.cycles.loop import CycleLoop
from calliope.tools import get_pitch_number, box_music

from wado_m import WadoMaterial
from caes_m import *

# f = ForceCloud2C(name="caesium-force-cloud-2-strings-down")
# f.cloud.show()

# t = TimeSignature( ((3,8),(9,8)) )
# s = Staff("b8 "*12)
# #attach(t,s)
# show(s)



# override(staff).staff_grouper.staff_staff_spacing__basic_distance = 7
# >>> f(staff)
# \new Staff \with {
#     \override StaffGrouper #'staff-staff-spacing #'basic-distance = #7
# } {
# }

print()
print("----------------------------------------------------")
# def attach_commands(music_object, commands):
#     for c in commands:
#         attach(c, music_object)


# def line_staff_music(skip_length=(1,16)):

#     skip = scoretools.Skip(skip_length)

#     line_staff_commands = [
#         indicatortools.LilyPondCommand("stopStaff", 'before'),
#         indicatortools.LilyPondCommand("""override Staff.StaffSymbol #'line-positions = #'(
#         -0.4 -0.3 -.2 -.1 0 .1 .2 .3 .4
#         ;-0.5 0
#         )""", 'before'),
#         indicatortools.LilyPondCommand("startStaff", 'before'),
#     ]

#     normal_staff_commands = [
#         indicatortools.LilyPondCommand("stopStaff", 'after'),
#         indicatortools.LilyPondCommand("override Staff.StaffSymbol #'line-positions = #'(-4 -2 0 2 4)", 'after'),
#         indicatortools.LilyPondCommand("startStaff", 'after'),
#     ]

#     attach_commands(skip, line_staff_commands)
#     attach_commands(skip, normal_staff_commands)

#     return skip

# box_start_commands = [
#     indicatortools.LilyPondCommand("once \\override BreathingSign #'break-align-symbol = #'custos", 'before'),
#     indicatortools.LilyPondCommand("""once \\override Staff.TimeSignature.space-alist =
#         #'((first-note . (fixed-space . 2.0))
#            (right-edge . (extra-space . 0))
#            ;; space after time signature ..
#            (custos . (extra-space . 0)))""", 'before'),
#     indicatortools.LilyPondCommand("once \\override BreathingSign #'text = \\markup { \\filled-box #'(0 . 0.4) #'(-1.4 . 1.4) #0 }", 'before'),
#     indicatortools.LilyPondCommand("once \\override BreathingSign #'break-visibility = #end-of-line-invisible", 'before'),
#     indicatortools.LilyPondCommand("once \\override BreathingSign #'Y-offset = ##f", 'before'),
#     indicatortools.LilyPondCommand("once \\override Staff.BarLine #'space-alist = #'((breathing-sign fixed-space 0))", 'before'),
#     indicatortools.LilyPondCommand("breathe", 'before'),
#     ]
# box_stop_commands = [
#     indicatortools.LilyPondCommand("once \\override BreathingSign #'text = \markup { \\filled-box #'(0 . 0.4) #'(-1.4 . 1.4) #0 }", 'after'),
#     indicatortools.LilyPondCommand("once \\override BreathingSign #'Y-offset = ##f", 'after'),
#     indicatortools.LilyPondCommand("breathe", 'after'),
# ]

#override(box_start).breathing_sign.break_align_symbol - 'custos'
    # \once\override BreathingSign #'break-align-symbol = #'custos
    # \once \override Staff.TimeSignature.space-alist =
    #     #'((first-note . (fixed-space . 2.0))
    #        (right-edge . (extra-space . 0))
    #        ;; space after time signature ..
    #        (custos . (extra-space . 0)))
    # \once\override BreathingSign #'text = \markup { \filled-box #'(0 . 0.4) #'(-1.4 . 1.4) #0 }
    # \once\override BreathingSign #'break-visibility = #end-of-line-invisible
    # \once\override BreathingSign #'Y-offset = ##f


# box_stop = indicatortools.LilyPondCommand('breathe', 'after')

# attach_commands(box2[0], box_start_commands)
# attach_commands(box2[-1], box_stop_commands)

s1 = Staff()
s2 = Staff()

s1.extend("R1")

s1.extend(box_music("b4 a4 b8[ a8] r4", "freely, repeat", ((1,1),(1,1),) ))
s1.extend("b1")

s2.extend(box_music("b8 b8[ a8] "))

s2.extend("b8 r2 | b1")

s = Score()
s.append(s1)

s.append(s2)
show(s)
print(format(s))


#print(format(s))

# print(format(s))


# class TokeiOdd(TokeiBubble):
#     def __init__(self, measures_durations=[(10,8), (7,8), (7,8)]):
#         super().__init__(measures_durations=measures_durations, odd_meters=True)


# c = CycleLoop(bubble_type=TokeiBubble)
# c.add_cycle(bubble_type=TokeiFree, flags=["start"])
# c.add_cycle(bubble_type=TokeiFree, flags=["next"])
# c.add_cycle(bubble_type=TokeiOdd, flags=["odd1"])
# c.add_cycle(bubble_type=TokeiOdd, flags=["odd2"])
# c.add_cycle(flags=["normal1"])
# c.add_cycle(flags=["normal1"])
# c.add_cycle(bubble_type=TokeiFree, flags=["start"])
# c.add_cycle(flags=["normal2"])


# c.arrange_music(part_names=["flute2","oboe2"],
#     rhythms=["b'1(\\<\\p a'2.)\\!\\f "*6 ],
#     apply_flags=["start","next"],
#     )

# c.arrange_music(part_names=["flute2","oboe2"],
#     rhythms=["b''8 "*24 ],
#     apply_flags=["odd1","odd2"],
#     )


# c.arrange_music(part_names=["clarinet1","clarinet2"],
#     rhythms=["b''8(\\f  b') "*12 ],
#     apply_flags=["odd1","odd2"],
#     )

# c.arrange_music(part_names=["violinI","violinII"],
#     rhythms=["a4\\mp  "*12 ],
#     apply_flags=["normal1"],
#     )


# c.apply_transforms()
# bubble = c.make_bubble()


# bubble.show_pdf()




# tok = TokeiBubble()
# tok.parts["flute1"].extend("b1 "*3)
# #scoretools.append_spacer_skips_to_underfull_measures_in_expr(tok)

# tok1 = TokeiFree()
# tok1.parts["flute1"][0].extend("b16( c'1) f'4")
# tok1.parts["oboe2"][0].extend("b16( c'1) f'4 "*7)


# # tok2 = TokeiFree()
# # tok2.parts["clarinet1"][0].extend("b16( c'1) f'4 "*3)

# tok1.align_parts()
# #tok2.align_parts()

# tok.append_bubble(tok1)
# # tok.append_bubble(tok2)

# print(format(tok))
# tok.show_pdf()

# m = Measure((1,4))
# m.automatically_adjust_time_signature = True
# m.append("c'4 "*14)
# show(m)

# m2 = Measure((1,4))
# m2.automatically_adjust_time_signature = True
# m2.extend(m)

# show(m2)

# c0 = CaesiumMaterial(measures_durations=[])

# cg = CaesiumMaterial()
# cg.arrange_music(part_names=["flute1"],rhythms=["a8 "*24])

# cg2 = CaesiumMaterial()
# cg2.arrange_music(part_names=["flute1"],rhythms=["a8 "*24])

# c = CaesiumMaterialOdd()
# #c = CaesiumMaterial(measures_durations=[(3,4)]*4)
# #c.arrange_music(part_names=["flute1"],rhythms=["b4. b4. b4 b4    a4. a4 a4    b4 b4    b4."])
# c.arrange_music(part_names=["flute1"],rhythms=["b8 "*24])

# c2 = CaesiumMaterial()
# #c2.arrange_music(part_names=["flute1"],rhythms=["g'1 "*3])
# c2.arrange_music(part_names=["flute1"],rhythms=["b8 "*24])

# c3 = CaesiumMaterial()
# c3.arrange_music(part_names=["flute1"],rhythms=["a'1 "*3])

# c0.append_bubble(c, divider=True)
# c0.append_bubble(cg, divider=True)
# c0.append_bubble(cg2, divider=True)
# c0.append_bubble(c2, divider=True)
# c0.append_bubble(c3, divider=True)
# c0.show_pdf()


# ------------------------------------------------------------

# measures_durations = [(3,4), (4,4), (7,8),  (3,4)]
# if any([not Duration(d).is_assignable for d in measures_durations]):
#     rest_measures = scoretools.make_rests(measures_durations)
# else:
#     rest_measures = scoretools.make_multimeasure_rests(measures_durations)
# c = Container(rest_measures)

# music = Container("c'4( d'2. ~ d'8 )\\fermata  e'  e'[ e' d'] b b b b b b b b b b b b b b b " )

# #music = Container("b8 ~ b8" )

# s = Staff()

# for m in measures_durations:
#     s.append(Measure(m))

# s.append(Measure((1,8)))

# s[0].extend(music)
# mutate(s[0]).split(measures_durations)
# for i,m in enumerate(s):
#     m.time_signature = TimeSignature(measures_durations[i])
# for e in s:
#     print(e)
#scoretools.append_spacer_skips_to_underfull_measures_in_expr(s)


# m = Measure((1,8))
# m.extend(music)

# c2 = Container()
# for i in m3:
#     c2.extend(i)
# show(c2)


# s.append(music)
# print(music)

# # s.append(music)
# # print(s[1])
# # scoretools.append_spacer_skips_to_underfull_measures_in_expr(s)

# s2=Staff()
# s2.extend(c)

# #mutate(s2).replace_measure_contents(s)

# show(Score([s2,s]))



#mutate(music).split(measures_durations)
n = 0
# for i in music:
#     print(i)
#     if len(s) > n:
#         if s[n].is_full:
#             n += 1
#         if len(s) > n:
#             s[n].append(i)

# scoretools.append_spacer_skips_to_underfull_measures_in_expr(s)
# show(s)

# s.extend(scoretools.make_spacer_skip_measures(measures_durations))
# mutate(s).replace_measure_contents(c)




# mutate(music).rewrite_meter(measures_durations)
# show(music)

# mutate(s).replace_measure_contents(music)
# s[0].extend(music)

# show(s)

# m = Measure((7,8))
# # ... this will be great for free music!!!!
# m.automatically_adjust_time_signature=True
# m.always_format_time_signature=False
# m.extend(music)
# show(m)




# pitch = "C#2"
# arrange_fundamental = get_pitch_number(pitch)
# arrange_harmonic=4
# print([pitchtools.NumberedPitch.from_hertz(261.6 * (2**(arrange_fundamental/12)) * arrange_harmonic)])

# p = pitchtools.NumberedPitch.from_hertz(261.6 * 2**(pitch/12))
# print(p)

# def get_harmonic(pitch_number, harmonic):
#     pass
    # print(440 * 2**(n/12))


# bubble = TokeiBubble()

# for i in range(2):
#     new_bubble = TokeiBubble()
#     bubble.arrange_music(part_names=[p for p in bubble.parts], rhythms=["b8(\\p\\< b8) b8(\\ff b8) b8( b8) b8( b8) "*3], )
#     bubble.append_bubble(new_bubble)
# print("NOW SHOWING PDF....")
# bubble.show_pdf()


# for i in range(20):
#     bubble.arrange_music(part_names=[p for p in bubble.parts], rhythms=["b8(\\p\\< b8) b8(\\ff\\> b8) b8( b8) b8( b8)\\! "*3], )
# bubble.show_pdf()


# for i in range(20):
#     for pa in bubble:
#         pa.extend("b8(\\p\\< b8) b8(\\ff\\> b8) b8( b8) b8( b8)\\! "*3)
# bubble.show_pdf()

# sc = Score()
# for i in range(30):
#     sc.append(Staff())

# for i in range(20):
#     for pa in sc:
#         pa.extend("b8(\\p\\< b8) b8(\\ff\\> b8) b8( b8) b8( b8)\\! "*3)

# show(sc)

# sc = Score()
# for i in range(29):
#     sc.append(Staff("b8(\\p\\< b8) b8(\\ff\\> b8) b8( b8) b8( b8)\\! "*60))



#show(sc)


    
#print(format(bubble))




#----------------------------------------
# sc1 = Score()
# sc2 = Score()

# sc1.extend([Container("r2 r2"), Container("r4 r4 r4 r4"), ])
# sc2.extend([Staff("b2 b2"), Staff("b4 b4 b4 b4"), ])

# sc1.extend(sc2)

# show(sc1)


#----------------------------------------
# class MyClass():
#     def my_function(self, great="boo", *args, **kwargs):
#         print(great)

# args = {}
# args["great"]="YO!"
# args["something_else"]="Boo..."

# c = MyClass()
# f = "my_function"



# b = TokeiBubble(measures_durations=[])
# b.fill_empty_parts_with_rests()
# b.show_pdf()

# m = CycleLoop(bubble_type=WadoMaterial)
# m.add_cycle()
# m.cycles[0].parts["taiko1"].append("c1")

# m.add_cycle(bubble_type=WadoMaterial)


# music = m.make_bubble()

# music.show_pdf()

# # any way to avoid this sys path part??
# import sys
# sys.path.append("/Users/randallwest/Code/mirrorecho")

# import calliope.work

# f# rom arrangement import Arrangement
# from copy import deepcopy

# project = calliope.work.Project("rwestmusic-tokei")

# ar = calliope.work.Arrangement(project=project, name="tester-arrangement")
# ar.add_part(name='line1', instrument=instrumenttools.Violin(instrument_name="Line 1", short_instrument_name="1"))
# ar.add_part(name='line2', instrument=instrumenttools.Violin(instrument_name="Line 2", short_instrument_name="2"))
# ar.add_part(name='line3', instrument=instrumenttools.Violin(instrument_name="Line 3", short_instrument_name="3"))
# ar.add_part(name='line4', instrument=instrumenttools.Violin(instrument_name="Line 4", short_instrument_name="4"))

# m_durations = [(4,4), (4,4), (1,4), (4,4), (4,4)]

# for part_name, part in ar.parts.items():
#     part.extend(scoretools.make_spacer_skip_measures(m_durations))

# m1 = scoretools.Container("b4 b b b b b b b r8")
# m_replace = mutate(ar.parts["line1"]).replace_measure_contents(m1)

# for m, m_new in zip(ar.parts["line1"], m_replace):
#     m = m_new


# # del ar.parts["line1"][:]
# # ar.parts["line1"].extend(m_replaced)

# ar.show_pdf()



# arr = TokeiArrangement()
# arr.material["pitch"]["rise_octaves"] = [
#                                 ["C4","D4","E4", ["F4","F5"] ],
#                                 ["C5","D5","E5", ["F5","F6"] ],
#                                 ]
# arr.material["pitch"]["down_row_A"] = ["A3","G3","F3","E3"]
# arr.material["pitch"]["down_row_B"] = ["B3","A3","G3","F3"]

# arr.material["rhythm"]["pickup"] = "c4. c8"
# arr.material["rhythm"]["straight"] = "c4 c4"

# arr.material["rhythm"]["eighths_measure"] = "c8( c8 c8 c8)    c8( c8 c8 c8)"


# arr.arrange_music(part_names=["clarinet1","clarinet2"],pitch_material="rise_octaves",rhythm_material=[["pickup","straight"]])

# arr.arrange_music(part_names=["flute1","flute2"],pitches=[["G5","A5","B5",0]], rhythm_material=["eighths_measure"])

# arr.arrange_music(part_names=["oboe1","oboe2"],pitch_material=["down_row_A","down_row_B"], rhythms=["c4-. c4-. c4-. c4-. "])


# arr.show_pdf()


# c4 = Container("c'2 r2 | r2 c'2 ")
# t4 = TimeSignature((4,4))
# s4 = Staff()
# s4.extend(c4)
# attach(t4,s4[0])

# c3 = Container("c'2 r4 | g'4 g'4 g'4")
# t3 = TimeSignature((3,4))
# s3 = Staff()
# s3.extend(c3)
# attach(t3,s3[0])

# #attach(t3,s4[len(s4)-1])
# s4.extend(s3)

# print(s4)
# print(format(s4))
# show(s4)


