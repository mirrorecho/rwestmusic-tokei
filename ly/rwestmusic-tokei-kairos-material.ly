% 2015-02-08 00:37

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	title = \markup { Kairos }
}

\layout {
	\context {
		\Staff \RemoveEmptyStaves
		\override VerticalAxisGroup #'remove-first = ##t
	}
	\context {
		\RhythmicStaff \RemoveEmptyStaves
		\override VerticalAxisGroup #'remove-first = ##t
	}
}

\paper {
	bottom-margin = 0.5\in
	left-margin = 0.75\in
	paper-height = 17\in
	paper-width = 11\in
	right-margin = 0.5\in
	system-separator-markup = \slashSeparator
	system-system-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 20) (stretchability . 0))
	top-margin = 0.5\in
}

\score {
	\context Score = "kairos-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context StaffGroup = "winds" <<
			\context Staff = "flute1" {
				\set Staff.instrumentName = \markup { Flute 1 }
				\set Staff.shortInstrumentName = \markup { Fl.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s8
						fs''2. -\fermata
						\times 4/5 {
							cs''2. (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s8
						fs''2. -\fermata
						\times 4/5 {
							cs''2. (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				cs'''1 \mp
				cs'''8 (
				d'''4. ~
				d'''2 )
				r4
				r8
				cs'''8 ~ (
				cs'''4
				cs'''4
				d'''2. )
				cs'''4 (
				cs'''4.
				d'''8 ~
				d'''4
				fs'''4
				cs'''2. )
				cs'''8 (
				d'''8 ~
				d'''4. )
				cs'''8 (
				fs'''4
				cs'''4 )
				fs'''2.
				cs'''8 (
				d'''8 )
				\context Staff {#(set-accidental-style 'modern)}
				r2
				cs'''2
				e''4. (
				cs'''8 ~
				cs'''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				cs'''4. )
				e''8 ~ (
				e''8
				cs'''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
				\context Staff {#(set-accidental-style 'modern)}
				r2
				cs''2
				e'4. (
				cs''8 ~
				cs''2 )
				r4
				r8
				e'8 ~ (
				e'2 ~
				e'4.
				fs'8 ~
				fs'2 ~
				fs'2. )
				d'4 (
				e'2. )
				e'4 (
				cs''4. )
				e'8 ~ (
				e'8
				cs''4. )
				fs'4 (
				cs''8
				d''8
				e'4 )
				e'4
				\context Staff {#(set-accidental-style 'modern)}
				fs'8 \p (
				e'8
				d'8
				cs''8 )
				fs'8 (
				cs''8
				fs'8
				e'8 )
				d'8 (
				fs'8
				d'8
				fs'8 )
				d'8 (
				e'8
				d'8
				e'8 )
				fs'8 (
				e'8
				d'8
				fs'8 )
				d'8 (
				cs''8
				fs'8
				e'8 )
				cs''8 (
				fs'8
				cs''8
				fs'8 )
				cs''8 (
				a'8 )
				r4
				fs'8 \< (
				cs''8
				fs'8
				d''8 )
				fs'8 (
				d''8
				fs'8
				cs''8 )
				fs'8 (
				a'8
				d''8
				cs''8 )
				e''8 (
				d''8
				fs''8
				d''8 )
				cs''8 (
				e''8
				cs''8
				d''8 )
				fs''8 (
				d''8
				cs''8
				d''8 )
				a''8 (
				d''8
				e''8
				fs''8 )
				a''8 (
				cs''8 \mf )
				r4
				\context Staff {#(set-accidental-style 'modern)}
				cs'8 \< (
				d'8 )
				a'8 (
				d''8 )
				cs''8 (
				d''8 )
				cs''8 (
				cs'''8 ) \>
				d'''8 (
				fs''8 )
				a''8 (
				d''8 )
				fs''8 (
				d''8 )
				a'8 (
				fs'8 )
				r4
				r8
				d'8 \< (
				e'8
				d'8 )
				e'8 (
				fs'8 )
				a'8 (
				d''8 )
				e''8 (
				d''8 )
				cs''8 (
				d''8 )
				fs''8 (
				a''8 )
				d''8 \> (
				e''8 )
				fs''8 (
				d''8 )
				e''8 (
				d''8 )
				cs''8 (
				fs'8 )
				a'8 (
				cs''8 )
				a'8 (
				cs'8 )
				r4
				a'8 (
				d'8 ) \<
				e'8 (
				d'8 )
				d''8 (
				cs''8 )
				a'8 (
				fs'8 )
				cs''8 (
				d''8 )
				a'8 (
				fs''8 )
				a''8 (
				fs''8 )
				a''8 (
				fs''8 \f )
				r4
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s4
						r2
						cs''4 (
						d''2 )
						cs''4
						\afterGrace
						s8
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s4
						r2
						cs''4 (
						d''2 )
						cs''4
						\afterGrace
						s8
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r8
				f'''4. \pp ~ \<
				f'''2 \p ~ \>
				f'''1 \pp
				r8
				f'''4. \pp ~ \<
				f'''2 \p ~ \>
				f'''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r8
				f'''4. \pp ~ \<
				f'''2 \p ~ \>
				f'''1 \pp
				r8
				f'''4. \pp ~ \<
				f'''2 \p ~ \>
				f'''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r8
				as'''4. \pp ~ \<
				as'''2 \p ~ \>
				as'''1 \pp
				r8
				as'''4. \pp ~ \<
				as'''2 \p ~ \>
				as'''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				fs'8 \p (
				d'8
				fs'8
				e'8 )
				fs'8 (
				d'8
				fs'8
				cs''8 )
				fs'8 (
				e'8
				cs''8
				fs'8 )
				cs''8 (
				d'8
				a'8
				fs'8 )
				e'8 (
				a'8
				cs''8
				fs'8 )
				e'8 (
				fs'8
				e'8
				d'8 )
				fs'8 (
				d'8
				e'8
				d'8 )
				e'8 (
				d'8 )
				r4
				e'8 \< (
				fs'8
				d''8
				e'8 )
				fs'8 (
				d''8
				cs''8
				fs'8 )
				d''8 (
				e''8
				cs''8
				d''8 )
				cs''8 (
				fs''8
				a'8
				d''8 )
				fs''8 (
				d''8
				a'8
				fs''8 )
				d''8 (
				a'8
				d''8
				cs''8 )
				e''8 (
				d''8
				a''8
				d''8 )
				cs''8 (
				fs''8 \mf )
				r4
				\context Staff {#(set-accidental-style 'modern)}
				a'8 \< (
				fs'8 )
				d''8 (
				cs''8 )
				a'8 (
				cs''8 )
				d''8 (
				a''8 ) \>
				cs'''8 (
				a''8 )
				d''8 (
				e''8 )
				d''8 (
				a'8 )
				d''8 (
				d'8 )
				r4
				r8
				cs'8 \< (
				a'8
				cs''8 )
				e'8 (
				a'8 )
				d''8 (
				a'8 )
				d''8 (
				fs''8 )
				d''8 (
				e''8 )
				d''8 (
				fs''8 )
				cs''8 \> (
				e''8 )
				d''8 (
				fs''8 )
				a'8 (
				d''8 )
				a'8 (
				cs''8 )
				d''8 (
				cs''8 )
				fs'8 (
				e'8 )
				r4
				d'8 (
				e'8 ) \<
				d'8 (
				a'8 )
				cs''8 (
				d''8 )
				e''8 (
				d''8 )
				a'8 (
				e''8 )
				fs''8 (
				d''8 )
				fs''8 (
				a''8 )
				d''8 (
				a''8 \f )
				r4
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r8
				gs''4. \pp ~ \<
				gs''2 \p ~ \>
				gs''1 \pp
				r8
				gs''4. \pp ~ \<
				gs''2 \p ~ \>
				gs''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r8
				gs''4. \pp ~ \<
				gs''2 \p ~ \>
				gs''1 \pp
				r8
				gs''4. \pp ~ \<
				gs''2 \p ~ \>
				gs''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r8
				cs'''4. \pp ~ \<
				cs'''2 \p ~ \>
				cs'''1 \pp
				r8
				cs'''4. \pp ~ \<
				cs'''2 \p ~ \>
				cs'''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				e''8 \p (
				cs''8
				fs'8
				d''8 )
				e''8 (
				d''8
				e''8
				d''8 )
				fs'8 (
				d''8
				e''8
				cs''8 )
				fs'8 (
				cs''8
				d''8
				cs''8 )
				d''8 (
				fs'8
				cs''8
				d''8 )
				a'8 (
				fs'8
				d''8
				cs''8 )
				d''8 (
				cs''8
				fs'8
				e''8 )
				d''8 (
				cs''8 )
				r4
				a'8 \< (
				d''8
				cs''8
				a'8 )
				d''8 (
				a'8
				d''8
				e''8 )
				d''8 (
				cs''8
				d''8
				e''8 )
				d''8 (
				e''8
				d''8
				cs''8 )
				d''8 (
				cs''8
				d''8
				e''8 )
				d''8 (
				cs''8
				d''8
				e''8 )
				cs''8 (
				d''8
				fs''8
				d''8 )
				e''8 (
				d''8 \mf )
				r4
				\context Staff {#(set-accidental-style 'modern)}
				e''8 \< (
				d''8 )
				cs''8 (
				a''8 )
				cs''8 (
				a'8 )
				cs''8 (
				e'8 ) \>
				fs'8 (
				a'8 )
				fs'8 (
				d''8 )
				e''8 (
				d''8 )
				cs''8 (
				d''8 )
				r4
				r8
				a''8 \< (
				fs''8
				e''8 )
				d''8 (
				e''8 )
				d''8 (
				fs''8 )
				d''8 (
				e''8 )
				a'8 (
				a'8 )
				d''8 (
				cs''8 )
				d''8 \> (
				a'8 )
				e''8 (
				a'8 )
				d''8 (
				cs''8 )
				d''8 (
				a''8 )
				fs''8 (
				cs'''8 )
				d'''8 (
				cs'''8 )
				r4
				fs''8 (
				a''8 ) \<
				d'''8 (
				fs''8 )
				d''8 (
				a''8 )
				cs''8 (
				fs''8 )
				e''8 (
				d''8 )
				fs''8 (
				a'8 )
				fs'8 (
				e'8 )
				fs'8 (
				a'8 \f )
				r4
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				e'''4. \pp ~ \<
				e'''2 \p ~ \>
				e'''1 \pp
				r8
				e'''4. \pp ~ \<
				e'''2 \p ~ \>
				e'''1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				e'4. \pp ~ \<
				e'2 \p ~ \>
				e'1 \pp
				r8
				e'4. \pp ~ \<
				e'2 \p ~ \>
				e'1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				e'4. \pp ~ \<
				e'2 \p ~ \>
				e'1 \pp
				r8
				e'4. \pp ~ \<
				e'2 \p ~ \>
				e'1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				cs''8 \p (
				d''8
				e''8
				fs'8 )
				d''8 (
				cs''8
				d''8
				fs'8 )
				cs''8 (
				d''8
				cs''8
				d''8 )
				fs'8 (
				d''8
				cs''8
				d''8 )
				cs''8 (
				d''8
				fs'8
				cs''8 )
				d''8 (
				cs''8
				d''8
				fs'8 )
				cs''8 (
				d''8
				cs''8
				d''8 )
				cs''8 (
				d''8 )
				r4
				fs'8 \< (
				d''8
				a'8
				fs'8 )
				d''8 (
				cs''8
				e''8
				d''8 )
				e''8 (
				d''8
				fs'8
				d''8 )
				fs'8 (
				d''8
				e''8
				fs'8 )
				a'8 (
				d''8
				fs''8
				d''8 )
				e''8 (
				d''8
				e''8
				d''8 )
				a''8 (
				fs''8
				a''8
				cs''8 )
				d''8 (
				e''8 \mf )
				r4
				\context Staff {#(set-accidental-style 'modern)}
				cs'''8 \< (
				a''8 )
				e''8 (
				d''8 )
				fs''8 (
				cs''8 )
				a'8 (
				fs'8 ) \>
				a'8 (
				d'8 )
				d''8 (
				a'8 )
				d''8 (
				e''8 )
				d''8 (
				a''8 )
				r4
				r8
				cs'''8 \< (
				a''8
				d''8 )
				cs''8 (
				d''8 )
				fs''8 (
				d''8 )
				a'8 (
				d''8 )
				fs''8 (
				d''8 )
				a'8 (
				d''8 )
				a'8 \> (
				e''8 )
				a'8 (
				e''8 )
				d''8 (
				e''8 )
				a''8 (
				fs''8 )
				a''8 (
				d''8 )
				cs'''8 (
				d'''8 )
				r4
				cs'''8 (
				fs''8 ) \<
				d'''8 (
				d''8 )
				fs''8 (
				cs''8 )
				fs''8 (
				cs''8 )
				e''8 (
				fs''8 )
				d''8 (
				cs''8 )
				fs'8 (
				d''8 )
				fs'8 (
				d'8 \f )
				r4
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				fs''4. \pp ~ \<
				fs''2 \p ~ \>
				fs''1 \pp
				r8
				fs''4. \pp ~ \<
				fs''2 \p ~ \>
				fs''1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				fs4. \pp ~ \<
				fs2 \p ~ \>
				fs1 \pp
				r8
				fs4. \pp ~ \<
				fs2 \p ~ \>
				fs1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				fs4. \pp ~ \<
				fs2 \p ~ \>
				fs1 \pp
				r8
				fs4. \pp ~ \<
				fs2 \p ~ \>
				fs1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				d''8 \p (
				cs''8
				d''8
				cs''8 )
				d''8 (
				e''8
				cs''8
				fs'8 )
				e''8 (
				cs''8
				fs'8
				d''8 )
				e''8 (
				cs''8
				fs'8
				cs''8 )
				fs'8 (
				cs''8
				d''8
				e''8 )
				cs''8 (
				d''8
				cs''8
				a'8 )
				fs'8 (
				cs''8
				d''8
				cs''8 )
				fs'8 (
				e''8 )
				r4
				cs''8 \< (
				d''8
				e''8
				d''8 )
				cs''8 (
				d''8
				a'8
				d''8 )
				cs''8 (
				fs'8
				a'8
				d''8 )
				a'8 (
				d''8
				cs''8
				e''8 )
				d''8 (
				fs''8
				d''8
				fs''8 )
				d''8 (
				fs''8
				a'8
				fs''8 )
				d''8 (
				cs''8
				d''8
				e''8 )
				a''8 (
				d''8 \mf )
				r4
				\context Staff {#(set-accidental-style 'modern)}
				d'''8 \< (
				cs'''8 )
				a''8 (
				cs''8 )
				a'8 (
				fs'8 )
				a'8 (
				d'8 ) \>
				cs'8 (
				d'8 )
				e'8 (
				d''8 )
				a'8 (
				d''8 )
				fs''8 (
				a''8 )
				r4
				r8
				d'''8 \< (
				cs'''8
				fs''8 )
				a''8 (
				e''8 )
				cs''8 (
				a''8 )
				fs''8 (
				a'8 )
				d''8 (
				cs''8 )
				a'8 (
				cs''8 )
				fs'8 \> (
				a'8 )
				e''8 (
				d''8 )
				cs''8 (
				d''8 )
				fs''8 (
				e''8 )
				cs''8 (
				a''8 )
				cs'''8 (
				a''8 )
				r4
				d'''8 (
				cs'''8 ) \<
				d'''8 (
				a''8 )
				d''8 (
				e''8 )
				fs''8 (
				e''8 )
				d''8 (
				a'8 )
				fs''8 (
				e''8 )
				d''8 (
				cs''8 )
				d''8 (
				cs''8 \f )
				r4
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r8
				cs'''4. \pp ~ \<
				cs'''2 \p ~ \>
				cs'''1 \pp
				r8
				cs'''4. \pp ~ \<
				cs'''2 \p ~ \>
				cs'''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r8
				cs'''4. \pp ~ \<
				cs'''2 \p ~ \>
				cs'''1 \pp
				r8
				cs'''4. \pp ~ \<
				cs'''2 \p ~ \>
				cs'''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r8
				fs'''4. \pp ~ \<
				fs'''2 \p ~ \>
				fs'''1 \pp
				r8
				fs'''4. \pp ~ \<
				fs'''2 \p ~ \>
				fs'''1 \pp
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				cs'8 \p (
				fs8
				cs'8
				d'8 )
				cs'8 (
				fs8
				cs'8
				d'8 )
				cs'8 (
				fs8
				fs'8
				e'8 )
				cs'8 (
				fs'8
				cs'8
				d'8 )
				cs'8 (
				d'8
				e'8
				cs'8 )
				fs'8 (
				e'8
				cs'8
				d'8 )
				e'8 (
				fs'8
				d'8
				cs'8 )
				fs'8 (
				cs'8 )
				r4
				d'8 \< (
				fs'8
				d'8
				cs'8 )
				d'8 (
				e'8
				fs'8
				d''8 )
				a'8 (
				d''8
				e'8
				fs'8 )
				d''8 (
				cs''8
				d''8
				fs'8 )
				e''8 (
				d''8
				e''8
				d''8 )
				cs''8 (
				e''8
				d''8
				fs''8 )
				d''8 (
				a'8
				cs''8
				d''8 )
				fs''8 (
				d''8 \mf )
				r4
				\context Staff {#(set-accidental-style 'modern)}
				cs'8 \< (
				e'8 )
				cs'8 (
				cs''8 )
				d''8 (
				e''8 )
				cs''8 (
				d''8 ) \>
				cs''8 (
				d''8 )
				cs''8 (
				a'8 )
				cs''8 (
				d''8 )
				d'8 (
				e'8 )
				r4
				r8
				cs'8 \< (
				d'8
				cs'8 )
				a'8 (
				d'8 )
				a'8 (
				cs''8 )
				d''8 (
				cs''8 )
				d''8 (
				a'8 )
				cs''8 (
				d''8 )
				e''8 \> (
				cs''8 )
				d''8 (
				a'8 )
				d''8 (
				fs'8 )
				e'8 (
				fs'8 )
				d'8 (
				e'8 )
				a'8 (
				a8 )
				r4
				cs'8 (
				a8 ) \<
				a'8 (
				d'8 )
				a'8 (
				d'8 )
				a'8 (
				d''8 )
				fs'8 (
				e''8 )
				d''8 (
				fs''8 )
				e''8 (
				fs''8 )
				e''8 (
				fs''8 \f )
				r4
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				d''4. \pp ~ \<
				d''2 \p ~ \>
				d''1 \pp
				r8
				d''4. \pp ~ \<
				d''2 \p ~ \>
				d''1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				d4. \pp ~ \<
				d2 \p ~ \>
				d1 \pp
				r8
				d4. \pp ~ \<
				d2 \p ~ \>
				d1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				r8
				d4. \pp ~ \<
				d2 \p ~ \>
				d1 \pp
				r8
				d4. \pp ~ \<
				d2 \p ~ \>
				d1 \pp
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				d'8 \p (
				fs8
				cs'8
				fs8 )
				cs'8 (
				fs8
				d'8
				cs'8 )
				d'8 (
				cs'8
				d'8
				cs'8 )
				d'8 (
				fs8
				e8
				fs8 )
				d'8 (
				cs'8
				fs8
				d'8 )
				cs'8 (
				d'8
				fs8
				cs'8 )
				d'8 (
				e'8
				a8
				fs8 )
				d'8 (
				fs'8 )
				r4
				d'8 \< (
				e'8
				d'8
				fs'8 )
				e'8 (
				fs'8
				d'8
				fs'8 )
				d'8 (
				fs'8
				d'8
				fs'8 )
				a'8 (
				fs'8
				d''8
				a'8 )
				d''8 (
				fs'8
				a'8
				cs''8 )
				a'8 (
				fs'8
				fs''8
				d''8 )
				fs''8 (
				e''8
				d''8
				a'8 )
				d''8 (
				a''8 \mf )
				r4
				\context Staff {#(set-accidental-style 'modern)}
				fs'8 \< (
				a'8 )
				cs'8 (
				a'8 )
				cs''8 (
				d''8 )
				e''8 (
				a''8 ) \>
				e''8 (
				cs''8 )
				d''8 (
				cs''8 )
				d''8 (
				a'8 )
				e'8 (
				d'8 )
				r4
				r8
				a8 \< (
				d'8
				cs'8 )
				e'8 (
				cs'8 )
				d'8 (
				d''8 )
				a'8 (
				d''8 )
				a'8 (
				d''8 )
				cs''8 (
				a'8 )
				e''8 \> (
				fs''8 )
				a'8 (
				d''8 )
				a'8 (
				d''8 )
				fs'8 (
				d'8 )
				e'8 (
				fs'8 )
				e'8 (
				cs'8 )
				r4
				e'8 (
				d'8 ) \<
				fs'8 (
				e'8 )
				a'8 (
				fs'8 )
				d'8 (
				fs'8 )
				a'8 (
				cs''8 )
				e''8 (
				d''8 )
				cs''8 (
				a'8 )
				fs''8 (
				d''8 \f )
				r4
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s8
						\afterGrace
						cs'1 -\fermata
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r4.
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'4.
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				R1
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				R1
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				R1
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				a8 \< (
				cs'8 )
				fs8 (
				e8 )
				d8 (
				cs8 )
				d8 (
				cs8 ) \>
				d8 (
				e8 )
				d8 (
				fs8 )
				d8 (
				cs8 )
				a8 (
				d'8 )
				r4
				r8
				fs'8 \< (
				cs'8
				a8 )
				d'8 (
				e8 )
				d8 (
				e8 )
				d8 (
				a8 )
				d8 (
				fs8 )
				e8 (
				cs8 )
				e8 \> (
				d8 )
				cs8 (
				d8 )
				fs8 (
				a8 )
				d8 (
				d'8 )
				cs'8 (
				d'8 )
				cs'8 (
				d'8 )
				r4
				a8 (
				d'8 ) \<
				cs'8 (
				d'8 )
				e8 (
				a8 )
				fs8 (
				a8 )
				e8 (
				a8 )
				cs8 (
				a,8 )
				d8 (
				fs8 )
				a,8 (
				fs,8 \f )
				r4
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s8
						\afterGrace
						d'1 -\fermata
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r4.
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'4.
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r4
				d'2. \pp ~ \<
				d'2 \p
				r2
				R1
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				r4
				d'2. \pp ~ \<
				d'2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r4
				d'2. \pp ~ \<
				d'2 \p
				r2
				R1
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				r4
				d'2. \pp ~ \<
				d'2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r4
				d'2. \pp ~ \<
				d'2 \p
				r2
				R1
				r4
				cs'2. \pp ~ \<
				cs'2 \p
				r2
				r4
				d'2. \pp ~ \<
				d'2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				d'8 \< (
				cs'8 )
				d'8 (
				fs8 )
				e8 (
				a,8 )
				fs8 (
				cs8 ) \>
				a,8 (
				d8 )
				a,8 (
				d8 )
				a8 (
				fs8 )
				d'8 (
				cs'8 )
				r4
				r8
				e'8 \< (
				cs'8
				a8 )
				fs8 (
				a8 )
				e8 (
				d8 )
				cs8 (
				d8 )
				e8 (
				d8 )
				cs8 (
				e8 )
				a,8 \> (
				d8 )
				e8 (
				cs8 )
				d8 (
				a8 )
				fs8 (
				a8 )
				cs'8 (
				a8 )
				d'8 (
				fs'8 )
				r4
				cs'8 (
				d'8 ) \<
				a8 (
				cs'8 )
				d'8 (
				cs'8 )
				d8 (
				a8 )
				d8 (
				e8 )
				a8 (
				fs8 )
				a,8 (
				d8 )
				cs8 (
				e8 \f )
				r4
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				cs'2.
				cs'4 ~
				cs'4.
				d'8 ~
				d'2 ~
				d'4.
				cs'8 ~
				cs'2
				d'4.
				d'8 ~
				d'2 ~
				d'4.
				d'8 ~
				d'2
				cs'4.
				cs'8 ~
				cs'2 ~
				cs'2.
				e'4
				fs'1
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				e2.
				e4 ~
				e4.
				fs8 ~
				fs2 ~
				fs4.
				e8 ~
				e2
				fs4.
				fs8 ~
				fs2 ~
				fs4.
				fs8 ~
				fs2
				e4.
				e8 ~
				e2 ~
				e2.
				cs'4
				d'1
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						cs'1 \p ^ \markup { bucket mute }
						cs'8 (
						d'4. ~
						d'2 )
						r4
						r8
						cs'8 ~ (
						cs'4
						cs'4
						d'2. )
						cs'4 (
						cs'4.
						d'8 ~
						d'4
						fs'4
						cs'2. )
						cs'8 (
						d'8 ~
						d'4. )
						cs'8 (
						fs'4
						cs'4 )
						fs'2.
						cs'8 (
						d'8 )
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r2
				cs''2
				cs'4. (
				cs''8 ~
				cs''2 )
				r4
				r8
				cs'8 ~ (
				cs'2 ~
				cs'4.
				fs'8 ~
				fs'2 ~
				fs'2. )
				d'4 (
				cs'2. )
				cs'4 (
				cs''4. )
				cs'8 ~ (
				cs'8
				cs''4. )
				fs'4 (
				cs''8
				d''8
				cs'4 )
				cs'4
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s4
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s4 ^ \markup { bowed, repeat }
						cs'2 -\fermata \pp
						\afterGrace
						gs''2 -\fermata
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r4
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'4
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s4
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s4 ^ \markup { bowed, repeat }
						cs'2 -\fermata
						\afterGrace
						gs''2 -\fermata
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r4
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'4
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s4
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s4
						cs'2 -\fermata
						\afterGrace
						gs''2 -\fermata
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r4
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'4
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				\context Staff {#(set-accidental-style 'modern)}
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				\context Staff {#(set-accidental-style 'modern)}
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				{
					\time 32/4
					{
						c4
							^ \markup { repeat }
							_ \markup { dan }
						c8 _ \markup { da }
						c8 _ \markup { da }
						r2 -\fermata
						s1
						s1
						s1
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 _ \markup { dan }
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat slowing down }
							_ \markup { da }
						s2
						s1
						s1
						s1
						c4 _ \markup { dan }
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat slowing down }
							_ \markup { da }
						s2
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r2
						r4
						r8 [
						c16
						c16 ]
						c4
						c8
						c8
						r2
						r2
						r4
						r8 [
						c16
						c16 ]
						c4
						c8
						c8
						r2
						r2
						r4
						r8 [
						c16
						c16 ]
						c4
						c8
						c8
						r2
						r2
						r4
						r8 [
						c16
						c16 ]
						c4
						c8
						c8
						r2
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				\context Staff {#(set-accidental-style 'modern)}
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				c4 _ \markup { don }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				c4 _ \markup { don }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				{
					\time 32/4
					{
						c4
							^ \markup { repeat }
							_ \markup { dan }
						c8 _ \markup { da }
						c8 _ \markup { da }
						r2 -\fermata
						s1
						s1
						s1
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4
							^ \markup { repeat }
							_ \markup { dan }
						c8 _ \markup { da }
						c8 _ \markup { da }
						r2 -\fermata
						s1
						s1
						s1
						c4 _ \markup { dan }
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat slowing down }
							_ \markup { da }
						s2
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 _ \markup { dan }
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat slowing down }
							_ \markup { da }
						s2
						s1
						s1
						s1
						r2
						r4
						r8 [
						c16
						c16 ]
						c4
						c8
						c8
						r2
						r2
						r4
						r8 [
						c16
						c16 ]
						c4
						c8
						c8
						r2
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				r8 [
				c16
				c16 ]
				c4
				c8
				c8
				r2
				r2
				r4
				r8 [
				c16
				c16 ]
				c4
				c8
				c8
				r2
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { dan }
				c8 _ \markup { da }
				c8 _ \markup { da }
				c4 _ \markup { ka }
				r4
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				c4 _ \markup { don }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				<<
					\context Staff = "violinI_1" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								\afterGrace
								cs'''1 -\fermata \pp
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r4.
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''4.
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								\afterGrace
								cs'''1 -\fermata
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r4.
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''4.
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								\afterGrace
								cs'''1 -\fermata
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r4.
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''4.
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
						R1
						d'4. \p
						d'8 ~
						d'4
						d'4 -\tenuto
						d'4.
						d'8 ~
						d'4
						d'4 -\tenuto
						d'4.
						d'8 ~
						d'4
						d'4 -\tenuto
						d'4.
						d'8 ~
						d'4
						d'4 -\tenuto
						d'4.
						d'8 ~
						d'4
						d'4 -\tenuto
						d'4.
						d'8 ~
						d'4
						d'4 -\tenuto
						d'4.
						d'8 ~
						d'4
						d'4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
						e''4. \mp
						e''8 ~
						e''4
						e''4 -\tenuto
						e''4.
						e''8 ~
						e''4
						e''4 -\tenuto
						e''4.
						e''8 ~
						e''4
						e''4 -\tenuto
						e''4.
						e''8 ~
						e''4
						e''4 -\tenuto
						e''4.
						e''8 ~
						e''4
						e''4 -\tenuto
						e''4.
						e''8 ~
						e''4
						e''4 -\tenuto
						e''4.
						e''8 ~
						e''4
						e''4 -\tenuto
						e''4.
						e''8 ~
						e''4
						e''4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
						cs'8 \mp (
						d'8 )
						e'8 (
						cs'8 )
						d'8 (
						fs'8 )
						cs'8 (
						d'8 )
						e'8 (
						cs'8 )
						fs'8 (
						cs'8 )
						fs'8 (
						d'8 )
						e'8 (
						cs'8 )
						d'8 (
						e'8 )
						d'8 (
						e'8 )
						cs'8 (
						e'8 )
						fs'8 (
						e'8 )
						cs'8 (
						e'8 )
						fs'8 (
						d'8 )
						e'8 (
						d'8 )
						fs'8 (
						e'8 )
						fs'8 (
						fs'8 )
						cs'8 (
						d'8 )
						e'8 (
						cs'8 )
						e'8 (
						cs'8 )
						d'8 (
						e'8 )
						cs'8 (
						e'8 )
						d'8 (
						cs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						e'8 )
						cs'8 (
						e'8 )
						fs'8 (
						e'8 )
						cs''8 (
						fs'8 )
						e''8 (
						d''8 )
						e''8 (
						fs''8 )
						e''8 (
						fs''8 )
						e''8 (
						fs''8 )
					}
					\context Staff = "violinI_2" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								cs''2. -\fermata \ppp
								\times 4/5 {
									cs''2. (
									\afterGrace
									d''2 )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								r4
								cs''8 (
								fs''1 )
								fs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								r4
								cs''8 (
								fs''1 )
								fs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							cs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
						d''4. \mp
						d''8 ~
						d''4
						d''4 -\tenuto
						d''4.
						d''8 ~
						d''4
						d''4 -\tenuto
						d''4.
						d''8 ~
						d''4
						d''4 -\tenuto
						d''4.
						d''8 ~
						d''4
						d''4 -\tenuto
						d''4.
						d''8 ~
						d''4
						d''4 -\tenuto
						d''4.
						d''8 ~
						d''4
						d''4 -\tenuto
						d''4.
						d''8 ~
						d''4
						d''4 -\tenuto
						d''4.
						d''8 ~
						d''4
						d''4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
						d'8 \mp (
						fs'8 )
						e'8 (
						fs'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						fs'8 (
						cs'8 )
						d'8 (
						cs'8 )
						fs'8 (
						d'8 )
						e'8 (
						fs'8 )
						e'8 (
						d'8 )
						fs'8 (
						d'8 )
						cs'8 (
						e'8 )
						fs'8 (
						e'8 )
						fs'8 (
						d'8 )
						e'8 (
						d'8 )
						cs'8 (
						fs'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						cs'8 (
						fs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						d'8 )
						cs'8 (
						fs'8 )
						cs'8 (
						d'8 )
						fs'8 (
						cs'8 )
						d'8 (
						e'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs''8 )
						fs'8 (
						cs''8 )
						d''8 (
						cs''8 )
						d''8 (
						fs''8 )
						d''8 (
						e''8 )
						fs''8 (
						cs''8 )
					}
					\context Staff = "violinI_3" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4 ^ \markup { repeat }
								r2
								cs''4 \ppp (
								gs''2 )
								d''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								d''2 (
								cs''4. )
								r8
								\times 2/3 {
									gs''4 (
									fs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								d''2 (
								cs''4. )
								r8
								\times 2/3 {
									gs''4 (
									fs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							gs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							cs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
						e'8 (
						d'8 )
						fs'8 (
						d'8 )
						e'8 (
						fs'8 )
						e'8 (
						fs'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs'8 )
						d'8 (
						fs'8 )
						e'8 (
						d'8 )
						fs'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						cs'8 )
						e'8 (
						fs'8 )
						d'8 (
						fs'8 )
						d'8 (
						fs'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						fs'8 (
						cs'8 )
						e'8 (
						fs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						fs'8 )
						e'8 (
						cs'8 )
						e'8 (
						fs'8 )
						d'8 (
						cs'8 )
						e'8 (
						fs'8 )
						cs''8 (
						e'8 )
						cs''8 (
						fs'8 )
						e''8 (
						cs''8 )
						d''8 (
						fs''8 )
						cs''8 (
						e''8 )
					}
					\context Staff = "violinI_4" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								r4
								cs''8 \ppp (
								d''1 )
								cs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								cs''2. -\fermata
								\times 4/5 {
									d''2. (
									\afterGrace
									fs''2 )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								cs''2. -\fermata
								\times 4/5 {
									d''2. (
									\afterGrace
									fs''2 )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							d''4 (
							\afterGrace
							cs''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							gs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
						d'8 (
						fs'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						cs'8 (
						d'8 )
						cs'8 (
						d'8 )
						e'8 (
						d'8 )
						cs'8 (
						fs'8 )
						d'8 (
						cs'8 )
						e'8 (
						cs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						fs'8 )
						d'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						cs'8 )
						e'8 (
						fs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						fs'8 )
						cs'8 (
						e'8 )
						d'8 (
						e'8 )
						d'8 (
						e'8 )
						cs'8 (
						e'8 )
						fs'8 (
						d'8 )
						cs'8 (
						d'8 )
						e'8 (
						fs'8 )
						cs''8 (
						d''8 )
						e''8 (
						d''8 )
						e''8 (
						fs''8 )
						cs''8 (
						d''8 )
						cs''8 (
						fs''8 )
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								cs''2 \ppp (
								d''4. )
								r8
								\times 2/3 {
									gs''4 (
									cs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4
								r2
								fs''4 (
								cs''2 )
								d''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4
								r2
								fs''4 (
								cs''2 )
								d''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							d''4 (
							\afterGrace
							gs''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							d''4 (
							\afterGrace
							cs''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
						fs'8 (
						e'8 )
						cs'8 (
						e'8 )
						cs'8 (
						e'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						cs'8 (
						fs'8 )
						cs'8 (
						d'8 )
						fs'8 (
						e'8 )
						fs'8 (
						e'8 )
						cs'8 (
						e'8 )
						fs'8 (
						e'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						fs'8 (
						d'8 )
						cs'8 (
						e'8 )
						fs'8 (
						d'8 )
						e'8 (
						cs'8 )
						d'8 (
						cs'8 )
						d'8 (
						cs'8 )
						fs'8 (
						e'8 )
						cs'8 (
						d'8 )
						cs'8 (
						fs'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs'8 )
						e'8 (
						cs'8 )
						e'8 (
						d'8 )
						cs'8 (
						d'8 )
						e'8 (
						fs'8 )
						e''8 (
						fs'8 )
						d''8 (
						cs''8 )
						e''8 (
						d''8 )
						fs''8 (
						d''8 )
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { vln.I }
						\context Staff {#(set-accidental-style 'modern)}
						cs''1
							^ \markup {
								\italic
									{
										"tutti Violin I"
									}
								}
						cs''8 (
						d''4. ~
						d''2 )
						r4
						r8
						cs''8 ~ (
						cs''4
						e''4
						d''2. )
						cs''4 (
						e''4.
						d''8 ~
						d''4
						fs''4
						cs''2. )
						cs''8 (
						d''8 ~
						d''4. )
						cs''8 (
						fs''4
						e''4 )
						fs''2.
						cs''8 (
						d''8 )
					}
				>>
				\context Staff {#(set-accidental-style 'modern)}
				r2
				a''2
				e''4. (
				a''8 ~
				a''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				a''4. )
				e''8 ~ (
				e''8
				a''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
			}
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				<<
					\context Staff = "violinII_1" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								cs''1
								cs''8 (
								d''4. ~
								d''2 )
								r4
								r8
								cs''8 ~ (
								cs''4
								d''4
								cs''2. )
								cs''4 (
								d''4.
								cs''8 ~
								cs''4
								d''4
								cs''2. )
								cs''8 (
								d''8 ~
								d''4. )
								cs''8 (
								d''4
								cs''4 )
								cs''1 -\fermata
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								r2
								cs''2
								cs'4. (
								cs''8 ~
								cs''2 )
								r4
								r8
								cs'8 ~ (
								cs'2 ~
								cs'4.
								fs'8 ~
								fs'2 ~
								fs'2. )
								d'4 (
								cs'2. )
								cs'4 (
								cs''4. )
								cs'8 ~ (
								cs'8
								cs''4. )
								fs'4 (
								cs''8
								d''8
								cs'4 )
								cs'4
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							s1 * 8
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
						R1
						cs'4. \p
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
						cs''4. \mp
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						cs''4.
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						cs''4.
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						cs''4.
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						cs''4.
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						cs''4.
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						cs''4.
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						cs''4.
						cs''8 ~
						cs''4
						cs''4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
						e'8 \mp (
						fs'8 )
						cs'8 (
						e'8 )
						fs'8 (
						cs'8 )
						d'8 (
						cs'8 )
						fs'8 (
						d'8 )
						e'8 (
						d'8 )
						e'8 (
						fs'8 )
						e'8 (
						d'8 )
						fs'8 (
						e'8 )
						cs'8 (
						e'8 )
						d'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						d'8 )
						fs'8 (
						d'8 )
						e'8 (
						fs'8 )
						d'8 (
						fs'8 )
						cs'8 (
						e'8 )
						d'8 (
						fs'8 )
						d'8 (
						fs'8 )
						d'8 (
						e'8 )
						fs'8 (
						cs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						d'8 )
						fs'8 (
						cs'8 )
						d'8 (
						fs'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						fs'8 (
						cs''8 )
						d''8 (
						e''8 )
						fs''8 (
						e''8 )
						cs''8 (
						d''8 )
					}
					\context Staff = "violinII_2" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								cs''2. -\fermata \ppp
								\times 4/5 {
									cs''2. (
									\afterGrace
									d''2 )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								r4
								cs''8 (
								d''1 )
								cs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								r4
								cs''8 (
								d''1 )
								cs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							cs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
						fs'4. \mp
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						fs'4.
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						fs'4.
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						fs'4.
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						fs'4.
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						fs'4.
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						fs'4.
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						fs'4.
						fs'8 ~
						fs'4
						fs'4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
						d'8 \mp (
						cs'8 )
						fs'8 (
						fs'8 )
						e'8 (
						fs'8 )
						e'8 (
						fs'8 )
						d'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						fs'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						d'8 )
						fs'8 (
						cs'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs'8 )
						fs'8 (
						cs'8 )
						d'8 (
						cs'8 )
						d'8 (
						e'8 )
						fs'8 (
						cs'8 )
						d'8 (
						cs'8 )
						e'8 (
						d'8 )
						cs'8 (
						d'8 )
						cs'8 (
						fs'8 )
						e'8 (
						fs'8 )
						e'8 (
						d'8 )
						e'8 (
						fs'8 )
						d'8 (
						e'8 )
						fs'8 (
						cs''8 )
						d''8 (
						e''8 )
						fs''8 (
						e''8 )
						fs''8 (
						cs''8 )
						e''8 (
						fs''8 )
					}
					\context Staff = "violinII_3" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4 ^ \markup { repeat }
								r2
								cs''4 \ppp (
								gs''2 )
								d''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								cs''2 (
								fs''4. )
								r8
								\times 2/3 {
									fs''4 (
									cs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								cs''2 (
								fs''4. )
								r8
								\times 2/3 {
									fs''4 (
									cs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							gs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							d''4 (
							\afterGrace
							gs''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs'8 )
						fs'8 (
						d'8 )
						e'8 (
						d'8 )
						e'8 (
						fs'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs'8 )
						e'8 (
						d'8 )
						fs'8 (
						cs'8 )
						d'8 (
						cs'8 )
						d'8 (
						fs'8 )
						cs'8 (
						e'8 )
						fs'8 (
						cs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						e'8 )
						d'8 (
						e'8 )
						fs'8 (
						d'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						fs'8 (
						d'8 )
						e'8 (
						fs'8 )
						d'8 (
						cs'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						fs'8 )
						e'8 (
						fs'8 )
						d''8 (
						e''8 )
						fs''8 (
						e''8 )
						d''8 (
						cs''8 )
						d''8 (
						cs''8 )
					}
					\context Staff = "violinII_4" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								r4
								cs''8 \ppp (
								d''1 )
								cs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								d''2. -\fermata
								\times 4/5 {
									cs''2. (
									\afterGrace
									gs''2 )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								d''2. -\fermata
								\times 4/5 {
									cs''2. (
									\afterGrace
									gs''2 )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							d''4 (
							\afterGrace
							cs''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							cs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
						fs'8 (
						e'8 )
						fs'8 (
						cs'8 )
						d'8 (
						e'8 )
						fs'8 (
						d'8 )
						cs'8 (
						fs'8 )
						cs'8 (
						e'8 )
						fs'8 (
						cs'8 )
						e'8 (
						cs'8 )
						d'8 (
						fs'8 )
						fs'8 (
						cs'8 )
						fs'8 (
						fs'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs'8 )
						d'8 (
						cs'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						cs'8 (
						fs'8 )
						e'8 (
						d'8 )
						e'8 (
						fs'8 )
						cs'8 (
						fs'8 )
						fs'8 (
						cs'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
						cs'8 (
						fs'8 )
						e'8 (
						d'8 )
						fs'8 (
						d'8 )
						cs''8 (
						d''8 )
						cs''8 (
						fs'8 )
						e''8 (
						cs''8 )
						fs''8 (
						d''8 )
						cs''8 (
						fs''8 )
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								cs''2 \ppp (
								d''4. )
								r8
								\times 2/3 {
									gs''4 (
									cs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								gs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4
								r2
								cs''4 (
								d''2 )
								fs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4
								r2
								cs''4 (
								d''2 )
								fs''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							d''4 (
							\afterGrace
							gs''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							gs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
						cs'8 (
						fs'8 )
						e'8 (
						fs'8 )
						cs'8 (
						fs'8 )
						cs'8 (
						e'8 )
						fs'8 (
						d'8 )
						e'8 (
						fs'8 )
						e'8 (
						cs'8 )
						d'8 (
						e'8 )
						fs'8 (
						cs'8 )
						fs'8 (
						e'8 )
						d'8 (
						cs'8 )
						e'8 (
						d'8 )
						e'8 (
						cs'8 )
						e'8 (
						fs'8 )
						d'8 (
						cs'8 )
						e'8 (
						fs'8 )
						e'8 (
						d'8 )
						e'8 (
						cs'8 )
						fs'8 (
						d'8 )
						fs'8 (
						d'8 )
						fs'8 (
						e'8 )
						d'8 (
						fs'8 )
						e'8 (
						fs'8 )
						d'8 (
						cs'8 )
						fs'8 (
						d'8 )
						fs'8 (
						cs'8 )
						fs'8 (
						cs''8 )
						fs'8 (
						e'8 )
						fs'8 (
						d''8 )
						cs''8 (
						e''8 )
						cs''8 (
						e''8 )
						fs''8 (
						d''8 )
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { vln.II }
						\context Staff {#(set-accidental-style 'modern)}
						cs''1
							^ \markup {
								\italic
									{
										"tutti Violin II"
									}
								}
						cs''8 (
						d''4. ~
						d''2 )
						r4
						r8
						cs''8 ~ (
						cs''4
						e''4
						d''2. )
						cs''4 (
						e''4.
						d''8 ~
						d''4
						fs''4
						cs''2. )
						cs''8 (
						d''8 ~
						d''4. )
						cs''8 (
						fs''4
						e''4 )
						fs''2.
						cs''8 (
						d''8 )
					}
				>>
				\context Staff {#(set-accidental-style 'modern)}
				r2
				a''2
				e''4. (
				a''8 ~
				a''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				a''4. )
				e''8 ~ (
				e''8
				a''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
			}
			\context Staff = "viola" {
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { Vla }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\once \override Staff.TimeSignature.stencil = ##f
				<<
					\context Staff = "viola_1" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
						\once \override Staff.TimeSignature.stencil = ##f
						\numericTimeSignature
						{
							\time 32/4
							{
								cs'1
								cs'8 (
								d'4. ~
								d'2 )
								r4
								r8
								cs'8 ~ (
								cs'4
								cs'4
								d'2. )
								cs'4 (
								cs'4.
								d'8 ~
								d'4
								fs'4
								cs'2. )
								cs'8 (
								d'8 ~
								d'4. )
								cs'8 (
								fs'4
								cs'4 )
								fs'2.
								cs'8 (
								d'8 )
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								r2
								cs''2
								cs'4. (
								cs''8 ~
								cs''2 )
								r4
								r8
								cs'8 ~ (
								cs'2 ~
								cs'4.
								fs'8 ~
								fs'2 ~
								fs'2. )
								d'4 (
								cs'2. )
								cs'4 (
								cs''4. )
								cs'8 ~ (
								cs'8
								cs''4. )
								fs'4 (
								cs''8
								d''8
								cs'4 )
								cs'4
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
						R1
						fs4. \p
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
						e'4. \mp
						e'8 ~
						e'4
						e'4 -\tenuto
						e'4.
						e'8 ~
						e'4
						e'4 -\tenuto
						e'4.
						e'8 ~
						e'4
						e'4 -\tenuto
						e'4.
						e'8 ~
						e'4
						e'4 -\tenuto
						e'4.
						e'8 ~
						e'4
						e'4 -\tenuto
						e'4.
						e'8 ~
						e'4
						e'4 -\tenuto
						e'4.
						e'8 ~
						e'4
						e'4 -\tenuto
						e'4.
						e'8 ~
						e'4
						e'4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
						cs8 \mp (
						e8 )
						d8 (
						cs8 )
						e8 (
						d8 )
						fs8 (
						cs8 )
						e8 (
						fs8 )
						d8 (
						e8 )
						d8 (
						fs8 )
						cs8 (
						d8 )
						e8 (
						d8 )
						e8 (
						d8 )
						e8 (
						fs8 )
						cs8 (
						d8 )
						cs8 (
						d8 )
						cs8 (
						e8 )
						fs8 (
						e8 )
						cs8 (
						d8 )
						cs8 (
						fs8 )
						d8 (
						cs8 )
						d8 (
						fs8 )
						e8 (
						cs8 )
						d8 (
						cs8 )
						d8 (
						e8 )
						fs8 (
						d8 )
						fs8 (
						e8 )
						fs8 (
						e8 )
						fs8 (
						e'8 )
						fs8 (
						e'8 )
						d'8 (
						e'8 )
						cs'8 (
						fs'8 )
						cs'8 (
						fs'8 )
						e'8 (
						fs'8 )
						e'8 (
						cs''8 )
					}
					\context Staff = "viola_2" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
						\once \override Staff.TimeSignature.stencil = ##f
						\numericTimeSignature
						{
							\time 32/4
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								r4
								fs''8 (
								cs''1 )
								d''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								r4
								fs''8 (
								cs''1 )
								d''4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							cs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
						cs'4. \mp
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						cs'4.
						cs'8 ~
						cs'4
						cs'4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
						fs8 \mp (
						e8 )
						cs8 (
						d8 )
						cs8 (
						fs8 )
						d8 (
						cs8 )
						fs8 (
						e8 )
						d8 (
						cs8 )
						e8 (
						d8 )
						cs8 (
						fs8 )
						e8 (
						fs8 )
						e8 (
						d8 )
						fs8 (
						cs8 )
						e8 (
						fs8 )
						d8 (
						cs8 )
						d8 (
						cs8 )
						fs8 (
						e8 )
						fs8 (
						cs8 )
						e8 (
						fs8 )
						e8 (
						fs8 )
						d8 (
						e8 )
						d8 (
						e8 )
						fs8 (
						cs8 )
						fs8 (
						cs8 )
						fs8 (
						e8 )
						fs8 (
						d'8 )
						cs'8 (
						fs8 )
						cs'8 (
						fs8 )
						e'8 (
						cs'8 )
						d'8 (
						fs'8 )
						e'8 (
						fs'8 )
						e'8 (
						fs'8 )
						fs'8 (
						cs''8 )
						d''8 (
						cs''8 )
					}
					\context Staff = "viola_3" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
						\once \override Staff.TimeSignature.stencil = ##f
						\numericTimeSignature
						{
							\time 32/4
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								cs''2 (
								d''4. )
								r8
								\times 2/3 {
									cs''4 (
									cs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8
								cs''2 (
								d''4. )
								r8
								\times 2/3 {
									cs''4 (
									cs''2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs''2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d''2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							gs''4 (
							\afterGrace
							d''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						gs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs''4. -\fermata
						\times 2/3 {
							d''4 (
							\afterGrace
							cs''2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
						e8 (
						fs8 )
						cs8 (
						d8 )
						fs8 (
						cs8 )
						e8 (
						fs8 )
						cs8 (
						fs8 )
						cs8 (
						d8 )
						cs8 (
						e8 )
						d8 (
						fs8 )
						d8 (
						fs8 )
						e8 (
						cs8 )
						d8 (
						fs8 )
						cs8 (
						fs8 )
						e8 (
						cs8 )
						d8 (
						e8 )
						cs8 (
						fs8 )
						cs8 (
						d8 )
						fs8 (
						cs8 )
						d8 (
						fs8 )
						cs8 (
						fs8 )
						e8 (
						d8 )
						e8 (
						fs8 )
						e8 (
						cs8 )
						e8 (
						d8 )
						fs8 (
						cs'8 )
						d'8 (
						cs'8 )
						e'8 (
						fs8 )
						cs'8 (
						e'8 )
						d'8 (
						cs'8 )
						fs'8 (
						cs'8 )
						cs'8 (
						d'8 )
						e'8 (
						cs''8 )
						fs'8 (
						e''8 )
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
						\once \override Staff.TimeSignature.stencil = ##f
						{
							s1 * 8
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
						\once \override Staff.TimeSignature.stencil = ##f
						{
							s1 * 8
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
						{
							\time 4/4
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						{
							s1 * 1
						}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
						e8 (
						cs8 )
						fs8 (
						e8 )
						fs8 (
						e8 )
						fs8 (
						e8 )
						cs8 (
						e8 )
						fs8 (
						d8 )
						e8 (
						fs8 )
						e8 (
						d8 )
						fs8 (
						cs8 )
						d8 (
						fs8 )
						e8 (
						d8 )
						e8 (
						cs8 )
						e8 (
						d8 )
						fs8 (
						e8 )
						fs8 (
						cs8 )
						d8 (
						e8 )
						cs8 (
						e8 )
						fs8 (
						e8 )
						fs8 (
						e8 )
						d8 (
						e8 )
						d8 (
						cs8 )
						e8 (
						fs8 )
						e8 (
						cs'8 )
						fs8 (
						d'8 )
						cs'8 (
						fs8 )
						d'8 (
						cs'8 )
						d'8 (
						fs'8 )
						e'8 (
						d'8 )
						fs'8 (
						e'8 )
						fs'8 (
						d'8 )
						e'8 (
						fs'8 )
						e'8 (
						e''8 )
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { vla. }
						\context Staff {#(set-accidental-style 'modern)}
						cs'2.
							^ \markup {
								\italic
									{
										"tutti Viola"
									}
								}
						cs'4 ~
						cs'4.
						d'8 ~
						d'2 ~
						d'4.
						cs'8 ~
						cs'2
						d'4.
						d'8 ~
						d'2 ~
						d'4.
						d'8 ~
						d'2
						cs'4.
						cs'8 ~
						cs'2 ~
						cs'2.
						e'4
						fs'1
					}
				>>
				\context Staff {#(set-accidental-style 'modern)}
				cs1
				cs8 (
				d4. ~
				d2 )
				r4
				r8
				cs8 ~ (
				cs4
				e4
				d2. )
				cs4 (
				e4.
				d8 ~
				d4
				fs4
				cs2. )
				cs8 (
				d8 ~
				d4. )
				cs8 (
				fs4
				e4 )
				fs2.
				cs8 (
				d8 )
			}
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\once \override Staff.TimeSignature.stencil = ##f
				<<
					\context Staff = "cello_1" {
						\clef "bass"
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Cello.1 }
						\set Staff.shortInstrumentName = \markup { vc.1 }
						\set Staff.alignAboveContext = #"cello"
						\once \override Staff.TimeSignature.stencil = ##f
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								cs'2. -\fermata \ppp
								\times 4/5 {
									d'2. (
									\afterGrace
									cs'2 )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.1 }
						\set Staff.shortInstrumentName = \markup { vc.1 }
						\set Staff.alignAboveContext = #"cello"
						R1
						cs4. \p
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.1 }
						\set Staff.shortInstrumentName = \markup { vc.1 }
						\set Staff.alignAboveContext = #"cello"
						fs4. \mp
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						fs4.
						fs8 ~
						fs4
						fs4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.1 }
						\set Staff.shortInstrumentName = \markup { vc.1 }
						\set Staff.alignAboveContext = #"cello"
						fs8 \mp (
						cs8 )
						d8 (
						cs8 )
						fs8 (
						d8 )
						e8 (
						fs8 )
						e8 (
						fs8 )
						e8 (
						cs8 )
						d8 (
						cs8 )
						fs8 (
						e8 )
						cs8 (
						fs8 )
						cs8 (
						fs8 )
						cs8 (
						d8 )
						cs8 (
						fs8 )
						cs8 (
						e8 )
						cs8 (
						fs8 )
						fs8 (
						d8 )
						e8 (
						fs8 )
						cs8 (
						e8 )
						fs8 (
						d8 )
						cs8 (
						e8 )
						cs8 (
						fs8 )
						e8 (
						fs8 )
						e8 (
						d8 )
						cs8 (
						d8 )
						e8 (
						fs8 )
						d8 (
						e8 )
						fs8 (
						cs8 )
						e8 (
						d8 )
						e8 (
						d'8 )
						e'8 (
						cs'8 )
						fs'8 (
						e'8 )
						d'8 (
						e'8 )
						fs'8 (
						e'8 )
					}
					\context Staff = "cello_2" {
						\clef "bass"
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Cello.2 }
						\set Staff.shortInstrumentName = \markup { vc.2 }
						\set Staff.alignAboveContext = #"cello"
						\once \override Staff.TimeSignature.stencil = ##f
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4 ^ \markup { repeat }
								r2
								cs'4 \ppp (
								d'2 )
								cs'4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.2 }
						\set Staff.shortInstrumentName = \markup { vc.2 }
						\set Staff.alignAboveContext = #"cello"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs'4. -\fermata
						\times 2/3 {
							d'4 (
							\afterGrace
							cs'2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.2 }
						\set Staff.shortInstrumentName = \markup { vc.2 }
						\set Staff.alignAboveContext = #"cello"
						cs4. \mp
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						cs4.
						cs8 ~
						cs4
						cs4 -\tenuto
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.2 }
						\set Staff.shortInstrumentName = \markup { vc.2 }
						\set Staff.alignAboveContext = #"cello"
						fs8 \mp (
						cs8 )
						d8 (
						fs8 )
						e8 (
						d8 )
						cs8 (
						e8 )
						d8 (
						fs8 )
						cs8 (
						fs8 )
						cs8 (
						e8 )
						fs8 (
						d8 )
						cs8 (
						e8 )
						fs8 (
						e8 )
						fs8 (
						d8 )
						e8 (
						cs8 )
						d8 (
						fs8 )
						e8 (
						fs8 )
						e8 (
						d8 )
						cs8 (
						e8 )
						fs8 (
						d8 )
						fs8 (
						e8 )
						cs8 (
						d8 )
						cs8 (
						e8 )
						fs8 (
						cs8 )
						d8 (
						e8 )
						fs8 (
						e8 )
						cs8 (
						d8 )
						e8 (
						fs8 )
						e8 (
						d8 )
						cs8 (
						cs'8 )
						d'8 (
						cs'8 )
						d'8 (
						e'8 )
						cs'8 (
						d'8 )
						cs'8 (
						fs'8 )
						d'8 (
						e'8 )
					}
					\context Staff = "cello_3" {
						\clef "bass"
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Cello.3 }
						\set Staff.shortInstrumentName = \markup { vc.3 }
						\set Staff.alignAboveContext = #"cello"
						\once \override Staff.TimeSignature.stencil = ##f
						\numericTimeSignature
						{
							\time 32/4
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								r4
								cs'8 \ppp (
								fs1 )
								cs'4
								\afterGrace
								s8
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.3 }
						\set Staff.shortInstrumentName = \markup { vc.3 }
						\set Staff.alignAboveContext = #"cello"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs'4. -\fermata
						\times 2/3 {
							d'4 (
							\afterGrace
							cs'2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.3 }
						\set Staff.shortInstrumentName = \markup { vc.3 }
						\set Staff.alignAboveContext = #"cello"
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs'4. -\fermata
						\times 2/3 {
							d'4 (
							\afterGrace
							cs'2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.3 }
						\set Staff.shortInstrumentName = \markup { vc.3 }
						\set Staff.alignAboveContext = #"cello"
						cs8 (
						d8 )
						e8 (
						fs8 )
						cs8 (
						d8 )
						e8 (
						cs8 )
						d8 (
						cs8 )
						fs8 (
						e8 )
						d8 (
						fs8 )
						cs8 (
						fs8 )
						cs8 (
						d8 )
						e8 (
						cs8 )
						e8 (
						cs8 )
						fs8 (
						d8 )
						e8 (
						fs8 )
						d8 (
						fs8 )
						e8 (
						fs8 )
						d8 (
						e8 )
						cs8 (
						d8 )
						fs8 (
						e8 )
						cs8 (
						e8 )
						fs8 (
						fs8 )
						e8 (
						d8 )
						fs8 (
						e8 )
						cs8 (
						fs8 )
						e8 (
						fs8 )
						d8 (
						cs8 )
						fs8 (
						e8 )
						cs8 (
						fs8 )
						e8 (
						fs8 )
						cs'8 (
						d'8 )
						fs'8 (
						d'8 )
						cs'8 (
						d'8 )
						e'8 (
						d'8 )
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Cello.4 }
						\set Staff.shortInstrumentName = \markup { vc.4 }
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s8 ^ \markup { mute on }
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s8 ^ \markup { repeat }
								cs'2 \ppp (
								d'4. )
								r8
								\times 2/3 {
									fs4 (
									d'2 -\fermata )
								}
								\afterGrace
								s4
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								fs2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								cs'2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								d'2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.4 }
						\set Staff.shortInstrumentName = \markup { vc.4 }
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs'4. -\fermata
						\times 2/3 {
							fs4 (
							\afterGrace
							cs'2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.4 }
						\set Staff.shortInstrumentName = \markup { vc.4 }
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs'4. -\fermata
						\times 2/3 {
							d'4 (
							\afterGrace
							cs'2 )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.4 }
						\set Staff.shortInstrumentName = \markup { vc.4 }
						e8 (
						d8 )
						e8 (
						d8 )
						e8 (
						cs8 )
						d8 (
						fs8 )
						d8 (
						e8 )
						fs8 (
						e8 )
						fs8 (
						e8 )
						cs8 (
						fs8 )
						cs8 (
						fs8 )
						cs8 (
						d8 )
						fs8 (
						e8 )
						fs8 (
						cs8 )
						fs8 (
						d8 )
						cs8 (
						e8 )
						d8 (
						e8 )
						fs8 (
						d8 )
						e8 (
						d8 )
						e8 (
						d8 )
						fs8 (
						d8 )
						e8 (
						d8 )
						fs8 (
						e8 )
						fs8 (
						d8 )
						e8 (
						d8 )
						cs8 (
						fs8 )
						e8 (
						d8 )
						cs8 (
						e8 )
						fs8 (
						d8 )
						fs8 (
						e8 )
						fs8 (
						e'8 )
						d'8 (
						cs'8 )
						fs'8 (
						e'8 )
						d'8 (
						fs'8 )
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { vc. }
						\context Staff {#(set-accidental-style 'modern)}
						e2.
							^ \markup {
								\italic
									{
										"tutti Cello"
									}
								}
						e4 ~
						e4.
						fs8 ~
						fs2 ~
						fs4.
						e8 ~
						e2
						fs4.
						fs8 ~
						fs2 ~
						fs4.
						fs8 ~
						fs2
						e4.
						e8 ~
						e2 ~
						e2.
						cs'4
						d'1
					}
				>>
				\context Staff {#(set-accidental-style 'modern)}
				cs1
				cs8 (
				d4. ~
				d2 )
				r4
				r8
				cs8 ~ (
				cs4
				e4
				d2. )
				cs4 (
				e4.
				d8 ~
				d4
				fs4
				cs2. )
				cs8 (
				d8 ~
				d4. )
				cs8 (
				fs4
				e4 )
				fs2.
				cs8 (
				d8 )
			}
			\context Staff = "bass" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s8
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						s8
						\afterGrace
						cs'1 -\fermata \ppp
						{
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
						}
						\hideNotes
						r4.
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'4.
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				r4
				cs2. \pp ~ \<
				cs2 \p
				r2
				R1
				r4
				cs2. \pp ~ \<
				cs2 \p
				r2
				r4
				cs2. \pp ~ \<
				cs2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r4
				cs2. \pp ~ \<
				cs2 \p
				r2
				R1
				r4
				cs2. \pp ~ \<
				cs2 \p
				r2
				r4
				cs2. \pp ~ \<
				cs2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r4
				fs2. \pp ~ \<
				fs2 \p
				r2
				R1
				r4
				fs2. \pp ~ \<
				fs2 \p
				r2
				r4
				fs2. \pp ~ \<
				fs2 \p
				r2
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				cs'1
				cs'8 (
				d'4. ~
				d'2 )
				r4
				r8
				cs'8 ~ (
				cs'4
				e'4
				d'2. )
				cs'4 (
				e'4.
				d'8 ~
				d'4
				fs'4
				cs'2. )
				cs'8 (
				d'8 ~
				d'4. )
				cs'8 (
				fs'4
				e'4 )
				fs'2.
				cs'8 (
				d'8 )
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				cs1
				cs8 (
				d4. ~
				d2 )
				r4
				r8
				cs8 ~ (
				cs4
				e4
				d2. )
				cs4 (
				e4.
				d8 ~
				d4
				fs4
				cs2. )
				cs8 (
				d8 ~
				d4. )
				cs8 (
				fs4
				e4 )
				fs2.
				cs8 (
				d8 )
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				r2
				a''2
				e''4. (
				a''8 ~
				a''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				a''4. )
				e''8 ~ (
				e''8
				a''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				cs1 ~
				cs1 ~
				cs1
				fs1 ~
				fs1
				e1 ~
				e1
				d1
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
			}
		>>
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\context Staff {#(set-accidental-style 'forget)}
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				{
					s1
					s1
					s1
					r1 -\fermata
					s1
					s1
					s1
					s1
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					s1
					s1
					s1
					r1 -\fermata
					s1
					s1
					s1
					s1
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					s1
					s1
					s1
					r1 -\fermata
					s1
					s1
					s1
					s1
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'modern)}
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			\context Staff {#(set-accidental-style 'modern)}
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			\context Staff {#(set-accidental-style 'modern)}
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			\context Staff {#(set-accidental-style 'modern)}
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			\context Staff {#(set-accidental-style 'modern)}
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
		}
	>>
}