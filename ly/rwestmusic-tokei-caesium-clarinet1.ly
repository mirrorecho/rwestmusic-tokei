% 2015-02-08 23:11

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
	\context Score = "caesium-clarinet1" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
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
			\time 4/4
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
			\time 8/8
			s4.
			r4 -\fermata
			s4.
			\bar "||"
			\context Staff {#(set-accidental-style 'modern)}
			\time 4/4
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
			\time 24/8
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
			\time 8/8
			s4.
			r4 -\fermata
			s4.
		}
	>>
}