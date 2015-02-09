% 2015-02-08 22:12

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
	\context Score = "caesium-material-fragment" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
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
		}
	>>
}