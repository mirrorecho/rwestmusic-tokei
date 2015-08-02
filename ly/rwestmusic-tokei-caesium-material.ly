% 2015-02-09 17:42

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	tagline = \markup { [] }
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
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a''4. \p ~ \<
				a''4 ~
				a''4 ~
				\bar ";"
				a''4 ~
				a''4 ~
				a''4
				a''8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a''4. \p ~ \<
				a''4 ~
				a''4 ~
				\bar ";"
				a''4 ~
				a''4 ~
				a''4
				a''8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a''1 \p ~ \<
				a''1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a''4. \p ~ \<
				a''4 ~
				a''4 ~
				\bar ";"
				a''4 ~
				a''4 ~
				a''4
				a''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a''4. \p ~ \<
				a''4 ~
				a''4 ~
				\bar ";"
				a''4 ~
				a''4 ~
				a''4
				a''8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a''4. \p ~ \<
				a''4 ~
				a''4 ~
				\bar ";"
				a''4 ~
				a''4 ~
				a''4
				a''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a''4. \p ~ \<
				a''4 ~
				a''4 ~
				\bar ";"
				a''4 ~
				a''4 ~
				a''4
				a''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf''4. \p ~ \<
				bf''4 ~
				bf''4 ~
				\bar ";"
				bf''4 ~
				bf''4 ~
				bf''4
				bf''8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf''4. \p ~ \<
				bf''4 ~
				bf''4 ~
				\bar ";"
				bf''4 ~
				bf''4 ~
				bf''4
				bf''8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf''1 \p ~ \<
				bf''1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf''4. \p ~ \<
				bf''4 ~
				bf''4 ~
				\bar ";"
				bf''4 ~
				bf''4 ~
				bf''4
				bf''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf''4. \p ~ \<
				bf''4 ~
				bf''4 ~
				\bar ";"
				bf''4 ~
				bf''4 ~
				bf''4
				bf''8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf''4. \p ~ \<
				bf''4 ~
				bf''4 ~
				\bar ";"
				bf''4 ~
				bf''4 ~
				bf''4
				bf''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf''4. \p ~ \<
				bf''4 ~
				bf''4 ~
				\bar ";"
				bf''4 ~
				bf''4 ~
				bf''4
				bf''8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
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
				R1
				e''1 \p ~ \<
				e''1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
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
				\time 24/8
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
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
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
				R1
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
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
				\time 24/8
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
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
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
				R1
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
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
				\time 24/8
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
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
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
				R1
				e''1 \p ~ \<
				e''1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
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
				\time 24/8
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
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
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
				R1
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
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
				\time 24/8
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
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf1 \p ~ \<
				bf1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				e1 \p ~ \<
				e1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
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
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
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
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
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
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				e''4 -\accent -\staccato
				e''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				e''4 -\accent -\staccato
				e''4 -\accent -\staccato
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
				R1
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				gs4. -\accent -\tenuto
				a4. -\tenuto
				cs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				gs'4. -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'8 -\tenuto [
				r8 ]
				a'4 -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				fs'4. -\tenuto
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
				\time 24/8
				df'4. -\accent -\tenuto
				af4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				gf'8 -\tenuto [
				r8 ]
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				df''8 -\tenuto [
				r8 ]
				bf'4 -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				e''4 -\accent -\staccato
				e''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				e''4 -\accent -\staccato
				e''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				gs4. -\accent -\tenuto
				a4. -\tenuto
				cs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				gs'4. -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'8 -\tenuto [
				r8 ]
				a'4 -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				fs'4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				gs4. -\accent -\tenuto
				a4. -\tenuto
				cs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				gs'4. -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'8 -\tenuto [
				r8 ]
				a'4 -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				fs'4. -\tenuto
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
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
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
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
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
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
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				bf,4 -\accent -\staccato
				bf,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				bf,4 -\accent -\staccato
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
				R1
				bf1 \p ~ \<
				bf1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				e'4. -\accent -\tenuto
				d'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				a'4. -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
				gs'4 -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				d''4. -\tenuto
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
				\time 24/8
				af4. -\accent -\tenuto
				df'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				df'8 -\tenuto [
				r8 ]
				ef'4. -\accent -\tenuto
				df'8 -\tenuto [
				r8 ]
				ef'8 -\tenuto [
				r8 ]
				f'4 -\accent -\tenuto
				af'8 -\tenuto [
				r8 ]
				gf'4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				bf1 \p ~ \<
				bf1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				bf,4 -\accent -\staccato
				bf,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				bf,4 -\accent -\staccato
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e'4. -\accent -\tenuto
				d'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				a'4. -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
				gs'4 -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				d''4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e'4. -\accent -\tenuto
				d'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				a'4. -\accent -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
				gs'4 -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				d''4. -\tenuto
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				a'4 -\accent -\staccato
				a'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				a'4 -\accent -\staccato
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
				R1
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				df'4. -\accent -\tenuto
				f'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				df'8 -\tenuto [
				r8 ]
				ef'4. -\accent -\tenuto
				df'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
				f'4 -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'4. -\tenuto
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
				\time 24/8
				gs4. -\accent -\tenuto
				a4. -\tenuto
				gs8 -\tenuto [
				r8 ]
				fs8 -\tenuto [
				r8 ]
				ds4. -\accent -\tenuto
				cs8 -\tenuto [
				r8 ]
				a8 -\tenuto [
				r8 ]
				gs4 -\accent -\tenuto
				fs8 -\tenuto [
				r8 ]
				cs4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				a'4 -\accent -\staccato
				a'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				a'4 -\accent -\staccato
				a'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				df'4. -\accent -\tenuto
				f'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				df'8 -\tenuto [
				r8 ]
				ef'4. -\accent -\tenuto
				df'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
				f'4 -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				df'4. -\accent -\tenuto
				f'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				df'8 -\tenuto [
				r8 ]
				ef'4. -\accent -\tenuto
				df'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
				f'4 -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'4. -\tenuto
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				e4 -\accent -\staccato
				e4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				e4 -\accent -\staccato
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
				R1
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a4. -\accent -\tenuto
				gs4. -\tenuto
				a8 -\tenuto [
				r8 ]
				gs8 -\tenuto [
				r8 ]
				cs'4. -\accent -\tenuto
				a8 -\tenuto [
				r8 ]
				ds'8 -\tenuto [
				r8 ]
				cs'4 -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'4. -\tenuto
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
				\time 24/8
				cs'4. -\accent -\tenuto
				a4. -\tenuto
				a8 -\tenuto [
				r8 ]
				cs'8 -\tenuto [
				r8 ]
				a4. -\accent -\tenuto
				cs8 -\tenuto [
				r8 ]
				ds8 -\tenuto [
				r8 ]
				cs4 -\accent -\tenuto
				a,8 -\tenuto [
				r8 ]
				b,4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				e4 -\accent -\staccato
				e4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				e4 -\accent -\staccato
				e4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent -\tenuto
				gs4. -\tenuto
				a8 -\tenuto [
				r8 ]
				gs8 -\tenuto [
				r8 ]
				cs'4. -\accent -\tenuto
				a8 -\tenuto [
				r8 ]
				ds'8 -\tenuto [
				r8 ]
				cs'4 -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent -\tenuto
				gs4. -\tenuto
				a8 -\tenuto [
				r8 ]
				gs8 -\tenuto [
				r8 ]
				cs'4. -\accent -\tenuto
				a8 -\tenuto [
				r8 ]
				ds'8 -\tenuto [
				r8 ]
				cs'4 -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'4. -\tenuto
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				a''4 -\accent -\staccato
				a''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				a''4 -\accent -\staccato
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
				R1
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs''4. -\accent -\tenuto
				a'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
				b'4. -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				cs''4 -\accent -\tenuto
				d''8 -\tenuto [
				r8 ]
				a'4. -\tenuto
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
				\time 24/8
				df'4. -\accent -\tenuto
				f'4. -\tenuto
				af'8 -\tenuto [
				r8 ]
				df''8 -\tenuto [
				r8 ]
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
				bf'4 -\accent -\tenuto
				df''8 -\tenuto [
				r8 ]
				gf''4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				a''4 -\accent -\staccato
				a''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				a''4 -\accent -\staccato
				a''4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''4. -\accent -\tenuto
				a'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
				b'4. -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				cs''4 -\accent -\tenuto
				d''8 -\tenuto [
				r8 ]
				a'4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''4. -\accent -\tenuto
				a'4. -\tenuto
				gs'8 -\tenuto [
				r8 ]
				cs''8 -\tenuto [
				r8 ]
				b'4. -\accent -\tenuto
				cs''8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				cs''4 -\accent -\tenuto
				d''8 -\tenuto [
				r8 ]
				a'4. -\tenuto
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				bf'4 -\accent -\staccato
				bf'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				bf'4 -\accent -\staccato
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
				R1
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				af'4. -\accent -\tenuto
				df''4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				gf'8 -\tenuto [
				r8 ]
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
				bf'4 -\accent -\tenuto
				b'8 -\tenuto [
				r8 ]
				df''4. -\tenuto
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
				\time 24/8
				e'4. -\accent -\tenuto
				d'4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				a'8 -\tenuto [
				r8 ]
				b'4. -\accent -\tenuto
				a'8 -\tenuto [
				r8 ]
				b'8 -\tenuto [
				r8 ]
				a'4 -\accent -\tenuto
				b'8 -\tenuto [
				r8 ]
				b'4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				bf'4 -\accent -\staccato
				bf'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				bf'4 -\accent -\staccato
				bf'4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af'4. -\accent -\tenuto
				df''4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				gf'8 -\tenuto [
				r8 ]
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
				bf'4 -\accent -\tenuto
				b'8 -\tenuto [
				r8 ]
				df''4. -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af'4. -\accent -\tenuto
				df''4. -\tenuto
				f'8 -\tenuto [
				r8 ]
				gf'8 -\tenuto [
				r8 ]
				af'4. -\accent -\tenuto
				gf'8 -\tenuto [
				r8 ]
				af'8 -\tenuto [
				r8 ]
				bf'4 -\accent -\tenuto
				b'8 -\tenuto [
				r8 ]
				df''4. -\tenuto
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				a,4 -\accent -\staccato
				a,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				a,4 -\accent -\staccato
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
				R1
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				\time 24/8
				af4. -\accent -\tenuto
				d'4. -\tenuto
				c'8 -\tenuto [
				r8 ]
				af8 -\tenuto [
				r8 ]
				af4. -\accent -\tenuto
				af8 -\tenuto [
				r8 ]
				af8 -\tenuto [
				r8 ]
				f4 -\accent -\tenuto
				d8 -\tenuto [
				r8 ]
				d4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				a,4 -\accent -\staccato
				a,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				a,4 -\accent -\staccato
				a,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				bf,4 -\accent -\staccato
				bf,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				bf,4 -\accent -\staccato
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
				R1
				bf,1 \p ~ \<
				bf,1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				\time 24/8
				a4. -\accent -\tenuto
				a4. -\tenuto
				cs'8 -\tenuto [
				r8 ]
				a8 -\tenuto [
				r8 ]
				cs'4. -\accent -\tenuto
				a8 -\tenuto [
				r8 ]
				gs8 -\tenuto [
				r8 ]
				cs4 -\accent -\tenuto
				b,8 -\tenuto [
				r8 ]
				a,4. -\tenuto
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				bf,1 \p ~ \<
				bf,1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				bf,4 -\accent -\staccato
				bf,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				bf,4 -\accent -\staccato
				bf,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf,1 \p ~ \<
				bf,1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf,4. \p ~ \<
				bf,4 ~
				bf,4 ~
				\bar ";"
				bf,4 ~
				bf,4 ~
				bf,4
				bf,8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf,4. \p ~ \<
				bf,4 ~
				bf,4 ~
				\bar ";"
				bf,4 ~
				bf,4 ~
				bf,4
				bf,8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
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
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r2
				r4
				e,4 -\accent -\staccato
				e,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				e,4 -\accent -\staccato
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
				R1
				e1 \p ~ \<
				e1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				e1 \p ~ \<
				e1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				r2
				r4
				e,4 -\accent -\staccato
				e,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				r4
				e,4 -\accent -\staccato
				e,4 -\accent -\staccato
				r4
				r2
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				e1 \p ~ \<
				e1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				fs,,8 -\accent -\staccato \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
		>>
		\context StaffGroup = "perc" <<
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c4. :32 ~ ^ \markup { brake drum }
				c4. :32 ~
				c4 :32 ~
				c4 :32 ~
				\bar ";"
				c4. :32 ~
				c4 :32 ~
				c4 :32 ~
				\bar ";"
				c4 :32 ~
				c4 :32 ~
				c4. :32
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
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
				\time 24/8
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				\bar "||"
				\mark "D"
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
				c2 :32 \pp ~ \<
				c4. :32
				c8 -\accent \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				c4 :32 \pp ~ \<
				c4 :32 ~
				c4 :32
				c8 -\accent \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
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
				c2 :32 \pp ~ \<
				c4. :32
				c8 -\accent \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
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
				c2 :32 \pp ~ \<
				c4. :32
				c8 -\accent \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				c4 :32 \pp ~ \<
				c4 :32 ~
				c4 :32
				c8 -\accent \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				c4 :32 \pp ~ \<
				c4 :32 ~
				c4 :32
				c8 -\accent \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent ]
				c8 -\accent [
				c8 -\accent
				c8 -\accent ]
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				R1
				R1
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				R1
				R1
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				r8 [
				a,8 -\accent ]
				r8 [
				bf,8 -\accent ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,8 -\accent \sfz [
				r8
				r8 ]
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
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
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
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
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 24/8
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
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "K"
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
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "D"
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
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				c8 -\accent [
				c8
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8 ]
				c8 -\accent [
				c8
				c8 ]
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\mark "I"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\bar "||"
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				c8 ] _ \markup { ko }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				r8 _ \markup { tsu }
				c8 -\accent _ \markup { don }
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
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
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI_div1" {
				\set Staff.instrumentName = \markup { Violin I 1 }
				\set Staff.shortInstrumentName = \markup { Vln.I.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				gs'8 -\staccato [
				gs'8 -\staccato ]
				gs'8 -\staccato [
				gs'8 -\staccato ]
				gs'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				gs'8 -\staccato ]
				gs'8 -\staccato [
				f''8 -\staccato ]
				fs''8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato [
				ds''8 -\staccato ]
				ds''8 -\staccato [
				gs''8 -\staccato ]
				gs''8 -\staccato [
				as''8 -\staccato ]
				gs''8 -\staccato [
				as''8 -\staccato ]
				as''8 -\staccato [
				b''8 -\staccato ]
				cs'''8 -\staccato [
				b''8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "violinI_div2" {
				\set Staff.instrumentName = \markup { Violin I 2 }
				\set Staff.shortInstrumentName = \markup { Vln.I.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e'8 -\staccato [
				d'8 -\staccato ]
				e'8 -\staccato [
				d'8 -\staccato ]
				a'8 -\staccato [
				d''8 -\staccato ]
				df''8 -\staccato [
				c''8 -\staccato ]
				d''8 -\staccato [
				c''8 -\staccato ]
				df''8 -\staccato [
				gf''8 -\staccato ]
				a''8 -\staccato [
				b''8 -\staccato ]
				af''8 -\staccato [
				af''8 -\staccato ]
				d'''8 -\staccato [
				df'''8 -\staccato ]
				d'''8 -\staccato [
				d'''8 -\staccato ]
				df'''8 -\staccato [
				df'''8 -\staccato ]
				b''8 -\staccato [
				gf'''8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "violinII_div1" {
				\set Staff.instrumentName = \markup { Violin II 1 }
				\set Staff.shortInstrumentName = \markup { Vln.II.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				e''1 \p ~ \<
				e''1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af'8 -\staccato [
				af'8 -\staccato ]
				af'8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				d''8 -\staccato ]
				c''8 -\staccato [
				d''8 -\staccato ]
				c''8 -\staccato [
				c''8 -\staccato ]
				df''8 -\staccato [
				d''8 -\staccato ]
				d''8 -\staccato [
				ef''8 -\staccato ]
				d''8 -\staccato [
				ef''8 -\staccato ]
				ef''8 -\staccato [
				f''8 -\staccato ]
				f''8 -\staccato [
				f'''8 -\staccato ]
				f'''8 -\staccato [
				d'''8 -\staccato ]
				d'''8 -\staccato [
				d'''8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				e''1 \p ~ \<
				e''1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
				e''4 ~
				e''4 ~
				e''4
				e''8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e''4. \p ~ \<
				e''4 ~
				e''4 ~
				\bar ";"
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
			\context Staff = "violinII_div2" {
				\set Staff.instrumentName = \markup { Violin II 2 }
				\set Staff.shortInstrumentName = \markup { Vln.II.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				gs'8 -\staccato [
				cs'8 -\staccato ]
				cs'8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				gs'8 -\staccato ]
				gs'8 -\staccato [
				cs''8 -\staccato ]
				d''8 -\staccato [
				fs''8 -\staccato ]
				fs''8 -\staccato [
				gs''8 -\staccato ]
				b''8 -\staccato [
				cs'''8 -\staccato ]
				b''8 -\staccato [
				cs'''8 -\staccato ]
				cs'''8 -\staccato [
				cs'''8 -\staccato ]
				d'''8 -\staccato [
				fs'''8 -\staccato ]
				gs'''8 -\staccato [
				fs'''8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				a'1 \p ~ \<
				a'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on G string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a'4. \p ~ \<
				a'4 ~
				a'4 ~
				\bar ";"
				a'4 ~
				a'4 ~
				a'4
				a'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "viola_div1" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 1 }
				\set Staff.shortInstrumentName = \markup { Vla.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs'4. ~
				cs'4. ~
				cs'4 ~
				cs'4
				\bar ";"
				cs'4. ~
				cs'4 ~
				cs'4
				\bar ";"
				cs'4 ~
				cs'4 ~
				cs'4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs'4. ~
				cs'4. ~
				cs'4 ~
				cs'4
				\bar ";"
				cs'4. ~
				cs'4 ~
				cs'4
				\bar ";"
				cs'4 ~
				cs'4 ~
				cs'4.
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs'8 -\staccato [
				cs'8 -\staccato ]
				cs'8 -\staccato [
				cs'8 -\staccato ]
				cs'8 -\staccato [
				f'8 -\staccato ]
				f'8 -\staccato [
				f'8 -\staccato ]
				f'8 -\staccato [
				gs'8 -\staccato ]
				gs'8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato [
				cs''8 -\staccato ]
				gs'8 -\staccato [
				gs'8 -\staccato ]
				gs'8 -\staccato [
				as'8 -\staccato ]
				as''8 -\staccato [
				as''8 -\staccato ]
				cs''8 -\staccato [
				b''8 -\staccato ]
				b''8 -\staccato [
				b''8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				bf'1 \p ~ \<
				bf'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf'4. \p ~ \<
				bf'4 ~
				bf'4 ~
				\bar ";"
				bf'4 ~
				bf'4 ~
				bf'4
				bf'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "viola_div2" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 2 }
				\set Staff.shortInstrumentName = \markup { Vla.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a4. ~
				a4. ~
				a4 ~
				a4
				\bar ";"
				a4. ~
				a4 ~
				a4
				\bar ";"
				a4 ~
				a4 ~
				a4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a4. ~
				a4. ~
				a4 ~
				a4
				\bar ";"
				a4. ~
				a4 ~
				a4
				\bar ";"
				a4 ~
				a4 ~
				a4.
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				df'8 -\staccato [
				af8 -\staccato ]
				df'8 -\staccato [
				d'8 -\staccato ]
				d'8 -\staccato [
				df'8 -\staccato ]
				d'8 -\staccato [
				df'8 -\staccato ]
				df'8 -\staccato [
				d'8 -\staccato ]
				df''8 -\staccato [
				df''8 -\staccato ]
				gf'8 -\staccato [
				af'8 -\staccato ]
				df''8 -\staccato [
				b'8 -\staccato ]
				df''8 -\staccato [
				d''8 -\staccato ]
				df''8 -\staccato [
				df''8 -\staccato ]
				af''8 -\staccato [
				gf''8 -\staccato ]
				gf''8 -\staccato [
				df'''8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				e'1 \p ~ \<
				e'1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a8 [ ^ \markup { pizz }
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				a8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e'4. \p ~ \<
				e'4 ~
				e'4 ~
				\bar ";"
				e'4 ~
				e'4 ~
				e'4
				e'8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "cello_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 1 }
				\set Staff.shortInstrumentName = \markup { Vc.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				af4. ~
				af4. ~
				af4 ~
				af4
				\bar ";"
				af4. ~
				af4 ~
				af4
				\bar ";"
				af4 ~
				af4 ~
				af4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				af4. ~
				af4. ~
				af4 ~
				af4
				\bar ";"
				af4. ~
				af4 ~
				af4
				\bar ";"
				af4 ~
				af4 ~
				af4.
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs8 -\staccato [
				cs8 -\staccato ]
				gs,8 -\staccato [
				f8 -\staccato ]
				f8 -\staccato [
				gs8 -\staccato ]
				f8 -\staccato [
				c8 -\staccato ]
				c8 -\staccato [
				gs8 -\staccato ]
				fs8 -\staccato [
				gs8 -\staccato ]
				cs'8 -\staccato [
				gs8 -\staccato ]
				gs8 -\staccato [
				ds'8 -\staccato ]
				gs'8 -\staccato [
				gs'8 -\staccato ]
				as'8 -\staccato [
				gs'8 -\staccato ]
				as'8 -\staccato [
				gs'8 -\staccato ]
				fs'8 -\staccato [
				gs'8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "cello_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 2 }
				\set Staff.shortInstrumentName = \markup { Vc.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				bf1 \p ~ \<
				bf1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs4. ~
				cs4. ~
				cs4 ~
				cs4
				\bar ";"
				cs4. ~
				cs4 ~
				cs4
				\bar ";"
				cs4 ~
				cs4 ~
				cs4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				cs4. ~
				cs4. ~
				cs4 ~
				cs4
				\bar ";"
				cs4. ~
				cs4 ~
				cs4
				\bar ";"
				cs4 ~
				cs4 ~
				cs4.
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d8 -\staccato [
				e8 -\staccato ]
				d8 -\staccato [
				d8 -\staccato ]
				d8 -\staccato [
				d8 -\staccato ]
				c8 -\staccato [
				f8 -\staccato ]
				f8 -\staccato [
				f8 -\staccato ]
				a8 -\staccato [
				a8 -\staccato ]
				gs8 -\staccato [
				d'8 -\staccato ]
				ds'8 -\staccato [
				d'8 -\staccato ]
				ds'8 -\staccato [
				f'8 -\staccato ]
				f'8 -\staccato [
				f'8 -\staccato ]
				f'8 -\staccato [
				d'8 -\staccato ]
				d''8 -\staccato [
				d''8 -\staccato ]
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				bf1 \p ~ \<
				bf1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				a,8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on C string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				bf4. \p ~ \<
				bf4 ~
				bf4 ~
				\bar ";"
				bf4 ~
				bf4 ~
				bf4
				bf8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "bass_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 1 }
				\set Staff.shortInstrumentName = \markup { Cb.1 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\mark "D"
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
				e1 \p ~ \<
				e1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				e1 \p ~ \<
				e1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				e1 \p ~ \<
				e1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				e4. \p ~ \<
				e4 ~
				e4 ~
				\bar ";"
				e4 ~
				e4 ~
				e4
				e8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
			}
			\context Staff = "bass_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 2 }
				\set Staff.shortInstrumentName = \markup { Cb.2 }
				\tempo 4=160
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "A"
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
				\mark "B"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "C"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c,4. -\accent \f ~
				c,4. ~
				c,4 ~
				c,4
				\bar ";"
				c,4. -\accent ~
				c,4 ~
				c,4
				\bar ";"
				c,4 -\accent ~
				c,4 ~
				c,4.
				\bar "||"
				\mark "D"
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
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
				\xNotesOff
				\xNotesOn
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "F"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\mark "G"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
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
				a1 \p ~ \<
				a1 \f
				\bar "||"
				\mark "H"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				a,,8 [ ^ \markup { pizz }
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				a,,8 [
				r8
				r8 ]
				\bar "||"
				\mark "I"
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
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\mark "J"
				\xNotesOn
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\context Staff {#(set-accidental-style 'modern)}
				c'8 -\accent [ ^ \markup { random pitch on E string }
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
				\mark "K"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				r4.
				r4
				r4
				\bar ";"
				r4
				r4
				r4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\mark "L"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 24/8
				r4.
				r4.
				r4
				r4
				\bar ";"
				a4. \p ~ \<
				a4 ~
				a4 ~
				\bar ";"
				a4 ~
				a4 ~
				a4
				a8 -\accent -\staccato \f
				\bar "||"
				\once \override Staff.TimeSignature.stencil = ##f
				\context Staff {#(set-accidental-style 'modern)}
				\time 8/8
				s4.
				r4 -\fermata
				s4.
				\bar "|."
			}
		>>
	>>
}