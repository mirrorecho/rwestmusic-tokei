% 2015-02-06 01:59

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
				r8
				f''4. \pp ~ \<
				f''2 \p ~ \>
				f''1 \pp
				r8
				f''4. \pp ~ \<
				f''2 \p ~ \>
				f''1 \pp
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
				r8
				gs'4. \pp ~ \<
				gs'2 \p ~ \>
				gs'1 \pp
				r8
				gs'4. \pp ~ \<
				gs'2 \p ~ \>
				gs'1 \pp
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
				r8
				cs''4. \pp ~ \<
				cs''2 \p ~ \>
				cs''1 \pp
				r8
				cs''4. \pp ~ \<
				cs''2 \p ~ \>
				cs''1 \pp
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
				r8
				fs''4. \pp ~ \<
				fs''2 \p ~ \>
				fs''1 \pp
				r8
				fs''4. \pp ~ \<
				fs''2 \p ~ \>
				fs''1 \pp
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
				r8
				d''4. \pp ~ \<
				d''2 \p ~ \>
				d''1 \pp
				r8
				d''4. \pp ~ \<
				d''2 \p ~ \>
				d''1 \pp
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
				r2
				cs''2
				cs'4. (
				cs''8 ~
				cs''2 )
				r4
				r8
				cs'8 ~ (
				cs'2 ~
				cs'4.
				fs'8 ~
				fs'2 ~
				fs'2. )
				d'4 (
				cs'2. )
				cs'4 (
				cs''4. )
				cs'8 ~ (
				cs'8
				cs''4. )
				fs'4 (
				cs''8
				d''8
				cs'4 )
				cs'4
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
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\numericTimeSignature
				<<
					\context Staff = "violinI_1" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
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
					\context Staff = "violinI_2" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
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
					\context Staff = "violinI_3" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
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
					\context Staff = "violinI_4" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
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
					{
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
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
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\numericTimeSignature
				<<
					\context Staff = "violinII_1" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
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
					\context Staff = "violinII_2" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
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
					\context Staff = "violinII_3" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
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
					\context Staff = "violinII_4" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
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
					{
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
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
			\context Staff = "viola" {
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { Vla }
				\numericTimeSignature
				<<
					\context Staff = "viola_1" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
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
					\context Staff = "viola_2" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
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
					\context Staff = "viola_3" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
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
					{
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
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
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\numericTimeSignature
				<<
					\context Staff = "cello_1" {
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.1 }
						\set Staff.shortInstrumentName = \markup { vc.1 }
						\set Staff.alignAboveContext = #"cello"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.1 }
						\set Staff.shortInstrumentName = \markup { vc.1 }
						\set Staff.alignAboveContext = #"cello"
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
					\context Staff = "cello_2" {
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.2 }
						\set Staff.shortInstrumentName = \markup { vc.2 }
						\set Staff.alignAboveContext = #"cello"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.2 }
						\set Staff.shortInstrumentName = \markup { vc.2 }
						\set Staff.alignAboveContext = #"cello"
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
					\context Staff = "cello_3" {
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.3 }
						\set Staff.shortInstrumentName = \markup { vc.3 }
						\set Staff.alignAboveContext = #"cello"
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.3 }
						\set Staff.shortInstrumentName = \markup { vc.3 }
						\set Staff.alignAboveContext = #"cello"
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
					{
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.4 }
						\set Staff.shortInstrumentName = \markup { vc.4 }
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
						\context Staff {#(set-accidental-style 'modern)}
						\set Staff.instrumentName = \markup { Cello.4 }
						\set Staff.shortInstrumentName = \markup { vc.4 }
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
			\context Staff = "bass" {
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				cs1 ~
				cs1 ~
				cs1 ~
				cs1 ~
				cs1 ~
				cs1 ~
				cs1 ~
				cs1
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				r2
				cs''2
				cs'4. (
				cs''8 ~
				cs''2 )
				r4
				r8
				cs'8 ~ (
				cs'2 ~
				cs'4.
				fs'8 ~
				fs'2 ~
				fs'2. )
				d'4 (
				cs'2. )
				cs'4 (
				cs''4. )
				cs'8 ~ (
				cs'8
				cs''4. )
				fs'4 (
				cs''8
				d''8
				cs'4 )
				cs'4
				\context Staff {#(set-accidental-style 'modern)}
				r2
				a'2
				e'4. (
				a'8 ~
				a'2 )
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
				a'4. )
				e'8 ~ (
				e'8
				a'4. )
				fs'4 (
				cs''8
				d''8
				e'4 )
				e'4
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
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				\context Staff {#(set-accidental-style 'modern)}
				<cs,>1
				<cs,>1
				<cs,>1
				<cs,>1
				<cs,>1
				<cs,>1
				<cs,>1
				<cs,>1
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