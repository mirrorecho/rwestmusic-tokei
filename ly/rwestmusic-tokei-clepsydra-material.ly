% 2015-02-10 15:21

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	tagline = \markup { [] }
	title = \markup { Clepsydra }
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
	\context Score = "clepsydra-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context StaffGroup = "winds" <<
			\context Staff = "flute1" {
				\set Staff.instrumentName = \markup { Flute 1 }
				\set Staff.shortInstrumentName = \markup { Fl.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4=116
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4=116
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI_div1" {
				\set Staff.instrumentName = \markup { Violin I 1 }
				\set Staff.shortInstrumentName = \markup { Vln.I.1 }
				\tempo 4=116
				\numericTimeSignature
				a''4 -\downbow \p
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				\bar "||"
				a''4 -\downbow \mf
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				\bar "||"
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				R1
				\bar "||"
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				R1
			}
			\context Staff = "violinI_div2" {
				\set Staff.instrumentName = \markup { Violin I 2 }
				\set Staff.shortInstrumentName = \markup { Vln.I.2 }
				\tempo 4=116
				\numericTimeSignature
				a''4 -\downbow \p
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				\bar "||"
				a''4 -\downbow \mf
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				\bar "||"
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				R1
				\bar "||"
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				a''4 -\downbow
				R1
			}
			\context Staff = "violinII_div1" {
				\set Staff.instrumentName = \markup { Violin II 1 }
				\set Staff.shortInstrumentName = \markup { Vln.II.1 }
				\tempo 4=116
				\numericTimeSignature
				a''1 :32 \pp
				a''1 :32
				a''1 :32
				\bar "||"
				a''1 \p \<
				gs''4. (
				a''8 ~
				a''2 )
				a''1 \mf
				\bar "||"
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
				\bar "||"
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
			}
			\context Staff = "violinII_div2" {
				\set Staff.instrumentName = \markup { Violin II 2 }
				\set Staff.shortInstrumentName = \markup { Vln.II.2 }
				\tempo 4=116
				\numericTimeSignature
				a''1 :32 \pp
				a''1 :32
				a''1 :32
				\bar "||"
				a''1 \p \<
				gs''4. (
				a''8 ~
				a''2 )
				a''1 \mf
				\bar "||"
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
				\bar "||"
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
			}
			\context Staff = "viola_div1" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 1 }
				\set Staff.shortInstrumentName = \markup { Vla.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				a''1 :32 \pp \glissando
				gs''1 :32 \glissando
				a''1 :32
				\bar "||"
				a''1 :32 \glissando
				gs''1 :32
				R1
				\bar "||"
				a''1 :32 \glissando
				gs''1 :32
				R1
			}
			\context Staff = "viola_div2" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 2 }
				\set Staff.shortInstrumentName = \markup { Vla.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				gs''1 :32 \pp \glissando
				a''1 :32 \glissando
				gs''1 :32
				\bar "||"
				gs''1 :32 \glissando
				a''1 :32
				R1
				\bar "||"
				gs''1 :32 \glissando
				a''1 :32
				R1
			}
			\context Staff = "cello_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 1 }
				\set Staff.shortInstrumentName = \markup { Vc.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "cello_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 2 }
				\set Staff.shortInstrumentName = \markup { Vc.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "bass_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 1 }
				\set Staff.shortInstrumentName = \markup { Cb.1 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
			}
			\context Staff = "bass_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 2 }
				\set Staff.shortInstrumentName = \markup { Cb.2 }
				\tempo 4=116
				\numericTimeSignature
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "||"
				R1
				R1
				R1
				\bar "|."
			}
		>>
	>>
}