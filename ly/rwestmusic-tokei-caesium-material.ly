% 2015-02-02 20:00

\version "2.18.2"
\language "english"

#(set-global-staff-size 13)

\header {
	composer = \markup { Randall West }
	title = \markup { Tokei for Taiko and Orchestra }
}

\layout {
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
	\context Score = "caesium-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context Staff = "flute1" {
			\set Staff.instrumentName = \markup { Flute 1 }
			\set Staff.shortInstrumentName = \markup { Fl.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			r2
			r4
			a''4 -\staccato
			a''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			r2
			r4
			a''4 -\staccato
			a''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			a''8 [ (
			bf''8
			a''8
			df'''8 ] )
			bf''8 [ (
			df'''8
			bf''8
			df'''8 ] )
			a''8 [ (
			e''8
			af''8
			df''8 ] )
			e''8 [ (
			df''8
			a''8
			f''8 ] )
			e''8 [ (
			ef''8
			a'8
			bf'8 ] )
			df''8 [ (
			e''8
			b'8
			bf'8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "flute2" {
			\set Staff.instrumentName = \markup { Flute 2 }
			\set Staff.shortInstrumentName = \markup { Fl.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			r2
			r4
			e''4 -\staccato
			e''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			r2
			r4
			e''4 -\staccato
			e''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			c'''8 [ (
			e'''8
			c'''8
			bf''8 ] )
			f''8 [ (
			e''8
			df'''8
			e''8 ] )
			f''8 [ (
			a''8
			af''8
			e''8 ] )
			df''8 [ (
			a''8
			df''8
			d''8 ] )
			f''8 [ (
			bf'8
			ef''8
			f''8 ] )
			bf'8 [ (
			d''8
			a'8
			d''8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "oboe1" {
			\set Staff.instrumentName = \markup { Oboe 1 }
			\set Staff.shortInstrumentName = \markup { Ob.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			r2
			r4
			a''4 -\staccato
			a''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			r2
			r4
			a''4 -\staccato
			a''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			a''8 [ (
			e''8
			a''8
			as''8 ] )
			cs''8 [ (
			as''8
			a''8
			gs''8 ] )
			a''8 [ (
			f''8
			e''8
			cs''8 ] )
			e''8 [ (
			fs''8
			e''8
			a'8 ] )
			f'8 [ (
			e'8
			gs'8
			a'8 ] )
			e'8 [ (
			d'8
			fs'8
			b'8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "oboe2" {
			\set Staff.instrumentName = \markup { Oboe 2 }
			\set Staff.shortInstrumentName = \markup { Ob.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			r2
			r4
			gs''4 -\staccato
			gs''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			r2
			r4
			gs''4 -\staccato
			gs''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			c'''8 [ (
			a''8
			e''8
			f''8 ] )
			e''8 [ (
			f''8
			e''8
			a''8 ] )
			d''8 [ (
			f''8
			e''8
			as'8 ] )
			a'8 [ (
			fs''8
			cs''8
			a'8 ] )
			d''8 [ (
			a'8
			e'8
			f'8 ] )
			a'8 [ (
			b'8
			d'8
			a'8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "oboe3" {
			\set Staff.instrumentName = \markup { Oboe 3 }
			\set Staff.shortInstrumentName = \markup { Ob.3 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			r2
			r4
			cs''4 -\staccato
			cs''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			r2
			r4
			cs''4 -\staccato
			cs''4 -\staccato
			r4
			r2
			R1
			\bar "||"
			e''8 [ (
			a''8
			bf''8
			a''8 ] )
			bf''8 [ (
			a''8
			e''8
			af''8 ] )
			a''8 [ (
			d''8
			e''8
			a'8 ] )
			af'8 [ (
			bf'8
			a'8
			d''8 ] )
			a'8 [ (
			b'8
			af'8
			df''8 ] )
			bf'8 [ (
			b'8
			d'8
			gf'8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "clarinet1" {
			\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
			\set Staff.shortInstrumentName = \markup { Cl.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			e''8 [ (
			a''8
			a'8
			as'8 ] )
			a'8 [ (
			cs''8
			gs'8
			as'8 ] )
			e''8 [ (
			d''8
			cs''8
			e'8 ] )
			cs''8 [ (
			a'8
			fs'8
			e'8 ] )
			a'8 [ (
			gs'8
			b8
			cs'8 ] )
			as8 [ (
			a8
			fs'8
			e'8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "clarinet2" {
			\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
			\set Staff.shortInstrumentName = \markup { Cl.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			bf'8 [ (
			c''8
			e''8
			df''8 ] )
			f''8 [ (
			bf'8
			df''8
			e''8 ] )
			bf'8 [ (
			a'8
			df''8
			e'8 ] )
			af'8 [ (
			e'8
			gf'8
			f'8 ] )
			a'8 [ (
			af'8
			ef'8
			bf8 ] )
			f'8 [ (
			gf'8
			bf8
			b8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "bassoon1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bassoon 1 }
			\set Staff.shortInstrumentName = \markup { Bsn.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			a'8 [ (
			e'8
			c'8
			e'8 ] )
			cs'8 [ (
			as8
			gs8
			e8 ] )
			d8 [ (
			as8
			a8
			gs8 ] )
			e8 [ (
			cs8
			a,8
			as,8 ] )
			d8 [ (
			b,8
			as,8
			e,8 ] )
			f,8 [ (
			as,8
			b,8
			fs,8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "bassoon2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bassoon 2 }
			\set Staff.shortInstrumentName = \markup { Bsn.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			e'8 [ (
			c'8
			e'8
			f'8 ] )
			bf8 [ (
			f8
			e8
			df'8 ] )
			f8 [ (
			a8
			bf8
			af8 ] )
			bf,8 [ (
			a,8
			bf,8
			a,8 ] )
			bf,8 [ (
			ef8
			b,8
			bf,8 ] )
			df8 [ (
			gf,8
			e,8
			d,8 ] )
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "horn1" {
			\set Staff.instrumentName = \markup { Horn in F 1 }
			\set Staff.shortInstrumentName = \markup { Hn.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			a1 \mp ~ \<
			a1 \mf
			\bar "||"
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				a2.. \mp ~ \<
			}
			{
				a2.. \mp
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				a2.. \mp ~ \<
			}
			{
				a2.. \mp
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				a2.. \mp ~ \<
			}
			{
				a2.. \mp
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			a1 \mp ~ \<
			a1 \mf
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				gs4. -\accent -\tenuto
				a4. -\tenuto
				cs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				gs'4. -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'8 -\tenuto [
				r8 ]
			}
			{
				a'4 -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				fs'4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				df'4. -\accent -\tenuto
				af4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				gf'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				df''8 -\tenuto [
				r8 ]
			}
			{
				bf'4 -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "horn2" {
			\set Staff.instrumentName = \markup { Horn in F 2 }
			\set Staff.shortInstrumentName = \markup { Hn.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			bf1 \mp ~ \<
			bf1 \mf
			\bar "||"
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				bf2.. \mp ~ \<
			}
			{
				bf2.. \mp
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				bf2.. \mp ~ \<
			}
			{
				bf2.. \mp
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				bf2.. \mp ~ \<
			}
			{
				bf2.. \mp
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			bf1 \mp ~ \<
			bf1 \mf
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				e'4. -\accent -\tenuto
				d'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				a'4. -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
			}
			{
				gs'4 -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				d''4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				gs4. -\accent -\tenuto
				a4. -\tenuto
				gs8 -\tenuto [
				r8 ]
				fs8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				ds4. -\accent -\tenuto
				cs8 -\tenuto [
				r8 ]
				a8 -\tenuto [
				r8 ]
			}
			{
				gs4 -\accent -\tenuto
				fs8 -\tenuto [
				r8 ]
				cs4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "horn3" {
			\set Staff.instrumentName = \markup { Horn in F 3 }
			\set Staff.shortInstrumentName = \markup { Hn.3 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				df'4. -\accent -\tenuto
				f'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				df'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				ef'4. -\accent -\tenuto
				df'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
			}
			{
				f'4 -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				af4. -\accent -\tenuto
				df'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				df'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				ef'4. -\accent -\tenuto
				df'8 -\tenuto [
				r8 ]
				ef'8 -\tenuto [
				r8 ]
			}
			{
				f'4 -\accent -\tenuto
				af'8 -\tenuto [
				r8 ]
				gf'4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "horn4" {
			\set Staff.instrumentName = \markup { Horn in F 4 }
			\set Staff.shortInstrumentName = \markup { Hn.4 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				a4. -\accent -\tenuto
				gs4. -\tenuto
				a8 -\tenuto [
				r8 ]
				gs8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				cs'4. -\accent -\tenuto
				a8 -\tenuto [
				r8 ]
				ds'8 -\tenuto [
				r8 ]
			}
			{
				cs'4 -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				cs'4. -\accent -\tenuto
				a4. -\tenuto
				a8 -\tenuto [
				r8 ]
				cs'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				a4. -\accent -\tenuto
				cs8 -\tenuto [
				r8 ]
				ds8 -\tenuto [
				r8 ]
			}
			{
				cs4 -\accent -\tenuto
				a,8 -\tenuto [
				r8 ]
				b,4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "trumpet1" {
			\set Staff.instrumentName = \markup { Trumpet in C 1 }
			\set Staff.shortInstrumentName = \markup { Tpt.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				cs''4. -\accent -\tenuto
				a'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				b'4. -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
			}
			{
				cs''4 -\accent -\tenuto
				d''8 -\tenuto [
				r8 ]
				a'4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				df'4. -\accent -\tenuto
				f'4. -\tenuto
				af'8 -\tenuto [
				r8 ]
				df''8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
			}
			{
				bf'4 -\accent -\tenuto
				df''8 -\tenuto [
				r8 ]
				gf''4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "trumpet2" {
			\set Staff.instrumentName = \markup { Trumpet in C 2 }
			\set Staff.shortInstrumentName = \markup { Tpt.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				\time 10/8
				{
					a''8
					r1
					r8
				}
			}
			{
				\time 7/8
				{
					r2..
				}
			}
			{
				{
					r2..
				}
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			{
				a''8
				r2..
			}
			{
				r1
			}
			{
				r8
				r2..
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				af'4. -\accent -\tenuto
				df''4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				gf'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
			}
			{
				bf'4 -\accent -\tenuto
				b'8 -\tenuto [
				r8 ]
				df''4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				e'4. -\accent -\tenuto
				d'4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				b'4. -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'8 -\tenuto [
				r8 ]
			}
			{
				a'4 -\accent -\tenuto
				b'8 -\tenuto [
				r8 ]
				b'4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "trombone1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tenor Trombone 1 }
			\set Staff.shortInstrumentName = \markup { Tbn.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				af4. -\accent -\tenuto
				d'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				af8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				af4. -\accent -\tenuto
				af8 -\tenuto [
				r8 ]
				af8 -\tenuto [
				r8 ]
			}
			{
				f4 -\accent -\tenuto
				d8 -\tenuto [
				r8 ]
				d4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
			}
		}
		\context Staff = "trombone2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tenor Trombone 2 }
			\set Staff.shortInstrumentName = \markup { Tbn.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				a4. -\accent -\tenuto
				a4. -\tenuto
				cs'8 -\tenuto [
				r8 ]
				a8 -\tenuto [
				r8 ]
			}
			{
				\time 7/8
				cs'4. -\accent -\tenuto
				a8 -\tenuto [
				r8 ]
				gs8 -\tenuto [
				r8 ]
			}
			{
				cs4 -\accent -\tenuto
				b,8 -\tenuto [
				r8 ]
				a,4. -\tenuto
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
			}
		}
		\context Staff = "tuba" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tuba }
			\set Staff.shortInstrumentName = \markup { Tba }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
			}
		}
		\context RhythmicStaff = "perc1" {
			\set Staff.instrumentName = \markup { Percussion 1 }
			\set Staff.shortInstrumentName = \markup { Perc.1 }
			\numericTimeSignature
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				c2. :32 \pp \<
				c8 -\accent \f
				\bar "||"
			}
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			R1
			c2 :32 \pp ~ \<
			c4. :32
			c8 -\accent \f
			\bar "||"
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			R1
			R1
			c2 :32 \pp ~ \<
			c4. :32
			c8 -\accent \f
			\bar "||"
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			R1
			c2 :32 \pp ~ \<
			c4. :32
			c8 -\accent \f
			\bar "||"
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				c2. :32 \pp \<
				c8 -\accent \f
				\bar "||"
			}
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				c2. :32 \pp \<
				c8 -\accent \f
				\bar "||"
			}
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				c2. :32 \pp \<
				c8 -\accent \f
				\bar "||"
			}
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				r4.
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				c2. :32 \pp \<
				c8 -\accent \f
				\bar "||"
			}
			s8 ^ \markup { *dampen }
			s4
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context RhythmicStaff = "perc2" {
			\set Staff.instrumentName = \markup { Percussion 2 }
			\set Staff.shortInstrumentName = \markup { Perc.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "timpani" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Timpani }
			\set Staff.shortInstrumentName = \markup { Timp }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				fs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				fs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				fs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 10/8
				fs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				fs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				fs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				fs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
			}
			{
				\time 7/8
				r4.
				r4
				r4
			}
			{
				r4
				r4
				r4.
			}
		}
		\context RhythmicStaff = "shime" {
			\set Staff.instrumentName = \markup { Shime }
			\set Staff.shortInstrumentName = \markup { Sh. }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context RhythmicStaff = "odaiko" {
			\set Staff.instrumentName = \markup { Odaiko }
			\set Staff.shortInstrumentName = \markup { O.d. }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
			}
		}
		\context RhythmicStaff = "taiko1" {
			\set Staff.instrumentName = \markup { Taiko 1 }
			\set Staff.shortInstrumentName = \markup { T.1 }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				\time 7/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
			}
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				\time 7/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
			}
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
			}
		}
		\context RhythmicStaff = "taiko2" {
			\set Staff.instrumentName = \markup { Taiko 2 }
			\set Staff.shortInstrumentName = \markup { T.2. }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				\time 7/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
			}
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				\time 7/8
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
			}
			{
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
			}
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			c8 [ \< _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] _ \markup { ko }
			c8 [ _ \markup { do }
			c8 ] \! _ \markup { ko }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			r8 _ \markup { tsu }
			c8 -\accent _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 [ \< _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
			}
			{
				\time 7/8
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] \! _ \markup { ko }
				r8 _ \markup { tsu }
			}
			{
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			c8 [ _ \markup { ka }
			c8 _ \markup { do }
			c8 ] _ \markup { don }
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
			}
			{
				\time 7/8
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
			}
			{
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				c8 [ _ \markup { ka }
				c8 _ \markup { do }
				c8 ] _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ \< _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
			}
			{
				\time 7/8
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] \! _ \markup { ko }
				r8 _ \markup { tsu }
			}
			{
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ \< _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
			}
			{
				\time 7/8
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] \! _ \markup { ko }
				r8 _ \markup { tsu }
			}
			{
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ \< _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
			}
			{
				\time 7/8
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] \! _ \markup { ko }
				r8 _ \markup { tsu }
			}
			{
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
			}
			{
				\time 10/8
				c8 [ \< _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
			}
			{
				\time 7/8
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] \! _ \markup { ko }
				r8 _ \markup { tsu }
			}
			{
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				\time 7/8
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
			}
			{
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
			}
		}
		\context Staff = "violinI_div1" {
			\set Staff.instrumentName = \markup { Violin I 1 }
			\set Staff.shortInstrumentName = \markup { Vln.I.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			bf8 -\staccato ]
			bf8 -\staccato [
			f'8 -\staccato ]
			af'8 -\staccato [
			af'8 -\staccato ]
			af'8 -\staccato [
			df'8 -\staccato ]
			bf8 -\staccato [
			a8 -\staccato ]
			bf8 -\staccato [
			bf8 -\staccato ]
			b8 -\staccato [
			b8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			gf'8 -\staccato [
			e'8 -\staccato ]
			gf'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			\bar "||"
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			f'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			cs''8 -\staccato ]
			d''8 -\staccato [
			a'8 -\staccato ]
			a'8 -\staccato [
			b'8 -\staccato ]
			b'8 -\staccato [
			e''8 -\staccato ]
			e''8 -\staccato [
			fs''8 -\staccato ]
			e''8 -\staccato [
			fs''8 -\staccato ]
			fs''8 -\staccato [
			g''8 -\staccato ]
			a''8 -\staccato [
			g''8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "violinI_div2" {
			\set Staff.instrumentName = \markup { Violin I 2 }
			\set Staff.shortInstrumentName = \markup { Vln.I.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			a'8 -\staccato [
			c''8 -\staccato ]
			c''8 -\staccato [
			bf'8 -\staccato ]
			f'8 -\staccato [
			bf8 -\staccato ]
			a8 -\staccato [
			bf8 -\staccato ]
			a'8 -\staccato [
			a'8 -\staccato ]
			f'8 -\staccato [
			e'8 -\staccato ]
			d'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			g8 -\staccato [
			a8 -\staccato ]
			a8 -\staccato [
			bf8 -\staccato ]
			a8 -\staccato [
			a8 -\staccato ]
			g8 -\staccato [
			d'8 -\staccato ]
			\bar "||"
			c'8 -\staccato [
			bf8 -\staccato ]
			c'8 -\staccato [
			bf8 -\staccato ]
			f'8 -\staccato [
			bf'8 -\staccato ]
			a'8 -\staccato [
			af'8 -\staccato ]
			bf'8 -\staccato [
			af'8 -\staccato ]
			a'8 -\staccato [
			d''8 -\staccato ]
			f''8 -\staccato [
			g''8 -\staccato ]
			e''8 -\staccato [
			e''8 -\staccato ]
			bf''8 -\staccato [
			a''8 -\staccato ]
			bf''8 -\staccato [
			bf''8 -\staccato ]
			a''8 -\staccato [
			a''8 -\staccato ]
			g''8 -\staccato [
			d'''8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "violinII_div1" {
			\set Staff.instrumentName = \markup { Violin II 1 }
			\set Staff.shortInstrumentName = \markup { Vln.II.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			a'8 -\staccato [
			a'8 -\staccato ]
			a'8 -\staccato [
			f'8 -\staccato ]
			e'8 -\staccato [
			f'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			d'8 -\staccato [
			d'8 -\staccato ]
			e'8 -\staccato [
			a'8 -\staccato ]
			g'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			fs'8 -\staccato ]
			e'8 -\staccato [
			fs'8 -\staccato ]
			a'8 -\staccato [
			g'8 -\staccato ]
			a'8 -\staccato [
			g'8 -\staccato ]
			\bar "||"
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			f'8 -\staccato ]
			bf'8 -\staccato [
			bf'8 -\staccato ]
			af'8 -\staccato [
			bf'8 -\staccato ]
			af'8 -\staccato [
			af'8 -\staccato ]
			a'8 -\staccato [
			bf'8 -\staccato ]
			bf'8 -\staccato [
			b'8 -\staccato ]
			bf'8 -\staccato [
			b'8 -\staccato ]
			b'8 -\staccato [
			df''8 -\staccato ]
			df''8 -\staccato [
			df'''8 -\staccato ]
			df'''8 -\staccato [
			bf''8 -\staccato ]
			bf''8 -\staccato [
			bf''8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "violinII_div2" {
			\set Staff.instrumentName = \markup { Violin II 2 }
			\set Staff.shortInstrumentName = \markup { Vln.II.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			as8 -\staccato [
			as8 -\staccato ]
			a8 -\staccato [
			as8 -\staccato ]
			as8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			cs'8 -\staccato ]
			e'8 -\staccato [
			f'8 -\staccato ]
			a8 -\staccato [
			b8 -\staccato ]
			b8 -\staccato [
			as8 -\staccato ]
			b8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			as'8 -\staccato ]
			as'8 -\staccato [
			as'8 -\staccato ]
			\bar "||"
			e'8 -\staccato [
			a8 -\staccato ]
			a8 -\staccato [
			f'8 -\staccato ]
			f'8 -\staccato [
			f'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			a'8 -\staccato ]
			as'8 -\staccato [
			d''8 -\staccato ]
			d''8 -\staccato [
			e''8 -\staccato ]
			g''8 -\staccato [
			a''8 -\staccato ]
			g''8 -\staccato [
			a''8 -\staccato ]
			a''8 -\staccato [
			a''8 -\staccato ]
			as''8 -\staccato [
			d'''8 -\staccato ]
			e'''8 -\staccato [
			d'''8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "viola_div1" {
			\set Staff.instrumentName = \markup { Viola 1 }
			\set Staff.shortInstrumentName = \markup { Vla.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			a8 -\staccato [
			a8 -\staccato ]
			a'8 -\staccato [
			a'8 -\staccato ]
			a'8 -\staccato [
			a'8 -\staccato ]
			df'8 -\staccato [
			a8 -\staccato ]
			af8 -\staccato [
			af8 -\staccato ]
			a8 -\staccato [
			a8 -\staccato ]
			d'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			gf'8 -\staccato ]
			df'8 -\staccato [
			df'8 -\staccato ]
			df'8 -\staccato [
			d'8 -\staccato ]
			d'8 -\staccato [
			d'8 -\staccato ]
			\bar "||"
			a8 -\staccato [
			a8 -\staccato ]
			a8 -\staccato [
			a8 -\staccato ]
			a8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			a'8 -\staccato ]
			a'8 -\staccato [
			a'8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			fs'8 -\staccato ]
			fs''8 -\staccato [
			fs''8 -\staccato ]
			a'8 -\staccato [
			g''8 -\staccato ]
			g''8 -\staccato [
			g''8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				cs'1 ~
				cs'4
			}
			{
				\time 7/8
				cs'2..
			}
			{
				cs'2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				cs'1 ~
				cs'4
			}
			{
				\time 7/8
				cs'2..
			}
			{
				cs'2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "viola_div2" {
			\set Staff.instrumentName = \markup { Viola 2 }
			\set Staff.shortInstrumentName = \markup { Vla.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			e'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			cs'8 -\staccato ]
			as8 -\staccato [
			as8 -\staccato ]
			gs8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			gs'8 -\staccato ]
			a'8 -\staccato [
			as'8 -\staccato ]
			f'8 -\staccato [
			e'8 -\staccato ]
			e'8 -\staccato [
			b8 -\staccato ]
			as8 -\staccato [
			cs'8 -\staccato ]
			as8 -\staccato [
			fs8 -\staccato ]
			as8 -\staccato [
			as8 -\staccato ]
			as8 -\staccato [
			as8 -\staccato ]
			\bar "||"
			a8 -\staccato [
			e8 -\staccato ]
			a8 -\staccato [
			bf8 -\staccato ]
			bf8 -\staccato [
			a8 -\staccato ]
			bf8 -\staccato [
			a8 -\staccato ]
			a8 -\staccato [
			bf8 -\staccato ]
			a'8 -\staccato [
			a'8 -\staccato ]
			d'8 -\staccato [
			e'8 -\staccato ]
			a'8 -\staccato [
			g'8 -\staccato ]
			a'8 -\staccato [
			bf'8 -\staccato ]
			a'8 -\staccato [
			a'8 -\staccato ]
			e''8 -\staccato [
			d''8 -\staccato ]
			d''8 -\staccato [
			a''8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				a1 ~
				a4
			}
			{
				\time 7/8
				a2..
			}
			{
				a2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				a1 ~
				a4
			}
			{
				\time 7/8
				a2..
			}
			{
				a2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "cello_div1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Cello 1 }
			\set Staff.shortInstrumentName = \markup { Vc.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			e8 -\staccato [
			e8 -\staccato ]
			e8 -\staccato [
			e8 -\staccato ]
			cs8 -\staccato [
			e8 -\staccato ]
			e8 -\staccato [
			e8 -\staccato ]
			e8 -\staccato [
			e8 -\staccato ]
			d8 -\staccato [
			d8 -\staccato ]
			a8 -\staccato [
			b8 -\staccato ]
			a8 -\staccato [
			g8 -\staccato ]
			b8 -\staccato [
			a8 -\staccato ]
			fs8 -\staccato [
			a8 -\staccato ]
			fs8 -\staccato [
			g8 -\staccato ]
			d8 -\staccato [
			g8 -\staccato ]
			\bar "||"
			a,8 -\staccato [
			a,8 -\staccato ]
			e,8 -\staccato [
			cs8 -\staccato ]
			cs8 -\staccato [
			e8 -\staccato ]
			cs8 -\staccato [
			gs,8 -\staccato ]
			gs,8 -\staccato [
			e8 -\staccato ]
			d8 -\staccato [
			e8 -\staccato ]
			a8 -\staccato [
			e8 -\staccato ]
			e8 -\staccato [
			b8 -\staccato ]
			e'8 -\staccato [
			e'8 -\staccato ]
			fs'8 -\staccato [
			e'8 -\staccato ]
			fs'8 -\staccato [
			e'8 -\staccato ]
			d'8 -\staccato [
			e'8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				af1 ~
				af4
			}
			{
				\time 7/8
				af2..
			}
			{
				af2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				af1 ~
				af4
			}
			{
				\time 7/8
				af2..
			}
			{
				af2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "cello_div2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Cello 2 }
			\set Staff.shortInstrumentName = \markup { Vc.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			c'8 -\staccato [
			a8 -\staccato ]
			bf8 -\staccato [
			f8 -\staccato ]
			f8 -\staccato [
			bf8 -\staccato ]
			bf8 -\staccato [
			af8 -\staccato ]
			bf8 -\staccato [
			bf8 -\staccato ]
			a8 -\staccato [
			a8 -\staccato ]
			a8 -\staccato [
			g8 -\staccato ]
			bf8 -\staccato [
			a8 -\staccato ]
			a8 -\staccato [
			bf8 -\staccato ]
			a8 -\staccato [
			a8 -\staccato ]
			e8 -\staccato [
			d8 -\staccato ]
			g8 -\staccato [
			a8 -\staccato ]
			\bar "||"
			as,8 -\staccato [
			c8 -\staccato ]
			as,8 -\staccato [
			as,8 -\staccato ]
			as,8 -\staccato [
			as,8 -\staccato ]
			gs,8 -\staccato [
			cs8 -\staccato ]
			cs8 -\staccato [
			cs8 -\staccato ]
			f8 -\staccato [
			f8 -\staccato ]
			e8 -\staccato [
			as8 -\staccato ]
			b8 -\staccato [
			as8 -\staccato ]
			b8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			cs'8 -\staccato ]
			cs'8 -\staccato [
			as8 -\staccato ]
			as'8 -\staccato [
			as'8 -\staccato ]
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				cs1 ~
				cs4
			}
			{
				\time 7/8
				cs2..
			}
			{
				cs2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				cs1 ~
				cs4
			}
			{
				\time 7/8
				cs2..
			}
			{
				cs2..
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "bass_div1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bass 1 }
			\set Staff.shortInstrumentName = \markup { Cb.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "bass_div2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bass 2 }
			\set Staff.shortInstrumentName = \markup { Cb.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 -\accent ]
			\xNotesOff
			\xNotesOn
			c'8 [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\xNotesOff
			\xNotesOn
			c'8 -\accent [
			\xNotesOff
			\xNotesOn
			c'8 ]
			\bar "||"
			\xNotesOff
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "line_1" {
			\set Staff.instrumentName = \markup { Line 1 }
			\set Staff.shortInstrumentName = \markup { Ln.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "line_2" {
			\set Staff.instrumentName = \markup { Line 2 }
			\set Staff.shortInstrumentName = \markup { Ln.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "harmony_1" {
			\set Staff.instrumentName = \markup { Harmony 1 }
			\set Staff.shortInstrumentName = \markup { Har.1 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context Staff = "harmony_2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Harmony 2 }
			\set Staff.shortInstrumentName = \markup { Har.2 }
			\numericTimeSignature
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\numericTimeSignature
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
				\bar "||"
			}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			{
				\time 10/8
				s1 * 5/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
		}
	>>
}