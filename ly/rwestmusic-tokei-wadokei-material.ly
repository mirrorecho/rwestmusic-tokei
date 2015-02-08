% 2015-02-08 01:28

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	title = \markup { Tokei for Taiko and Orchestra }
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
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b''4. -\accent -\staccato
				r4.
				ef'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				ef'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				af'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a'''4. -\accent -\tenuto
				af'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				ef'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						a'''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				af'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				af'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				af'''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						af'''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ef'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				ef'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				af''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				af''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				ef'''4. -\accent -\tenuto
				af''4. -\accent -\tenuto
				ef'''4. -\accent -\tenuto
				f'''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						r8
						a''1 \ppp ~ \<
						a''1 -\fermata \mp
						r4
						s4
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				af''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						r8
						gs''1 \ppp ~ \<
						gs''1 -\fermata \mp
						r4
						s4
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						r8
						cs''1 \ppp ~ \<
						cs''1 -\fermata \mp
						r4
						s4
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b''4. -\accent -\staccato
				r4.
				ef'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				ef'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				af''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				af''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				ef'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						cs'''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				af''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				af''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				af''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						a''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ef'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				ef'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				af'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				af'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				ef'4. -\accent -\tenuto
				af'4. -\accent -\tenuto
				ef'4. -\accent -\tenuto
				f'4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						af'8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				af'4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						f'8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				fs'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				af'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				af'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				a'4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				af'4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						cs''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				b,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				af4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						af8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ef''4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				ef''4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				af'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				af'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				ef''4. -\accent -\tenuto
				af'4. -\accent -\tenuto
				ef''4. -\accent -\tenuto
				f''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						a'8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						f,8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						af''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b'4. -\accent -\staccato
				r4.
				ef''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				ef''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				af''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				af''4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				ef''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						cs''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b,4. -\accent -\staccato
				r4.
				ef4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				ef4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				af,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				af,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				ef4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						af,8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				fs,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				af,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				af,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				af,4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						cs8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ef,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				ef,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				af,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				af,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				ef,4. -\accent -\tenuto
				af,,4. -\accent -\tenuto
				ef,4. -\accent -\tenuto
				f,,4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						cs,8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				af4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						a8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				a4. -\accent -\tenuto
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						af8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "viola" {
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { Vla }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b4. -\accent -\staccato
				r4.
				ef4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				ef4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				af4. -\accent -\staccato
				r4.
				fs4. -\accent -\tenuto
				a4. -\accent -\tenuto
				af4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				b4. -\accent -\tenuto
				ef4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						f8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				fs,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				af,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				af,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				af,4. -\accent -\tenuto
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				<<
					\context Staff = "cello_s" {
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Sollo Cello }
						\set Staff.shortInstrumentName = \markup { s.vc. }
						\set Staff.alignAboveContext = #"cello"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 36/8
							{
								s8
								r1 -\fermata
								s2
								\times 2/3 {
									f'1 \pp \< ( ^ \markup { Solo Cello }
									fs'2 \mp )
								}
							}
							s1 * 15/8
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Sollo Cello }
						\set Staff.shortInstrumentName = \markup { s.vc. }
						\set Staff.alignAboveContext = #"cello"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							\time 38/8
							{
								\times 4/5 {
									f'2 (
									fs'4 )
									cs'4 (
									fs'4 )
								}
								a'8 (
								fs'4. )
								f'1 -\fermata
								fs'1 -\fermata
								cs'1 -\fermata
								r4
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						{
							\time 36/8
							{
								af,8 -\accent -\staccato
								s1
								r1 -\fermata
								s2
							}
							s1 * 15/8
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						{
							\time 38/8
							s1 * 19/4
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\once \override Staff.TimeSignature.stencil = ##f
						{
							\time 36/8
							s1 * 9/2
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
				>>
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "bass" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ef,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				ef,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				af,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				af,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				ef,4. -\accent -\tenuto
				af,,4. -\accent -\tenuto
				ef,4. -\accent -\tenuto
				f,,4. -\accent -\tenuto
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
						cs,8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 15/8
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					s1 * 19/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 9/2
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				a,4. ~
				a,4.
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 36/8
					{
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
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 38/8
					{
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
					}
					s1 * 1/4
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 36/8
					{
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
						b4. ~
						b4. ~
						b4.
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\context Staff {#(set-accidental-style 'modern)}
			\numericTimeSignature
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
			}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			{
				\time 36/8
				s1 * 9/2
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				\time 38/8
				s1 * 19/4
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				\time 36/8
				s1 * 9/2
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 9/2
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 9/2
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 9/2
			}
			\context Staff {#(set-accidental-style 'modern)}
		}
	>>
}