% 2015-02-01 19:49

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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
			\bar "||"
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
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
		}
		\context Staff = "clarinet2" {
			\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
			\set Staff.shortInstrumentName = \markup { Cl.2 }
			\numericTimeSignature
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
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
			\bar "||"
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
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			R4.
			R4.
			R4.
			r4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
			\bar "||"
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
			R4.
			R4.
			R4.
			r4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
		}
		\context Staff = "horn2" {
			\set Staff.instrumentName = \markup { Horn in F 2 }
			\set Staff.shortInstrumentName = \markup { Hn.2 }
			\numericTimeSignature
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
			R4.
			R4.
			R4.
			r4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
			\bar "||"
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
			R4.
			R4.
			R4.
			r4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
		}
		\context Staff = "horn3" {
			\set Staff.instrumentName = \markup { Horn in F 3 }
			\set Staff.shortInstrumentName = \markup { Hn.3 }
			\numericTimeSignature
			r4.
			cs'4. \pp ~ \<
			cs'4. ~
			cs'4. ~
			cs'4. \mp
			r4.
			r4.
			cs'4. \pp ~ \<
			cs'4. ~
			cs'4. ~
			cs'4. ~
			cs'4. \mp
			\bar "||"
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
			\bar "||"
			r4.
			cs'4. \pp ~ \<
			cs'4. ~
			cs'4. ~
			cs'4. \mp
			r4.
			r4.
			cs'4. \pp ~ \<
			cs'4. ~
			cs'4. ~
			cs'4. ~
			cs'4. \mp
			\bar "||"
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
		}
		\context Staff = "horn4" {
			\set Staff.instrumentName = \markup { Horn in F 4 }
			\set Staff.shortInstrumentName = \markup { Hn.4 }
			\numericTimeSignature
			r4.
			a4. \pp ~ \<
			a4. ~
			a4. ~
			a4. \mp
			r4.
			r4.
			a4. \pp ~ \<
			a4. ~
			a4. ~
			a4. ~
			a4. \mp
			\bar "||"
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
			\bar "||"
			r4.
			a4. \pp ~ \<
			a4. ~
			a4. ~
			a4. \mp
			r4.
			r4.
			a4. \pp ~ \<
			a4. ~
			a4. ~
			a4. ~
			a4. \mp
			\bar "||"
			R4.
			R4.
			R4.
			\xNotesOn
			c'4. \pp ~ \<
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. ~
			\xNotesOff
			\xNotesOn
			c'4. \mp
			\xNotesOff
			R4.
			R4.
			R4.
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			\bar "||"
			r4. _ \markup { tsu }
			c4. _ \markup { don }
			c4. _ \markup { don }
			c4. _ \markup { don }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			\bar "||"
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			\bar "||"
			r4. _ \markup { tsu }
			c4. _ \markup { don }
			c4. _ \markup { don }
			c4. _ \markup { don }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
		}
		\context RhythmicStaff = "taiko2" {
			\set Staff.instrumentName = \markup { Taiko 2 }
			\set Staff.shortInstrumentName = \markup { T.2. }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			\bar "||"
			r4. _ \markup { tsu }
			c4. _ \markup { don }
			c4. _ \markup { don }
			c4. _ \markup { don }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			\bar "||"
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
			\bar "||"
			r4. _ \markup { tsu }
			c4. _ \markup { don }
			c4. _ \markup { don }
			c4. _ \markup { don }
			r4.
			r4.
			c4. _ \markup { don }
			r4.
			r4.
			r4. _ \markup { tsu }
			r4.
			r4.
		}
		\context Staff = "violinI" {
			\set Staff.instrumentName = \markup { Violin I }
			\set Staff.shortInstrumentName = \markup { Vln.I }
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
		\context Staff = "violinII" {
			\set Staff.instrumentName = \markup { Violin II }
			\set Staff.shortInstrumentName = \markup { Vln.II }
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
		\context Staff = "viola" {
			\set Staff.instrumentName = \markup { Viola }
			\set Staff.shortInstrumentName = \markup { Vla }
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
		\context Staff = "cello" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Cello }
			\set Staff.shortInstrumentName = \markup { Vc. }
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
		\context Staff = "bass" {
			\set Staff.instrumentName = \markup { Bass }
			\set Staff.shortInstrumentName = \markup { Cb. }
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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
			<b d'>2.
			r4.
			<cs' e'>2.
			r4.
			<b d'>2.
			r4.
			<cs' e'>2.
			r4.
			\bar "||"
			<d' e' b' fs''>4.
			<cs' b' cs''>4.
			<cs' cs'' ds''>4.
			<d' a''>2.
			r4.
			<b' e''>4.
			<b d'>4.
			<cs' e'>4.
			d'4.
			g'4
			a'8
			cs''4.
			\bar "||"
			<d' e' b' fs''>4.
			<cs' b' cs''>4.
			<cs' cs'' ds''>4.
			<d' a''>2.
			r4.
			<b' e''>4.
			<b d'>4.
			<cs' e'>4.
			d'4.
			g'4
			a'8
			cs''4.
			\bar "||"
			<d' e' b' fs''>4.
			<cs' b' cs''>4.
			<cs' ds'' ds'''>4.
			<e' b''>2.
			r4.
			<cs'' fs''>4.
			<cs' e'>4.
			<ds' fs'>4.
			e'4.
			a'4
			b'8
			ds''4.
		}
		\context Staff = "harmony_2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Harmony 2 }
			\set Staff.shortInstrumentName = \markup { Har.2 }
			\numericTimeSignature
			b,2.
			r4.
			a,2.
			r4.
			g,2.
			r4.
			a,2.
			r4.
			\bar "||"
			<c, d>4.
			<a, d b>4.
			<g,, a, b>4.
			f,2.
			r4.
			g,2.
			r4.
			a,2.
			r4.
			\bar "||"
			<c, d>4.
			<a, d b>4.
			<g,, a, b>4.
			f,2.
			r4.
			g,2.
			r4.
			a,2.
			r4.
			\bar "||"
			<c, d>4.
			<a, d b>4.
			<a, b>4.
			g,2.
			r4.
			a,2.
			r4.
			b,2.
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
			}
			{
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
			{
				s1 * 9/8
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