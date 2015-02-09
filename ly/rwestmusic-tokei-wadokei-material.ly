% 2015-02-09 04:55

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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				a''4. \pp ~ \<
				a''4. ~
				a''4. ~
				a''4. ~
				a''4. ~
				a''4. \mp
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
				b''4. \pp ~ \<
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. \mp
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				d'4. \pp ~ \< (
				d'4. ~
				d'4.
				e''4. ~
				e''4. ~
				e''4. \mp )
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
				e'4. \pp ~ \< (
				e'4. ~
				e'4.
				fs''4. ~
				fs''4. ~
				fs''4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				r4.
				d'4. \pp ~ \< (
				d'4.
				e'4. )
				d'4. (
				e'4. \mp )
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
				r4.
				e'4. \pp ~ \< (
				e'4.
				fs'4. )
				e'4. (
				fs'4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				r4.
				f4. \pp ~ \< (
				f4.
				b4. )
				b4. (
				cs'4. \mp )
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
				r4.
				g4. \pp ~ \< (
				g4.
				cs'4. )
				cs'4. (
				ds'4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				r4.
				a4. \pp ~ \< (
				a4.
				e'4. ~
				e'4. ~
				e'4. \mp )
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
				r4.
				b4. \pp ~ \< (
				b4.
				fs'4. ~
				fs'4. ~
				fs'4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				r4.
				d4. \pp ~ \< (
				d4.
				b4. ~
				b4. ~
				b4. \mp )
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
				r4.
				e4. \pp ~ \< (
				e4.
				cs'4. ~
				cs'4. ~
				cs'4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				r4.
				f,4. \pp ~ \< (
				f,4.
				g,4. ~
				g,4. ~
				g,4. \mp )
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
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
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
						a'4. \mf ^ \markup { repeat (steady beat) }
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
						a'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 1/4
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						c4. ^ \markup { solo taiko cadenza... }
						s1
						s1
						s1
					}
					s1 * 5/8
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				d'4. \pp ~ \<
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. \mp
				r4.
				d'4. \pp ~ \<
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. \mp
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
				fs''4. \p \< (
				cs''4.
				ds''4.
				fs''4. ~
				fs''4. \mp )
				r4.
				b''4. \pp ~ \<
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. \mp
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
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
				b'4. \p ~ \< (
				b'4.
				cs''4.
				b'4. ~
				b'4. \mp )
				r4.
				e''4. \pp ~ \< (
				e''4. ~
				e''4.
				d'4. ~
				d'4. ~
				d'4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				e'4. \pp ~ \<
				e'4. ~
				e'4. ~
				e'4. \mp
				r4.
				r4.
				e'4. \pp ~ \<
				e'4. ~
				e'4. ~
				e'4. ~
				e'4. \mp
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
				e'4. \p \< (
				cs'4. ~
				cs'4.
				e'4. ~
				e'4. \mp )
				r4.
				r4.
				e'4. \pp ~ \< (
				e'4.
				d'4. )
				e'4. (
				d'4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. \mp
				r4.
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
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
				d'4. \p \< (
				b4. ~
				b4.
				d'4. ~
				d'4. \mp )
				r4.
				r4.
				b4. \pp ~ \< (
				b4.
				g4. )
				cs'4. (
				a4. \mp )
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
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
						r1 -\fermata
						s1
						s1
					}
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
	>>
}