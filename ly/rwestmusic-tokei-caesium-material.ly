% 2015-02-08 22:16

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
	\context Score = "caesium-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context StaffGroup = "winds" <<
			\context Staff = "flute1" {
				\set Staff.instrumentName = \markup { Flute 1 }
				\set Staff.shortInstrumentName = \markup { Fl.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a''4. \p ~ \<
				a''4 ~
				a''4 ~
				a''4 ~
				a''4 ~
				a''4
				a''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf''4. \p ~ \<
				bf''4 ~
				bf''4 ~
				bf''4 ~
				bf''4 ~
				bf''4
				bf''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
				a'''8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a4. \p ~ \<
				a4 ~
				a4 ~
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
				a''8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e4. \p ~ \<
				e4 ~
				e4 ~
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
				a'8 -\staccato [
				r8
				r8 ]
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				e''4 -\accent -\staccato \ff
				e''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a4. \p ~ \<
				a4 ~
				a4 ~
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a4. \p ~ \<
				a4 ~
				a4 ~
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a4. \p ~ \<
				a4 ~
				a4 ~
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				bf,4 -\accent -\staccato \ff
				bf,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf1 \p ~ \<
				bf1 \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				a'4 -\accent -\staccato \ff
				a'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				e4 -\accent -\staccato \ff
				e4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				a''4 -\accent -\staccato \ff
				a''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				bf'4 -\accent -\staccato \ff
				bf'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				a,4 -\accent -\staccato \ff
				a,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				bf,4 -\accent -\staccato \ff
				bf,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				e,4 -\accent -\staccato \ff
				e,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
		>>
		\context StaffGroup = "perc" <<
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. :32 ~
				c4. :32 ~
				c4 :32 ~
				c4 :32 ~
				c4. :32 ~
				c4 :32 ~
				c4 :32 ~
				c4 :32 ~
				c4 :32 ~
				c4. :32
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				r4.
				r4
				r4
				c4 :32 \pp ~ \<
				c4 :32 ~
				c4 :32
				c8 -\accent \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				<a, bf,>4 -\accent \ff
				r4
				r2
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				<a, bf,>4 -\accent
				r4
				r2
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				<a, bf,>4 -\accent
				r4
				r2
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				r8 [
				a,8 -\accent -\accent ]
				r8 [
				bf,8 -\accent ]
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				r4.
				r4
				r4
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				c4. :32 ~
				c4. :32 ~
				c4 :32 ~
				c4 :32 ~
				c4. :32 ~
				c4 :32 ~
				c4 :32 ~
				c4 :32 ~
				c4 :32 ~
				c4. :32
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 \ff [ _ \markup { do }
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 \ff [ _ \markup { do }
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 \ff [ _ \markup { do }
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 [ _ \markup { don }
				r8
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8 ]
				c8 [ _ \markup { don }
				r8
				r8 ]
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI_div1" {
				\set Staff.instrumentName = \markup { Violin I 1 }
				\set Staff.shortInstrumentName = \markup { Vln.I.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "violinI_div2" {
				\set Staff.instrumentName = \markup { Violin I 2 }
				\set Staff.shortInstrumentName = \markup { Vln.I.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "violinII_div1" {
				\set Staff.instrumentName = \markup { Violin II 1 }
				\set Staff.shortInstrumentName = \markup { Vln.II.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "violinII_div2" {
				\set Staff.instrumentName = \markup { Violin II 2 }
				\set Staff.shortInstrumentName = \markup { Vln.II.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "viola_div1" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 1 }
				\set Staff.shortInstrumentName = \markup { Vla.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "viola_div2" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 2 }
				\set Staff.shortInstrumentName = \markup { Vla.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "cello_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 1 }
				\set Staff.shortInstrumentName = \markup { Vc.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a4. \p ~ \<
				a4 ~
				a4 ~
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "cello_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 2 }
				\set Staff.shortInstrumentName = \markup { Vc.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "bass_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 1 }
				\set Staff.shortInstrumentName = \markup { Cb.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				e4. \p ~ \<
				e4 ~
				e4 ~
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
			\context Staff = "bass_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 2 }
				\set Staff.shortInstrumentName = \markup { Cb.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				a4. \p ~ \<
				a4 ~
				a4 ~
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
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
				\xNotesOff
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\tempo 4=120
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					\time 24/8
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 3
					\bar "||"
				}
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
			}
		>>
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\tempo 4=120
			\context Staff {#(set-accidental-style 'modern)}
			\numericTimeSignature
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
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
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				\time 24/8
				s1 * 3
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 3
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 3
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				s1 * 3
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
			{
				\time 8/8
				s1 * 1
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
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
		}
	>>
}