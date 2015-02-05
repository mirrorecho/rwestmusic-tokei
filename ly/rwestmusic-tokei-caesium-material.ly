% 2015-02-04 16:19

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
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				\set Staff.instrumentName = \markup { Bass Clarinet }
				\set Staff.shortInstrumentName = \markup { B.cl. }
				r8
					^ \markup {
						\italic
							{
								"Bass Clarinet"
							}
						}
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				r8
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				R1
				a1 \mp ~ \<
				a1 \mf
				{
					\time 10/8
					r4.
					r4.
					r4
					r4
				}
				{
					\time 7/8
					a2.. \mp ~ \<
				}
				{
					a2.. \mp
				}
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				R1
				bf1 \mp ~ \<
				bf1 \mf
				{
					\time 10/8
					r4.
					r4.
					r4
					r4
				}
				{
					\time 7/8
					bf2.. \mp ~ \<
				}
				{
					bf2.. \mp
				}
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
					a''8
					r2..
				}
				{
					r1
				}
				{
					r8
					r2..
				}
				{
					a''8
					r2..
				}
				{
					r1
				}
				{
					r8
					r2..
				}
				{
					\time 10/8
					{
						a''8
						r1
						r8
					}
				}
				{
					\time 7/8
					{
						r2..
					}
				}
				{
					{
						r2..
					}
				}
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
					a''8
					r2..
				}
				{
					r1
				}
				{
					r8
					r2..
				}
				{
					a''8
					r2..
				}
				{
					r1
				}
				{
					r8
					r2..
				}
				{
					\time 10/8
					{
						a''8
						r1
						r8
					}
				}
				{
					\time 7/8
					{
						r2..
					}
				}
				{
					{
						r2..
					}
				}
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					c,8 -\accent -\staccato \sfz [
					r8
					r8 ]
					r4.
					r4
					r4
				}
				{
					\time 7/8
					r4.
					r4
					r4
				}
				{
					r4
					r4
					r4.
				}
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					cs,8 -\accent -\staccato \sfz [
					r8
					r8 ]
					r4.
					r4
					r4
				}
				{
					\time 7/8
					r4.
					r4
					r4
				}
				{
					r4
					r4
					r4.
				}
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					fs,,8 -\accent -\staccato \sfz [
					r8
					r8 ]
					r4.
					r4
					r4
				}
				{
					\time 7/8
					r4.
					r4
					r4
				}
				{
					r4
					r4
					r4.
				}
			}
		>>
		\context StaffGroup = "perc" <<
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\numericTimeSignature
				s8 ^ \markup { *dampen }
				s4
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					fs,8 -\accent -\staccato \sfz [
					r8
					r8 ]
					r4.
					r4
					r4
				}
				{
					\time 7/8
					r4.
					r4
					r4
				}
				{
					r4
					r4
					r4.
				}
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				{
					\time 10/8
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
				}
				{
					\time 7/8
					c8 [ _ \markup { don }
					r8
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
				}
				{
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8
					r8 ]
				}
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				{
					\time 10/8
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
				}
				{
					\time 7/8
					c8 [ _ \markup { don }
					r8
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
				}
				{
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8
					r8 ]
				}
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				s4.
				r4 -\fermata
				s4.
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				{
					\time 10/8
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
				}
				{
					\time 7/8
					c8 [ _ \markup { don }
					r8
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
				}
				{
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8 ]
					c8 [ _ \markup { don }
					r8
					r8 ]
				}
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI_div1" {
				\set Staff.instrumentName = \markup { Violin I 1 }
				\set Staff.shortInstrumentName = \markup { Vln.I.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "violinI_div2" {
				\set Staff.instrumentName = \markup { Violin I 2 }
				\set Staff.shortInstrumentName = \markup { Vln.I.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "violinII_div1" {
				\set Staff.instrumentName = \markup { Violin II 1 }
				\set Staff.shortInstrumentName = \markup { Vln.II.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "violinII_div2" {
				\set Staff.instrumentName = \markup { Violin II 2 }
				\set Staff.shortInstrumentName = \markup { Vln.II.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "viola_div1" {
				\set Staff.instrumentName = \markup { Viola 1 }
				\set Staff.shortInstrumentName = \markup { Vla.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "viola_div2" {
				\set Staff.instrumentName = \markup { Viola 2 }
				\set Staff.shortInstrumentName = \markup { Vla.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "cello_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 1 }
				\set Staff.shortInstrumentName = \markup { Vc.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "cello_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 2 }
				\set Staff.shortInstrumentName = \markup { Vc.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "bass_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 1 }
				\set Staff.shortInstrumentName = \markup { Cb.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "bass_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 2 }
				\set Staff.shortInstrumentName = \markup { Cb.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\numericTimeSignature
				s4.
				r4 -\fermata
				s4.
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
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					\time 10/8
					s1 * 5/4
				}
				{
					\time 7/8
					s1 * 7/8
				}
				{
					s1 * 7/8
				}
			}
		>>
	>>
}