% 2015-02-08 09:45

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	title = \markup { Clepsydra }
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				g'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				g'''4. -\accent -\staccato
				r4.
				a'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				a'''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				d'''4. -\accent -\staccato
				r4.
				g'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				a'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				f'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				f'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				f'''4. -\accent -\tenuto
				f'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				f'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
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
					\time 56/8
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							gs'8 \p
							f'8
							g'8 ~
						}
						g'4
						\afterGrace
						gs'2
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
						ds'2
						\unHideNotes
						\hideNotes
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
						gs'2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						f'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 5/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							fs'8 \p
							e'8
							gs'8 ~
						}
						gs'4
						\afterGrace
						d'2
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
						b2
						\unHideNotes
						\hideNotes
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
						gs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 5/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							e'8 \p
							cs'8
							ds'8 ~
						}
						ds'4
						\afterGrace
						e'2
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
						b2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						a2
						\unHideNotes
						\hideNotes
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
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 5/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							g'8 \p
							f'8
							a'8 ~
						}
						a'4
						\afterGrace
						ds'2
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
						f'2
						\unHideNotes
						\hideNotes
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
					s1 * 5/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				g''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
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
					\time 56/8
					{
						\times 4/5 {
							f'8 \pp \< (
							b8
							cs'8 )
							b8 (
							f'8 ~
						}
						f'4 )
						b2. \mf
						cs'4 (
						b8 )
						f'4 (
						b8 )
						r4
						cs'4 (
						b8 )
					}
					s1 * 33/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						\times 4/5 {
							c'8 \pp \< (
							d'8
							fs8 )
							b8 (
							d'8 ~
						}
						d'4 )
						c'2. \mf
						d'4 (
						fs8 )
						b4 (
						d'8 )
						r4
						c'4 (
						d'8 )
					}
					s1 * 33/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						\times 4/5 {
							cs'8 \pp \< (
							g8
							a8 )
							g8 (
							cs'8 ~
						}
						cs'4 )
						g2. \mf
						a4 (
						g8 )
						cs'4 (
						g8 )
						r4
						a4 (
						g8 )
					}
					s1 * 33/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						\times 4/5 {
							cs'8 \pp \< (
							ds'8
							g8 )
							c'8 (
							ds'8 ~
						}
						ds'4 )
						cs'2. \mf
						ds'4 (
						g8 )
						c'4 (
						ds'8 )
						r4
						cs'4 (
						ds'8 )
					}
					s1 * 33/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				d'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
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
					\time 56/8
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						f2 -\fermata \p
						b,4 (
						cs8 )
						b,16 (
						\afterGrace
						f2 )
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
						b,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						b,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						f2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						b,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						c2 -\fermata \p
						d4 (
						fs,8 )
						b,16 (
						\afterGrace
						d2 )
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
						c2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						fs,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						b,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						cs2 -\fermata \p
						g,4 (
						a,8 )
						g,16 (
						\afterGrace
						cs2 )
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
						g,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						a,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						g,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						g,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						cs2 -\fermata \p
						ds4 (
						g,8 )
						c16 (
						\afterGrace
						ds2 )
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
						cs2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						ds2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						g,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						c2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						ds2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				d'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				e'4. -\accent -\staccato
				r4.
				d'4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
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
					\time 56/8
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							f,2 \p (
							cs,4 ~
						}
						cs,4 )
						\afterGrace
						b,,2 -\fermata
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
						f,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						b,,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						f,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							c,2 \p (
							e,4 ~
						}
						e,4 )
						\afterGrace
						b,,2 -\fermata
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
						d,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						c,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						e,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						b,,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						d,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							cs,2 \p (
							a,,4 ~
						}
						a,,4 )
						\afterGrace
						g,,2 -\fermata
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
						cs,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						a,,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						g,,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						a,,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							cs,2 \p (
							f,4 ~
						}
						f,4 )
						\afterGrace
						c,2 -\fermata
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
						ds,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						cs,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						f,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						c,2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						ds,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				g'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				g'4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				e'4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				e''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				e''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				fs'4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				e''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				e4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				e''4. -\accent -\staccato
				r4.
				d''4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				e''4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				e''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f,4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				f,4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				f,4. -\accent -\tenuto
				f,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				f,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				d4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				c''4. -\accent \mf (
				f''4. )
				a'4. \< (
				f'4.
				g''4. -\accent \f )
				r4.
				r4.
				c''4. -\tenuto \mf
				c''4. -\tenuto
				r4.
				a'4. \mp ~
				a'4.
				a'4. ~
				a'4.
				a'4. -\tenuto
				r4.
				b'4. -\tenuto \<
				d''4. -\tenuto
				c''4. -\tenuto
				ef''4. -\tenuto
				d''4. -\tenuto
				c''4. ~
				c''4. ~
				c''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''4. -\accent \mf (
				f''4. )
				a'4. \< (
				f'4.
				g''4. -\accent \f )
				r4.
				r4.
				c''4. -\tenuto \mf
				c''4. -\tenuto
				r4.
				a'4. \mp ~
				a'4.
				a'4. ~
				a'4.
				a'4. -\tenuto
				r4.
				b'4. -\tenuto \<
				d''4. -\tenuto
				c''4. -\tenuto
				ef''4. -\tenuto
				d''4. -\tenuto
				c''4. ~
				c''4. ~
				c''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				f''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				f''4. -\accent -\tenuto
				f''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				f''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				d''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a'4. -\accent \mf (
				c''4. )
				f'4. \< (
				c''4.
				d''4. -\accent \f )
				r4.
				r4.
				b'4. -\tenuto \mf
				b'4. -\tenuto
				r4.
				g'4. \mp ~
				g'4.
				g'4. ~
				g'4.
				g'4. -\tenuto
				r4.
				d'4. -\tenuto \<
				b'4. -\tenuto
				ef'4. -\tenuto
				c''4. -\tenuto
				f'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. -\accent \mf (
				c''4. )
				f'4. \< (
				c''4.
				d''4. -\accent \f )
				r4.
				r4.
				b'4. -\tenuto \mf
				b'4. -\tenuto
				r4.
				g'4. \mp ~
				g'4.
				g'4. ~
				g'4.
				g'4. -\tenuto
				r4.
				d'4. -\tenuto \<
				b'4. -\tenuto
				ef'4. -\tenuto
				c''4. -\tenuto
				f'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				e''4. -\accent -\staccato
				r4.
				d''4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				e''4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				d4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				e4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				ef,4. -\accent \mf ~
				ef,4.
				f,4. ~ \< (
				f,4.
				c,4. -\accent \f )
				r4.
				r4.
				c,4. ~
				c,4.
				r4.
				ef,4. \mp ~
				ef,4.
				ef,4. ~
				ef,4.
				ef,4. -\tenuto
				r4.
				f,4. -\tenuto \<
				f,4. -\tenuto
				ef,4. -\tenuto
				ef,4. -\tenuto
				f,4. -\tenuto
				f,4. ~
				f,4. ~
				f,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef,4. -\accent \mf ~
				ef,4.
				f,4. ~ \< (
				f,4.
				c,4. -\accent \f )
				r4.
				r4.
				c,4. ~
				c,4.
				r4.
				ef,4. \mp ~
				ef,4.
				ef,4. ~
				ef,4.
				ef,4. -\tenuto
				r4.
				f,4. -\tenuto \<
				f,4. -\tenuto
				ef,4. -\tenuto
				ef,4. -\tenuto
				f,4. -\tenuto
				f,4. ~
				f,4. ~
				f,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs,4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				d4. -\accent -\tenuto
				e4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				ef,,4. -\accent \mf ~
				ef,,4.
				f,,4. ~ \< (
				f,,4.
				c,,4. -\accent \f )
				r4.
				r4.
				c,,4. ~
				c,,4.
				r4.
				ef,,4. \mp ~
				ef,,4.
				ef,,4. ~
				ef,,4.
				ef,,4. -\tenuto
				r4.
				f,,4. -\tenuto \<
				f,,4. -\tenuto
				ef,,4. -\tenuto
				ef,,4. -\tenuto
				f,,4. -\tenuto
				f,,4. ~
				f,,4. ~
				f,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef,,4. -\accent \mf ~
				ef,,4.
				f,,4. ~ \< (
				f,,4.
				c,,4. -\accent \f )
				r4.
				r4.
				c,,4. ~
				c,,4.
				r4.
				ef,,4. \mp ~
				ef,,4.
				ef,,4. ~
				ef,,4.
				ef,,4. -\tenuto
				r4.
				f,,4. -\tenuto \<
				f,,4. -\tenuto
				ef,,4. -\tenuto
				ef,,4. -\tenuto
				f,,4. -\tenuto
				f,,4. ~
				f,,4. ~
				f,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b,,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				g,,4. -\accent -\staccato
				r4.
				d,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				d,4. -\accent -\tenuto
				fs,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
			}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''4.
				b'4.
				cs''4.
				g''4.
				g''4.
				g''4.
				d''4.
				d''4.
				d''4.
				f''4.
				g''4.
				b''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''4.
				b'4.
				b'4.
				d''4.
				d''4.
				d''4.
				d''4.
				a'4.
				d''4.
				b'4.
				b'4.
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''4.
				a'4.
				b'4.
				f''4.
				f''4.
				f''4.
				c''4.
				c''4.
				c''4.
				ef''4.
				f''4.
				a''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''4.
				a'4.
				a'4.
				c''4.
				c''4.
				c''4.
				c''4.
				g'4.
				c''4.
				a'4.
				a'4.
				a'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				e'4. -\accent -\tenuto
			}
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4.
				a'4.
				b'4.
				c''4.
				c''4.
				c''4.
				a'4.
				a'4.
				a'4.
				g'4.
				b'4.
				d''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4.
				d'4.
				b4.
				a'4.
				a'4.
				a'4.
				a'4.
				d''4.
				a'4.
				g'4.
				b4.
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4.
				g'4.
				a'4.
				bf'4.
				bf'4.
				bf'4.
				g'4.
				g'4.
				g'4.
				f'4.
				a'4.
				c''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4.
				c'4.
				a4.
				g'4.
				g'4.
				g'4.
				g'4.
				c''4.
				g'4.
				f'4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				d'4. -\accent -\staccato
				r4.
				d'4. -\accent -\staccato
				r4.
				f'4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				f'4. -\accent -\tenuto
				f'4. -\accent -\tenuto
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				f'4. -\accent -\tenuto
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				d'4. -\accent -\tenuto
			}
			\context Staff = "viola" {
				\clef "alto"
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'4.
				a4.
				a4.
				c'4.
				c'4.
				c'4.
				d'4.
				d'4.
				d'4.
				c'4.
				f'4.
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4.
				g4.
				g4.
				d'4.
				d'4.
				d'4.
				f'4.
				f'4.
				f'4.
				b4.
				g4.
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c'4.
				g4.
				g4.
				bf4.
				bf4.
				bf4.
				c'4.
				c'4.
				c'4.
				bf4.
				ef'4.
				f'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4.
				f4.
				f4.
				c'4.
				c'4.
				c'4.
				ef'4.
				ef'4.
				ef'4.
				a4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				g4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				d4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				e4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g4. -\accent -\tenuto
				b4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4.
				c4.
				g4.
				ef4.
				ef4.
				ef4.
				f4.
				f4.
				f4.
				a4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,4.
				a,4.
				a,4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf,4.
				bf,4.
				f4.
				cs4.
				cs4.
				cs4.
				ef4.
				ef4.
				ef4.
				g4.
				g4.
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				d,4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				d,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\tenuto
				d,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				d,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				d,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf,4.
				g4.
				f4.
				ef4.
				ef4.
				ef4.
				f4.
				f4.
				f4.
				g4.
				g4.
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,4.
				a,4.
				a,4.
				f4.
				f4.
				f4.
				d4.
				d4.
				d4.
				f4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af,4.
				f4.
				ef4.
				cs4.
				cs4.
				cs4.
				ef4.
				ef4.
				ef4.
				f4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				ef4.
				ef4.
				ef4.
				c4.
				c4.
				c4.
				ef4.
				ef4.
				ef4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				b,,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				g,,4. -\accent -\staccato
				r4.
				d,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				d,4. -\accent -\tenuto
				fs,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 9/8
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
				}
				{
					s1 * 9/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 6/8
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
				{
					s1 * 3/4
				}
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
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. ~
				a4. ~
				a4.
				a4. ~
				a4. ~
				a4.
				a4. ~
				a4. ~
				a4.
				a4. ~
				a4. ~
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d4. ~
				d4. ~
				d4.
				d4. ~
				d4. ~
				d4.
				d4. ~
				d4. ~
				d4.
				d4. ~
				d4. ~
				d4.
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
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
				f,4. ~
				f,4.
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
				\time 56/8
				{
					s1
					s1
					s1
					r1 -\fermata
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
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'modern)}
			{
				\time 9/8
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
			}
			{
				s1 * 9/8
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
		}
	>>
}