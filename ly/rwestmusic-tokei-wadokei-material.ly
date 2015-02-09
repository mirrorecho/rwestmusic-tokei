% 2015-02-09 12:47

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	title = \markup { Tokei for Taiko and Orchestra }
}

\layout {
	\context {
		\override VerticalAxisGroup #'remove-first = ##t
	}
	\context {
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
	\context Score = "wadokei-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context StaffGroup = "winds" <<
			\context Staff = "flute1" {
				\set Staff.instrumentName = \markup { Flute 1 }
				\set Staff.shortInstrumentName = \markup { Fl.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
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
						s8 ^ \markup { wait for taiko strike, then repeat 2 or 3 times, slowing down }
						r4 -\fermata
						c'1 \pp \< (
						b'2. \mp \>
						d'2 \p )
						r4
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
						c'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						b'2
						\unHideNotes
						\hideNotes
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						e'1 \pp \< (
						c'2. \mp \>
						b'2 \p )
						r4
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
						e'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						c'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						b'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
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
						s8 ^ \markup { wait for taiko strike, then repeat 2 or 3 times, slowing down }
						r4 -\fermata
						a'2 \pp \< (
						fs'1 \mp )
						r2
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
						a'2
						\unHideNotes
						\hideNotes
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
						a'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 1/2
					\bar ";"
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						g'2 \pp \< (
						a'1 \mp )
						r2
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
						g'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						a'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						g'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				a''4. (
				b''4. )
				a''4. -\tenuto
				a''4. (
				b''4. )
				a''4. -\tenuto
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\tempo 4.=108
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
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4.=108
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
					\time 49/8
					{
						c4 -\accent \f _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 -\accent _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4.=108
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
					\time 49/8
					{
						c4 -\accent \f _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 -\accent _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a''4. \p ~ \<
				a''4. ~
				a''4. \mf
				a''4. ^ \markup { pizz }
				r4.
				a''4. -\tenuto ^ \markup { arco }
				r4.
				a''4. -\tenuto
				a''4. ^ \markup { pizz }
				a''4.
				r4.
				a''4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. \p ~ \<
				a''4. ~
				a''4. \mf
				a''4. ^ \markup { pizz }
				r4.
				a''4. -\tenuto ^ \markup { arco }
				r4.
				a''4. -\tenuto
				a''4. ^ \markup { pizz }
				a''4.
				r4.
				a''4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf'4.
				a''4.
				a''4.
				ef''4.
				c''4.
				c''4.
				bf'4.
				bf'4.
				bf'4.
				bf'4.
				f'4.
				g''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4.
				g''4.
				a'4.
				cs''4.
				cs''4.
				e'4.
				g'4.
				fs''4.
				fs''4.
				e''4.
				cs''4.
				d''4.
			}
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				b'4. \p ~ \<
				b'4. ~
				b'4. \mf
				b'4. ^ \markup { pizz }
				r4.
				b'4. -\tenuto ^ \markup { arco }
				r4.
				b'4. -\tenuto
				b'4. ^ \markup { pizz }
				b'4.
				r4.
				b'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. \p ~ \<
				b'4. ~
				b'4. \mf
				b'4. ^ \markup { pizz }
				r4.
				b'4. -\tenuto ^ \markup { arco }
				r4.
				b'4. -\tenuto
				b'4. ^ \markup { pizz }
				b'4.
				r4.
				b'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c'4.
				c'4.
				cs'4.
				cs'4.
				ef'4.
				ef'4.
				a'4.
				a'4.
				a'4.
				a'4.
				f'4.
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4.
				g'4.
				a4.
				b4.
				e'4.
				e'4.
				ef'4.
				cs'4.
				e'4.
				e'4.
				e'4.
				e'4.
			}
			\context Staff = "viola" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { Vla }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a'4. \p ~ \<
				a'4. ~
				a'4. \mf
				a'4. ^ \markup { pizz }
				r4.
				a'4. -\tenuto ^ \markup { arco }
				r4.
				a'4. -\tenuto
				a'4. ^ \markup { pizz }
				a'4.
				r4.
				a'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. \p ~ \<
				a'4. ~
				a'4. \mf
				a'4. ^ \markup { pizz }
				r4.
				a'4. -\tenuto ^ \markup { arco }
				r4.
				a'4. -\tenuto
				a'4. ^ \markup { pizz }
				a'4.
				r4.
				a'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf4.
				g4.
				g4.
				g4.
				g4.
				g4.
				g'4.
				g'4.
				c'4.
				g'4.
				cs'4.
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4.
				g4.
				g4.
				a4.
				a4.
				a4.
				cs'4.
				f4.
				e4.
				a4.
				d'4.
				d'4.
			}
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a4. \p ~ \<
				a4. ~
				a4. \mf
				a4. ^ \markup { pizz }
				r4.
				a4. -\tenuto ^ \markup { arco }
				r4.
				a4. -\tenuto
				a4. ^ \markup { pizz }
				a4.
				r4.
				a4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. \p ~ \<
				a4. ~
				a4. \mf
				a4. ^ \markup { pizz }
				r4.
				a4. -\tenuto ^ \markup { arco }
				r4.
				a4. -\tenuto
				a4. ^ \markup { pizz }
				a4.
				r4.
				a4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				c4.
				g,4.
				g,4.
				ef4.
				cs4.
				cs4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				a,4.
				a,4.
				a,4.
				g,4.
				g,4.
				g,4.
				cs4.
				cs4.
				cs4.
			}
			\context Staff = "bass" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				g4. \p ~ \<
				g4. ~
				g4. \mf
				g4. ^ \markup { pizz }
				r4.
				g4. -\tenuto ^ \markup { arco }
				r4.
				g4. -\tenuto
				g4. ^ \markup { pizz }
				g4.
				r4.
				g4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. \p ~ \<
				g4. ~
				g4. \mf
				g4. ^ \markup { pizz }
				r4.
				g4. -\tenuto ^ \markup { arco }
				r4.
				g4. -\tenuto
				g4. ^ \markup { pizz }
				g4.
				r4.
				g4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				c4.
				c4.
				c4.
				f4.
				cs4.
				cs4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				g,4.
				g,4.
				g,4.
				a,4.
				a,4.
				a,4.
				cs4.
				cs4.
				cs4.
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a,4. ~
				a,4. ~
				a,4.
				a,4. ~
				a,4. ~
				a,4.
				a,4. ~
				a,4. ~
				a,4.
				g,4. ~
				g,4. ~
				g,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,4. ~
				a,4. ~
				a,4.
				a,4. ~
				a,4. ~
				a,4.
				a,4. ~
				a,4. ~
				a,4.
				g,4. ~
				g,4. ~
				g,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. ~
				c4. ~
				c4.
				c4. ~
				c4. ~
				c4.
				c4. ~
				c4. ~
				c4.
				c4. ~
				c4. ~
				c4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. ~
				g4. ~
				g4.
				g4. ~
				g4. ~
				g4.
				g4. ~
				g4. ~
				g4.
				g4. ~
				g4. ~
				g4.
			}
		>>
	>>
}