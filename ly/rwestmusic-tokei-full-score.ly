% 2015-02-07 12:30

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
	\context Score = "full-score" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context StaffGroup = "winds" <<
			\context Staff = "flute1" {
				\time 4/4
			}
			\context Staff = "flute2" {
				\time 4/4
			}
			\context Staff = "oboe1" {
				\time 4/4
			}
			\context Staff = "oboe2" {
				\time 4/4
			}
			\context Staff = "oboe3" {
				\time 4/4
			}
			\context Staff = "clarinet1" {
				\time 4/4
			}
			\context Staff = "clarinet2" {
				\time 4/4
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\time 4/4
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\time 4/4
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\time 4/4
			}
			\context Staff = "horn2" {
				\time 4/4
			}
			\context Staff = "horn3" {
				\time 4/4
			}
			\context Staff = "horn4" {
				\time 4/4
			}
			\context Staff = "trumpet1" {
				\time 4/4
			}
			\context Staff = "trumpet2" {
				\time 4/4
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\time 4/4
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\time 4/4
			}
			\context Staff = "tuba" {
				\clef "bass"
				\time 4/4
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\time 4/4
			}
			\context RhythmicStaff = "perc1" {
				\time 4/4
			}
			\context RhythmicStaff = "perc2" {
				\time 4/4
			}
			\context Staff = "timpani" {
				\clef "bass"
				\time 4/4
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\time 4/4
			}
			\context RhythmicStaff = "odaiko" {
				\time 4/4
			}
			\context RhythmicStaff = "taiko1" {
				\time 4/4
			}
			\context RhythmicStaff = "taiko2" {
				\time 4/4
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\time 4/4
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				c''4
				c''4
				d''4
				d''4
				e''4
				e''4
				f''4
				f''4
			}
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\time 4/4
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				f'4
				e'4
				d'4
				c'4
				f'4
				e'4
				d'4
				c'4
			}
			\context Staff = "viola" {
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { Vla }
				\time 4/4
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				f4
				g4
				a4
				b4
				f4
				g4
				a4
				b4
			}
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\time 4/4
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				f4
				f4
				f4
				f4
				f4
				f4
				f4
				f4
			}
			\context Staff = "bass" {
				\clef "bass"
				\time 4/4
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\time 4/4
			}
			\context Staff = "line_2" {
				\time 4/4
			}
			\context Staff = "line_3" {
				\time 4/4
			}
			\context Staff = "harmony_1" {
				\time 4/4
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\time 4/4
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\time 4/4
			}
		>>
		\context RhythmicStaff = "dummy" {
			\time 4/4
		}
	>>
}