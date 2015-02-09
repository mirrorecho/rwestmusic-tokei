% 2015-02-08 20:07

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
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
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b''8 (
				cs'''8
				b''8 )
				a''8 (
				af''4 )
				b''8 (
				fs''8 ~
				fs''4 )
				e''4 -\tenuto
				a''4 -\tenuto
				d''4 -\tenuto
				d'''4. -\tenuto
				a''8 -\tenuto ~
				a''4
				r4
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
				}
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b''8 -\staccato \p [ \<
				cs'''8 -\staccato ]
				d'''8 -\staccato [
				b''8 -\staccato ]
				ds'''8 -\staccato [
				fs''8 -\staccato ]
				g''8 -\staccato [
				b''8 -\accent -\staccato \mf ]
				r8 [
				cs'''8 -\staccato ]
				d'''8 -\staccato [
				b''8 -\staccato ]
				ds'''8 -\staccato [
				fs''8 -\staccato ]
				g''8 -\accent -\staccato [
				b''8 -\staccato ]
				b''8 -\staccato \p [
				cs'''8 -\staccato ]
				d'''8 -\staccato [
				b''8 -\staccato ]
				ds'''8 -\staccato [
				fs''8 -\staccato ]
				g''8 -\staccato [
				b''8 -\staccato ]
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
				}
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				fs''8 -\staccato \p [ \<
				cs''8 -\staccato ]
				g'8 -\staccato [
				fs''8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				cs''8 -\staccato ]
				g'8 -\staccato [
				fs''8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\accent -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato \p [
				cs''8 -\staccato ]
				g'8 -\staccato [
				fs''8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
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
				}
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b'8 -\staccato \p [ \<
				a'8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\accent -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato \p [
				a'8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				a'8 -\staccato ]
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
				}
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b'8 -\staccato \p [ \<
				a'8 -\staccato ]
				a'8 -\staccato [
				cs''8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				g'8 -\staccato [
				b'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				a'8 -\staccato [
				cs''8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				g'8 -\accent -\staccato [
				b'8 -\staccato ]
				b'8 -\staccato \p [
				a'8 -\staccato ]
				a'8 -\staccato [
				cs''8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				g'8 -\staccato [
				b'8 -\staccato ]
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
				}
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ds''8 -\staccato \p [ \<
				a'8 -\staccato ]
				b'8 -\staccato [
				b'8 -\staccato ]
				b'8 -\staccato [
				d''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				b'8 -\staccato [
				b'8 -\staccato ]
				b'8 -\staccato [
				d''8 -\staccato ]
				a'8 -\accent -\staccato [
				a'8 -\staccato ]
				ds''8 -\staccato \p [
				a'8 -\staccato ]
				b'8 -\staccato [
				b'8 -\staccato ]
				b'8 -\staccato [
				d''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
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
				}
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ds'8 -\staccato \p [ \<
				a'8 -\staccato ]
				d'8 -\staccato [
				cs'8 -\staccato ]
				gs'8 -\staccato [
				d'8 -\staccato ]
				e'8 -\staccato [
				fs'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				d'8 -\staccato [
				cs'8 -\staccato ]
				gs'8 -\staccato [
				d'8 -\staccato ]
				e'8 -\accent -\staccato [
				fs'8 -\staccato ]
				ds'8 -\staccato \p [
				a'8 -\staccato ]
				d'8 -\staccato [
				cs'8 -\staccato ]
				gs'8 -\staccato [
				d'8 -\staccato ]
				e'8 -\staccato [
				fs'8 -\staccato ]
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
				}
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				r4
				r8
				a8 \mp ~ \<
				a4 ~
				a8
				a8 \mf ~
				a8 [
				a8 ~ ]
				a8 [
				a8 ~ ]
				a8 [
				a8 -\staccato ]
				r4
				R1
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
				}
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
				c4
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				r4
				r8
				c8 \p \< _ \markup { do }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 -\accent \mf ] _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 _ \markup { do }
				c4 -\accent _ \markup { don }
				c8 \p \< _ \markup { da }
				c8 _ \markup { da }
				r8
				c8 _ \markup { da }
				c8 _ \markup { da }
				c8 _ \markup { da }
				r8
				c8 _ \markup { da }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 [ _ \markup { da }
				c8 \mp ] _ \markup { da }
				c8 \p [ _ \markup { ka }
				c8 ] _ \markup { ka }
				r8
				c8 _ \markup { ka }
				r8
				c8 _ \markup { ka }
				c4 \mf _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 \p \< _ \markup { do }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 -\accent \mf ] _ \markup { don }
				r2
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
				r4
				r8
				c8 \p \< _ \markup { do }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 -\accent \mf ] _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 _ \markup { do }
				c4 -\accent _ \markup { don }
				c8 \p \< _ \markup { da }
				c8 _ \markup { da }
				r8
				c8 _ \markup { da }
				c8 _ \markup { da }
				c8 _ \markup { da }
				r8
				c8 _ \markup { da }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c8 [ _ \markup { da }
				c8 \mp ] _ \markup { da }
				c8 \p [ _ \markup { ka }
				c8 ] _ \markup { ka }
				r8
				c8 _ \markup { ka }
				r8
				c8 _ \markup { ka }
				c4 \mf _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 _ \markup { don }
				r8
				c8 \p \< _ \markup { do }
				c8 [ _ \markup { do }
				c8 ] _ \markup { ko }
				c8 [ _ \markup { do }
				c8 -\accent \mf ] _ \markup { don }
				r2
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI_div1" {
				\set Staff.instrumentName = \markup { Violin I 1 }
				\set Staff.shortInstrumentName = \markup { Vln.I.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ds'8 \mp \< (
				fs'8
				b'8 )
				cs''8 (
				gs'8 )
				gs''8 \mf (
				e''8
				fs''8 )
				a'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				fs'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				as'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				a''8 (
				d''8
				as'8 )
				a'8 (
				g'8 )
				a'8 (
				ds'8 )
				a'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''8 (
				c''8 )
				ds''8 (
				d''8 )
				c''8 (
				ds''8 )
				d''8 (
				c''8 )
				ds''8 (
				d''8 )
				c''8 (
				ds''8 )
				d''8 (
				c''8 )
				ds''8 (
				d''8 )
				c''8 (
				ds''8 )
				d''8 (
				c''8 )
				ds''8 (
				d''8 )
				c''8 (
				ds''8 )
			}
			\context Staff = "violinI_div2" {
				\set Staff.instrumentName = \markup { Violin I 2 }
				\set Staff.shortInstrumentName = \markup { Vln.I.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				ds'8 \mp \< (
				cs''8
				b'8 )
				a'8 (
				gs'8 )
				gs''8 \mf (
				e''8
				fs''8 )
				fs'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				fs'8 -\staccato -\tenuto
				b'8 -\staccato -\tenuto
				cs''8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				d''8 -\staccato -\tenuto
				fs''8 (
				d''8
				ds''8 )
				d''8 (
				a'8 )
				as'8 (
				gs'8 )
				as'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''8 (
				g'8 )
				as'8 (
				c''8 )
				g'8 (
				as'8 )
				c''8 (
				g'8 )
				as'8 (
				c''8 )
				g'8 (
				as'8 )
				c''8 (
				g'8 )
				as'8 (
				c''8 )
				g'8 (
				as'8 )
				c''8 (
				g'8 )
				as'8 (
				c''8 )
				g'8 (
				as'8 )
			}
			\context Staff = "violinII_div1" {
				\set Staff.instrumentName = \markup { Violin II 1 }
				\set Staff.shortInstrumentName = \markup { Vln.II.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a'8 \mp \< (
				b'8
				d''8 )
				b'8 (
				a'8 )
				b'8 \mf (
				c''8
				d''8 )
				a'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				f'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				c''8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				c''8 -\staccato -\tenuto
				d''8 (
				a''8
				g''8 )
				f''8 (
				c''8 )
				a'8 (
				c''8 )
				f'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				as'8 (
				c''8 )
				f''8 (
				as'8 )
				c''8 (
				f''8 )
				as'8 (
				c''8 )
				f''8 (
				as'8 )
				c''8 (
				f''8 )
				as'8 (
				c''8 )
				f''8 (
				as'8 )
				c''8 (
				f''8 )
				as'8 (
				c''8 )
				f''8 (
				as'8 )
				c''8 (
				f''8 )
			}
			\context Staff = "violinII_div2" {
				\set Staff.instrumentName = \markup { Violin II 2 }
				\set Staff.shortInstrumentName = \markup { Vln.II.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a'8 \mp \< (
				fs'8
				g'8 )
				a'8 (
				b'8 )
				a''8 \mf (
				b''8
				d''8 )
				cs''8 -\staccato -\tenuto
				d''8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				c''8 -\staccato -\tenuto
				d''8 (
				f''8
				d''8 )
				c''8 (
				a'8 )
				g'8 (
				a'8 )
				g'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'8 (
				g'8 )
				ds''8 (
				a'8 )
				g'8 (
				ds''8 )
				a'8 (
				g'8 )
				ds''8 (
				a'8 )
				g'8 (
				ds''8 )
				a'8 (
				g'8 )
				ds''8 (
				a'8 )
				g'8 (
				ds''8 )
				a'8 (
				g'8 )
				ds''8 (
				a'8 )
				g'8 (
				ds''8 )
			}
			\context Staff = "viola_div1" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 1 }
				\set Staff.shortInstrumentName = \markup { Vla.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				fs'8 \mp \< (
				e'8
				cs'8 )
				fs'8 (
				gs'8 )
				fs'8 \mf (
				a'8
				b'8 )
				gs'8 -\staccato -\tenuto
				fs'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				fs'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				d''8 (
				a'8
				d''8 )
				a'8 (
				b'8 )
				a'8 (
				a8 )
				d'8 -\tenuto
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
				}
			}
			\context Staff = "viola_div2" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 2 }
				\set Staff.shortInstrumentName = \markup { Vla.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b8 \mp \< (
				cs'8
				a'8 )
				e'8 (
				a'8 )
				b'8 \mf (
				gs'8
				b'8 )
				cs'8 -\staccato -\tenuto
				b8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				b'8 (
				d''8
				a'8 )
				d''8 (
				a'8 )
				g'8 (
				a8 )
				a'8 -\tenuto
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
				}
			}
			\context Staff = "cello_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 1 }
				\set Staff.shortInstrumentName = \markup { Vc.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				as8 \mp \< (
				a8
				fs8 )
				a8 (
				ds8 )
				a,8 \mf (
				g,8
				a,8 )
				fs8 -\staccato -\tenuto
				e8 -\staccato -\tenuto
				c'8 -\staccato -\tenuto
				e8 -\staccato -\tenuto
				d8 -\staccato -\tenuto
				a8 -\staccato -\tenuto
				f8 -\staccato -\tenuto
				d8 -\staccato -\tenuto
				b,8 (
				c8
				d8 )
				f8 (
				e8 )
				d8 (
				g8 )
				a8 -\tenuto
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
				}
			}
			\context Staff = "cello_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 2 }
				\set Staff.shortInstrumentName = \markup { Vc.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b8 \mp \< (
				a8
				b8 )
				a8 (
				e8 )
				d8 \mf (
				b,8
				a,8 )
				e8 -\staccato -\tenuto
				fs8 -\staccato -\tenuto
				e8 -\staccato -\tenuto
				a8 -\staccato -\tenuto
				a8 -\staccato -\tenuto
				e8 -\staccato -\tenuto
				d8 -\staccato -\tenuto
				g8 -\staccato -\tenuto
				g,8 (
				d8
				g,8 )
				a,8 (
				e8 )
				f8 (
				c'8 )
				as8 -\tenuto
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
				}
			}
			\context Staff = "bass_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 1 }
				\set Staff.shortInstrumentName = \markup { Cb.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
			\context Staff = "bass_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 2 }
				\set Staff.shortInstrumentName = \markup { Cb.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				b'1
				b'1
				b'1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''1
				c''1
				c''1
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
			\tempo 4=116
			\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
			}
			\context Staff {#(set-accidental-style 'modern)}
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