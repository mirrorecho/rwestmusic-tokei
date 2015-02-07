% 2015-02-06 21:50

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
	\context Score = "kairos-material" \with {
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
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				\context Staff {#(set-accidental-style 'modern)}
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
				c4
				r8 [
				c8 ]
				r4
				c4
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				\context Staff {#(set-accidental-style 'modern)}
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				c4 _ \markup { don }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				c4 _ \markup { don }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				R1
				R1
				R1
				R1
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { don }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				c4
				c8
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c4 _ \markup { don }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
				c4 _ \markup { don }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c8 _ \markup { ko }
				r4 _ \markup { tsu }
				c8 [ _ \markup { do }
				c8 ] _ \markup { don }
				r8 [
				c8 ] _ \markup { do }
				c4 _ \markup { don }
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { vln.I }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				cs''1
					^ \markup {
						\italic
							{
								"tutti Violin I"
							}
						}
				cs''8 (
				d''4. ~
				d''2 )
				r4
				r8
				cs''8 ~ (
				cs''4
				e''4
				d''2. )
				cs''4 (
				e''4.
				d''8 ~
				d''4
				fs''4
				cs''2. )
				cs''8 (
				d''8 ~
				d''4. )
				cs''8 (
				fs''4
				e''4 )
				fs''2.
				cs''8 (
				d''8 )
				\context Staff {#(set-accidental-style 'modern)}
				r2
				a''2
				e''4. (
				a''8 ~
				a''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				a''4. )
				e''8 ~ (
				e''8
				a''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
			}
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { vln.II }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				cs''1
					^ \markup {
						\italic
							{
								"tutti Violin II"
							}
						}
				cs''8 (
				d''4. ~
				d''2 )
				r4
				r8
				cs''8 ~ (
				cs''4
				e''4
				d''2. )
				cs''4 (
				e''4.
				d''8 ~
				d''4
				fs''4
				cs''2. )
				cs''8 (
				d''8 ~
				d''4. )
				cs''8 (
				fs''4
				e''4 )
				fs''2.
				cs''8 (
				d''8 )
				\context Staff {#(set-accidental-style 'modern)}
				r2
				a''2
				e''4. (
				a''8 ~
				a''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				a''4. )
				e''8 ~ (
				e''8
				a''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
			}
			\context Staff = "viola" {
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { Vla }
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { vla. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				cs'2.
					^ \markup {
						\italic
							{
								"tutti Viola"
							}
						}
				cs'4 ~
				cs'4.
				d'8 ~
				d'2 ~
				d'4.
				cs'8 ~
				cs'2
				d'4.
				d'8 ~
				d'2 ~
				d'4.
				d'8 ~
				d'2
				cs'4.
				cs'8 ~
				cs'2 ~
				cs'2.
				e'4
				fs'1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { vc. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				e2.
					^ \markup {
						\italic
							{
								"tutti Cello"
							}
						}
				e4 ~
				e4.
				fs8 ~
				fs2 ~
				fs4.
				e8 ~
				e2
				fs4.
				fs8 ~
				fs2 ~
				fs4.
				fs8 ~
				fs2
				e4.
				e8 ~
				e2 ~
				e2.
				cs'4
				d'1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "bass" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				cs''1
				cs''8 (
				d''4. ~
				d''2 )
				r4
				r8
				cs''8 ~ (
				cs''4
				e''4
				d''2. )
				cs''4 (
				e''4.
				d''8 ~
				d''4
				fs''4
				cs''2. )
				cs''8 (
				d''8 ~
				d''4. )
				cs''8 (
				fs''4
				e''4 )
				fs''2.
				cs''8 (
				d''8 )
				\context Staff {#(set-accidental-style 'modern)}
				cs''1
				cs''8 (
				d''4. ~
				d''2 )
				r4
				r8
				cs''8 ~ (
				cs''4
				e''4
				d''2. )
				cs''4 (
				e''4.
				d''8 ~
				d''4
				fs''4
				cs''2. )
				cs''8 (
				d''8 ~
				d''4. )
				cs''8 (
				fs''4
				e''4 )
				fs''2.
				cs''8 (
				d''8 )
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				r2
				cs'''2
				e''4. (
				cs'''8 ~
				cs'''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				cs'''4. )
				e''8 ~ (
				e''8
				cs'''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
				\context Staff {#(set-accidental-style 'modern)}
				r2
				a''2
				e''4. (
				a''8 ~
				a''2 )
				r4
				r8
				e''8 ~ (
				e''2 ~
				e''4.
				fs''8 ~
				fs''2 ~
				fs''2. )
				d''4 (
				e''2. )
				e''4 (
				a''4. )
				e''8 ~ (
				e''8
				a''4. )
				fs''4 (
				cs'''8
				d'''8
				e''4 )
				e''4
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				cs1 ~
				cs1 ~
				cs1
				fs1 ~
				fs1
				e1 ~
				e1
				d1
				\context Staff {#(set-accidental-style 'modern)}
				cs1 ~
				cs1 ~
				cs1
				fs1 ~
				fs1
				e1 ~
				e1
				d1
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				<fs,>1
				<fs,>1
				<fs,>1
				<fs,>1
				<fs,>1
				<fs,>1
				<fs,>1
				<fs,>1
				\context Staff {#(set-accidental-style 'modern)}
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
				<d,>1
			}
		>>
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\context Staff {#(set-accidental-style 'modern)}
			\numericTimeSignature
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			\context Staff {#(set-accidental-style 'modern)}
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
		}
	>>
}