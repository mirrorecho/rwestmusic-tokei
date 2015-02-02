% 2015-02-02 00:28

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
	\context Score = "wadokei-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context Staff = "flute1" {
			\set Staff.instrumentName = \markup { Flute 1 }
			\set Staff.shortInstrumentName = \markup { Fl.1 }
			\numericTimeSignature
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
			\numericTimeSignature
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
			\numericTimeSignature
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
			}
		}
		\context Staff = "oboe2" {
			\set Staff.instrumentName = \markup { Oboe 2 }
			\set Staff.shortInstrumentName = \markup { Ob.2 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "oboe3" {
			\set Staff.instrumentName = \markup { Oboe 3 }
			\set Staff.shortInstrumentName = \markup { Ob.3 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "clarinet1" {
			\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
			\set Staff.shortInstrumentName = \markup { Cl.1 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "clarinet2" {
			\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
			\set Staff.shortInstrumentName = \markup { Cl.2 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "bassoon1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bassoon 1 }
			\set Staff.shortInstrumentName = \markup { Bsn.1 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "bassoon2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bassoon 2 }
			\set Staff.shortInstrumentName = \markup { Bsn.2 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "horn1" {
			\set Staff.instrumentName = \markup { Horn in F 1 }
			\set Staff.shortInstrumentName = \markup { Hn.1 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "horn2" {
			\set Staff.instrumentName = \markup { Horn in F 2 }
			\set Staff.shortInstrumentName = \markup { Hn.2 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "horn3" {
			\set Staff.instrumentName = \markup { Horn in F 3 }
			\set Staff.shortInstrumentName = \markup { Hn.3 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "horn4" {
			\set Staff.instrumentName = \markup { Horn in F 4 }
			\set Staff.shortInstrumentName = \markup { Hn.4 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "trumpet1" {
			\set Staff.instrumentName = \markup { Trumpet in C 1 }
			\set Staff.shortInstrumentName = \markup { Tpt.1 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "trumpet2" {
			\set Staff.instrumentName = \markup { Trumpet in C 2 }
			\set Staff.shortInstrumentName = \markup { Tpt.2 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "trombone1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tenor Trombone 1 }
			\set Staff.shortInstrumentName = \markup { Tbn.1 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "trombone2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tenor Trombone 2 }
			\set Staff.shortInstrumentName = \markup { Tbn.2 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "tuba" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tuba }
			\set Staff.shortInstrumentName = \markup { Tba }
			\numericTimeSignature
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
			}
		}
		\context RhythmicStaff = "perc1" {
			\set Staff.instrumentName = \markup { Percussion 1 }
			\set Staff.shortInstrumentName = \markup { Perc.1 }
			\numericTimeSignature
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
			}
		}
		\context RhythmicStaff = "perc2" {
			\set Staff.instrumentName = \markup { Percussion 2 }
			\set Staff.shortInstrumentName = \markup { Perc.2 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "timpani" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Timpani }
			\set Staff.shortInstrumentName = \markup { Timp }
			\numericTimeSignature
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
			}
		}
		\context RhythmicStaff = "shime" {
			\set Staff.instrumentName = \markup { Shime }
			\set Staff.shortInstrumentName = \markup { Sh. }
			\numericTimeSignature
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
			}
		}
		\context RhythmicStaff = "odaiko" {
			\set Staff.instrumentName = \markup { Odaiko }
			\set Staff.shortInstrumentName = \markup { O.d. }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
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
			}
		}
		\context RhythmicStaff = "taiko1" {
			\set Staff.instrumentName = \markup { Taiko 1 }
			\set Staff.shortInstrumentName = \markup { T.1 }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
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
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			\bar "||"
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
		}
		\context RhythmicStaff = "taiko2" {
			\set Staff.instrumentName = \markup { Taiko 2 }
			\set Staff.shortInstrumentName = \markup { T.2. }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
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
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			\bar "||"
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			c4 _ \markup { do }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { do }
			c4 _ \markup { ka }
			c8 _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			r8 [
			r8
			c8 ] _ \markup { don }
			\bar "||"
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
		\context Staff = "violinI" {
			\set Staff.instrumentName = \markup { Violin I }
			\set Staff.shortInstrumentName = \markup { Vln.I }
			\xNotesOn
			\numericTimeSignature
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
		}
		\context Staff = "violinII" {
			\set Staff.instrumentName = \markup { Violin II }
			\set Staff.shortInstrumentName = \markup { Vln.II }
			\xNotesOn
			\numericTimeSignature
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
		}
		\context Staff = "viola" {
			\set Staff.instrumentName = \markup { Viola }
			\set Staff.shortInstrumentName = \markup { Vla }
			\xNotesOn
			\numericTimeSignature
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
		}
		\context Staff = "cello" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Cello }
			\set Staff.shortInstrumentName = \markup { Vc. }
			\xNotesOn
			\numericTimeSignature
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
		}
		\context Staff = "bass" {
			\set Staff.instrumentName = \markup { Bass }
			\set Staff.shortInstrumentName = \markup { Cb. }
			\xNotesOn
			\numericTimeSignature
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\xNotesOff
			\xNotesOn
			c'4 -\staccato -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto ~
			\xNotesOff
			\xNotesOn
			c'4
			\xNotesOff
			\xNotesOn
			c'8 -\tenuto
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\xNotesOff
			\xNotesOn
			c'4 -\tenuto
			\xNotesOff
			\xNotesOn
			c'8 -\staccato
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\bar "||"
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
			\xNotesOn
			c'4.
			\xNotesOff
		}
		\context Staff = "line_1" {
			\set Staff.instrumentName = \markup { Line 1 }
			\set Staff.shortInstrumentName = \markup { Ln.1 }
			\numericTimeSignature
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
			}
		}
		\context Staff = "harmony_1" {
			\set Staff.instrumentName = \markup { Harmony 1 }
			\set Staff.shortInstrumentName = \markup { Har.1 }
			\numericTimeSignature
			<e' fs' cs'' gs''>4.
			<ds' cs'' ds''>4.
			<ds' ds'' f''>4.
			<e' b''>2.
			r4.
			<cs'' fs''>4.
			<cs' e'>4.
			<ds' fs'>4.
			e'4.
			a'4
			b'8
			ds''4.
			\bar "||"
			<ds' ds''>2.
			r4.
			<fs' cs''>2.
			r4.
			<a' cs'' fs''>4.
			cs'''4.
			fs''4.
			<ds' ds''>2.
			r4.
			\bar "||"
			fs'4.
			f''2.
			ds'4.
			<b ds' gs'>2.
			<gs' ds'' f'' fs''>2.
			r4.
			<gs' ds'' f'' fs''>4.
			<cs' cs''>4.
			<ds' ds''>4.
			\bar "||"
			<ds' ds''>2.
			<f' f''>4.
			<g' a''>2.
			c''4.
			ds'4.
			d''2.
			<f' c''>2.
			r4.
			\bar "||"
			f'4.
			e''2.
			d'4.
			<bf d' g'>2.
			<g' d'' e'' f''>2.
			r4.
			<g' d'' e'' f''>4.
			<c' c''>4.
			<d' d''>4.
			\bar "||"
			<g' g''>2.
			<a' a''>4.
			<b' cs'''>2.
			e''4.
			g'4.
			fs''2.
			<a' e''>2.
			r4.
		}
		\context Staff = "harmony_2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Harmony 2 }
			\set Staff.shortInstrumentName = \markup { Har.2 }
			\numericTimeSignature
			<d, e>4.
			<b, e cs'>4.
			<a,, b, cs'>4.
			g,2.
			r4.
			a,2.
			r4.
			b,2.
			r4.
			\bar "||"
			<cs, cs b>2.
			r4.
			a,2.
			r4.
			<fs, a>2.
			r4.
			<a, a>2.
			r4.
			\bar "||"
			b,2.
			r4.
			b,2.
			r4.
			gs,2.
			r4.
			<cs b>4.
			<a, a>2.
			\bar "||"
			<ds, ds>2.
			r4.
			<ds, f>2.
			r4.
			<f, ds>2.
			r4.
			a,2.
			r4.
			\bar "||"
			bf,2.
			r4.
			bf,2.
			r4.
			g,2.
			r4.
			<c bf>4.
			<af, af>2.
			\bar "||"
			<g, g>2.
			r4.
			<g, a>2.
			r4.
			<a, g>2.
			r4.
			cs2.
			r4.
		}
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\numericTimeSignature
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
			}
		}
	>>
}