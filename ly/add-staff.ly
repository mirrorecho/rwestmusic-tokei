% 2015-02-03 11:50

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
	\context Score = "kairos-material-fragment" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context Staff = "violinI" {
			\set Staff.instrumentName = \markup { Violin I }
			\set Staff.shortInstrumentName = \markup { Vln.I }
			\numericTimeSignature
			cs'1
			cs'8 (
			d'4. ~
			d'2 )
			r4
			r8
			cs'8 ~ (
			cs'4
			e'4
			d'2. )
			cs'4 (
			e'4.
			d'8 ~
			d'4
			fs'4
			cs'2. )
			cs'8 (
			d'8 ~
			d'4. )
			cs'8 (
			fs'4
			e'4 )
			fs'2.
			cs'8 (
			d'8 )
			\bar "||"
			r2
			cs'2
			e'4. (
			cs'8 ~
			cs'2 )
			r4
			r8
			e'8 ~ (
			e'2 ~
			e'4.
			fs'8 ~
			fs'2 ~
			fs'2. )
			d'4 (
			e'2. )
			e'4 (
			cs'4. )
			e'8 ~ (
			e'8
			cs'4. )
			fs'4 (
			cs''8
			d''8
			e'4 )
			e'4
		}
		\context Staff = "violinII" {
			\set Staff.instrumentName = \markup { Violin II }
			\set Staff.shortInstrumentName = \markup { Vln.II }
			\numericTimeSignature
			R1
			r8
			e'''4. \pp ~ \<
			e'''2 \p ~ \>
			e'''1 \pp
			r8
			e'''4. \pp ~ \<
			e'''2 \p ~ \>
			e'''1 \pp
			R1
			R1
			R1
			\bar "||"
			<<

				{	
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
					{
						s1 * 1
					}
					{
						s1 * 1
					}
					{
						s1 * 1
					}
					\break
					{
						s1 * 1
					}
					{
						s1 * 1
					}
				}

				\new Staff = "violinII_1" \with {
			      fontSize = #-1
			      \override StaffSymbol.staff-space = #(magstep -1)
			      \override StaffSymbol.thickness = #(magstep -1)
			    }
				{
					\set Staff.alignAboveContext = #"viola"
					\set Staff.instrumentName = \markup { Violin II1 }
					\set Staff.shortInstrumentName = \markup { Vln.II.1 }
					\once \omit Staff.TimeSignature
					c1 a1 c1 a1 
				}


			>>
		}
		\context Staff = "viola" {
			\set Staff.instrumentName = \markup { Viola }
			\set Staff.shortInstrumentName = \markup { Vla }
			\numericTimeSignature
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
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