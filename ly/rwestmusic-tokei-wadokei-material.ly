% 2015-02-07 11:37

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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				r4.
				r4.
				cs'4. \pp ~ \<
				cs'4. ~
				cs'4. \mp
				r4.
				r4.
				r4.
				cs'4. \pp ~ \<
				cs'4. ~
				cs'4. ~
				cs'4. \mp
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
				d'4. ~
				d'4. ~
				d'4. \mp )
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
				}
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				r4.
				r4.
				a4. \pp ~ \<
				a4. ~
				a4. \mp
				r4.
				r4.
				r4.
				a4. \pp ~ \<
				a4. ~
				a4. ~
				a4. \mp
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
				g4. ~
				g4. ~
				g4. \mp )
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
				}
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				d4. \p ~ \< (
				d4.
				a,4.
				d4. ~
				d4. \mp )
				r4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
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
				}
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
				\context Staff {#(set-accidental-style 'modern)}
				c4. \p \< (
				a,4.
				g,4.
				c4. ~
				c4. \mp )
				r4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
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
				}
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				}
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				}
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				}
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\context Staff {#(set-accidental-style 'modern)}
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
				}
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				<b d'>2.
				r4.
				<cs' e'>2.
				r4.
				<b d'>2.
				r4.
				<cs' e'>2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				<ds' ds''>2.
				r4.
				<fs' cs''>2.
				r4.
				<a' cs'' fs''>4.
				cs'''4.
				fs''4.
				<ds' ds''>2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				fs'4.
				f''2.
				ds'4.
				<b ds' gs'>2.
				<gs' ds'' f'' fs''>2.
				r4.
				<gs' ds'' f'' fs''>4.
				<cs' cs''>4.
				<ds' ds''>4.
				\context Staff {#(set-accidental-style 'modern)}
				<ds' ds''>2.
				<f' f''>4.
				<g' a''>2.
				c''4.
				ds'4.
				d''2.
				<f' c''>2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				f'4.
				e''2.
				d'4.
				<bf d' g'>2.
				<g' d'' e'' f''>2.
				r4.
				<g' d'' e'' f''>4.
				<c' c''>4.
				<d' d''>4.
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b,2.
				r4.
				a,2.
				r4.
				g,2.
				r4.
				a,2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				<c, d>4.
				<a, d b>4.
				<g,, a, b>4.
				f,2.
				r4.
				g,2.
				r4.
				a,2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				<c, d>4.
				<a, d b>4.
				<g,, a, b>4.
				f,2.
				r4.
				g,2.
				r4.
				a,2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				<c, d>4.
				<a, d b>4.
				<a, b>4.
				g,2.
				r4.
				a,2.
				r4.
				b,2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				<d, e>4.
				<b, e cs'>4.
				<a,, b, cs'>4.
				g,2.
				r4.
				a,2.
				r4.
				b,2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				<cs, cs b>2.
				r4.
				a,2.
				r4.
				<fs, a>2.
				r4.
				<a, a>2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				b,2.
				r4.
				b,2.
				r4.
				gs,2.
				r4.
				<cs b>4.
				<a, a>2.
				\context Staff {#(set-accidental-style 'modern)}
				<ds, ds>2.
				r4.
				<ds, f>2.
				r4.
				<f, ds>2.
				r4.
				a,2.
				r4.
				\context Staff {#(set-accidental-style 'modern)}
				bf,2.
				r4.
				bf,2.
				r4.
				g,2.
				r4.
				<c bf>4.
				<af, af>2.
				\context Staff {#(set-accidental-style 'modern)}
				<g, g>2.
				r4.
				<g, a>2.
				r4.
				<a, g>2.
				r4.
				cs2.
				r4.
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				\context Staff {#(set-accidental-style 'modern)}
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				\context Staff {#(set-accidental-style 'modern)}
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				\context Staff {#(set-accidental-style 'modern)}
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				b,4. ~
				b,4. ~
				b,4.
				\context Staff {#(set-accidental-style 'modern)}
				cs4. ~
				cs4. ~
				cs4.
				cs4. ~
				cs4. ~
				cs4.
				cs4. ~
				cs4. ~
				cs4.
				cs4. ~
				cs4. ~
				cs4.
				\context Staff {#(set-accidental-style 'modern)}
				fs4. ~
				fs4. ~
				fs4.
				fs4. ~
				fs4. ~
				fs4.
				fs4. ~
				fs4. ~
				fs4.
				fs4. ~
				fs4. ~
				fs4.
				\context Staff {#(set-accidental-style 'modern)}
				af,4. ~
				af,4. ~
				af,4.
				af,4. ~
				af,4. ~
				af,4.
				af,4. ~
				af,4. ~
				af,4.
				af,4. ~
				af,4. ~
				af,4.
				\context Staff {#(set-accidental-style 'modern)}
				f,4. ~
				f,4. ~
				f,4.
				f,4. ~
				f,4. ~
				f,4.
				f,4. ~
				f,4. ~
				f,4.
				f,4. ~
				f,4. ~
				f,4.
				\context Staff {#(set-accidental-style 'modern)}
				f,4. ~
				f,4. ~
				f,4.
				f,4. ~
				f,4. ~
				f,4.
				f,4. ~
				f,4. ~
				f,4.
				f,4. ~
				f,4. ~
				f,4.
				\context Staff {#(set-accidental-style 'modern)}
				g,4. ~
				g,4. ~
				g,4.
				g,4. ~
				g,4. ~
				g,4.
				g,4. ~
				g,4. ~
				g,4.
				g,4. ~
				g,4. ~
				g,4.
			}
		>>
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\context Staff {#(set-accidental-style 'modern)}
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
			}
		}
	>>
}