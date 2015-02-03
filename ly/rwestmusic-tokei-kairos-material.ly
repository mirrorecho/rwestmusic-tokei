% 2015-02-02 22:38

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
	\context Score = "kairos-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context Staff = "flute1" {
			\set Staff.instrumentName = \markup { Flute 1 }
			\set Staff.shortInstrumentName = \markup { Fl.1 }
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
			}
		}
		\context Staff = "flute2" {
			\set Staff.instrumentName = \markup { Flute 2 }
			\set Staff.shortInstrumentName = \markup { Fl.2 }
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
			}
		}
		\context Staff = "oboe1" {
			\set Staff.instrumentName = \markup { Oboe 1 }
			\set Staff.shortInstrumentName = \markup { Ob.1 }
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
			}
		}
		\context Staff = "oboe2" {
			\set Staff.instrumentName = \markup { Oboe 2 }
			\set Staff.shortInstrumentName = \markup { Ob.2 }
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
			}
		}
		\context Staff = "oboe3" {
			\set Staff.instrumentName = \markup { Oboe 3 }
			\set Staff.shortInstrumentName = \markup { Ob.3 }
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
			}
		}
		\context Staff = "clarinet1" {
			\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
			\set Staff.shortInstrumentName = \markup { Cl.1 }
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
			}
		}
		\context Staff = "clarinet2" {
			\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
			\set Staff.shortInstrumentName = \markup { Cl.2 }
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
			}
		}
		\context Staff = "bassoon1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bassoon 1 }
			\set Staff.shortInstrumentName = \markup { Bsn.1 }
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
			}
		}
		\context Staff = "bassoon2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Bassoon 2 }
			\set Staff.shortInstrumentName = \markup { Bsn.2 }
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
			}
		}
		\context Staff = "horn1" {
			\set Staff.instrumentName = \markup { Horn in F 1 }
			\set Staff.shortInstrumentName = \markup { Hn.1 }
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
			}
		}
		\context Staff = "horn2" {
			\set Staff.instrumentName = \markup { Horn in F 2 }
			\set Staff.shortInstrumentName = \markup { Hn.2 }
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
			}
		}
		\context Staff = "horn3" {
			\set Staff.instrumentName = \markup { Horn in F 3 }
			\set Staff.shortInstrumentName = \markup { Hn.3 }
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
			}
		}
		\context Staff = "horn4" {
			\set Staff.instrumentName = \markup { Horn in F 4 }
			\set Staff.shortInstrumentName = \markup { Hn.4 }
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
			}
		}
		\context Staff = "trumpet1" {
			\set Staff.instrumentName = \markup { Trumpet in C 1 }
			\set Staff.shortInstrumentName = \markup { Tpt.1 }
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
			}
		}
		\context Staff = "trumpet2" {
			\set Staff.instrumentName = \markup { Trumpet in C 2 }
			\set Staff.shortInstrumentName = \markup { Tpt.2 }
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
			}
		}
		\context Staff = "trombone1" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tenor Trombone 1 }
			\set Staff.shortInstrumentName = \markup { Tbn.1 }
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
			}
		}
		\context Staff = "trombone2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tenor Trombone 2 }
			\set Staff.shortInstrumentName = \markup { Tbn.2 }
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
			}
		}
		\context Staff = "tuba" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Tuba }
			\set Staff.shortInstrumentName = \markup { Tba }
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
			}
		}
		\context RhythmicStaff = "perc1" {
			\set Staff.instrumentName = \markup { Percussion 1 }
			\set Staff.shortInstrumentName = \markup { Perc.1 }
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
			}
		}
		\context RhythmicStaff = "perc2" {
			\set Staff.instrumentName = \markup { Percussion 2 }
			\set Staff.shortInstrumentName = \markup { Perc.2 }
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
			}
		}
		\context Staff = "timpani" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Timpani }
			\set Staff.shortInstrumentName = \markup { Timp }
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
			}
		}
		\context RhythmicStaff = "shime" {
			\set Staff.instrumentName = \markup { Shime }
			\set Staff.shortInstrumentName = \markup { Sh. }
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
			}
		}
		\context RhythmicStaff = "odaiko" {
			\set Staff.instrumentName = \markup { Odaiko }
			\set Staff.shortInstrumentName = \markup { O.d. }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
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
			}
		}
		\context RhythmicStaff = "taiko1" {
			\set Staff.instrumentName = \markup { Taiko 1 }
			\set Staff.shortInstrumentName = \markup { T.1 }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { ka }
			r4
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { ka }
			r4
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { ka }
			r4
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { ka }
			r4
		}
		\context RhythmicStaff = "taiko2" {
			\set Staff.instrumentName = \markup { Taiko 2 }
			\set Staff.shortInstrumentName = \markup { T.2. }
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			r2
			r4
			r8 [
			c16
			c16 ]
			c4
			c8
			c8
			r2
			r2
			r4
			r8 [
			c16
			c16 ]
			c4
			c8
			c8
			r2
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { ka }
			r4
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			c4 _ \markup { ka }
			r4
		}
		\context Staff = "violinI" {
			\set Staff.instrumentName = \markup { Violin I }
			\set Staff.shortInstrumentName = \markup { Vln.I }
			\numericTimeSignature
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
			}
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
			}
		}
		\context Staff = "cello" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Cello }
			\set Staff.shortInstrumentName = \markup { Vc. }
			\numericTimeSignature
			cs1 \p ~
			cs1 ~
			cs1
			fs1 ~
			fs1
			e1 ~
			e1
			d1
		}
		\context Staff = "bass" {
			\set Staff.instrumentName = \markup { Bass }
			\set Staff.shortInstrumentName = \markup { Cb. }
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
			}
		}
		\context Staff = "line_1" {
			\set Staff.instrumentName = \markup { Line 1 }
			\set Staff.shortInstrumentName = \markup { Ln.1 }
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
		}
		\context Staff = "line_2" {
			\set Staff.instrumentName = \markup { Line 2 }
			\set Staff.shortInstrumentName = \markup { Ln.2 }
			\numericTimeSignature
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
		\context Staff = "harmony_1" {
			\set Staff.instrumentName = \markup { Harmony 1 }
			\set Staff.shortInstrumentName = \markup { Har.1 }
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
			}
		}
		\context Staff = "harmony_2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Harmony 2 }
			\set Staff.shortInstrumentName = \markup { Har.2 }
			\numericTimeSignature
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
		}
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
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
			}
		}
	>>
}