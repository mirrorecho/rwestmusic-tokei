\language "english"

\context Score = "wadokei-material" <<
	\context RhythmicStaff = "cycle" {
		\set Staff.instrumentName = \markup { Cycle }
		\set Staff.shortInstrumentName = \markup { [C] }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "flute1" {
		\set Staff.instrumentName = \markup { Flute 1 }
		\set Staff.shortInstrumentName = \markup { Fl.1 }
		\time 9/8
		a''4. (
		b''4. )
		a''4. -\tenuto
		a''4. (
		b''4. )
		a''4. -\tenuto
		R4.
		R4.
		R4.
		R4.
		R4.
		R4.
		\bar "||"
		a''4. (
		b''4. )
		a''4. -\tenuto
		a''4. (
		b''4. )
		a''4. -\tenuto
		R4.
		R4.
		R4.
		R4.
		R4.
		R4.
		\bar "||"
		a''4. (
		b''4. )
		a''4. -\tenuto
		a''4. (
		b''4. )
		a''4. -\tenuto
		R4.
		R4.
		R4.
		R4.
		R4.
		R4.
		\bar "||"
	}
	\context Staff = "flute2" {
		\set Staff.instrumentName = \markup { Flute 2 }
		\set Staff.shortInstrumentName = \markup { Fl.2 }
		\time 9/8
		R4.
		R4.
		R4.
		R4.
		R4.
		R4.
		a''4. (
		b''4. )
		a''4. -\tenuto
		a''4. (
		b''4. )
		a''4. -\tenuto
		\bar "||"
		R4.
		R4.
		R4.
		R4.
		R4.
		R4.
		a''4. (
		b''4. )
		a''4. -\tenuto
		a''4. (
		b''4. )
		a''4. -\tenuto
		\bar "||"
		R4.
		R4.
		R4.
		R4.
		R4.
		R4.
		a''4. (
		b''4. )
		a''4. -\tenuto
		a''4. (
		b''4. )
		a''4. -\tenuto
		\bar "||"
	}
	\context Staff = "oboe1" {
		\set Staff.instrumentName = \markup { Oboe 1 }
		\set Staff.shortInstrumentName = \markup { Ob.1 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "oboe2" {
		\set Staff.instrumentName = \markup { Oboe 2 }
		\set Staff.shortInstrumentName = \markup { Ob.2 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "oboe3" {
		\set Staff.instrumentName = \markup { Oboe 3 }
		\set Staff.shortInstrumentName = \markup { Ob.3 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "clarinet1" {
		\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
		\set Staff.shortInstrumentName = \markup { Cl.1 }
		\time 9/8
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
		R4.
		R4.
		R4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		R4.
		R4.
		R4.
		\bar "||"
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
	}
	\context Staff = "clarinet2" {
		\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
		\set Staff.shortInstrumentName = \markup { Cl.2 }
		\time 9/8
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
		R4.
		R4.
		R4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		R4.
		R4.
		R4.
		\bar "||"
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
	}
	\context Staff = "bassoon1" {
		\set Staff.instrumentName = \markup { Bassoon 1 }
		\set Staff.shortInstrumentName = \markup { Bsn.1 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "bassoon2" {
		\set Staff.instrumentName = \markup { Bassoon 2 }
		\set Staff.shortInstrumentName = \markup { Bsn.2 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "horn1" {
		\set Staff.instrumentName = \markup { Horn in F 1 }
		\set Staff.shortInstrumentName = \markup { Hn.1 }
		\time 9/8
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
		R4.
		R4.
		R4.
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		R4.
		R4.
		R4.
		\bar "||"
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
	}
	\context Staff = "horn2" {
		\set Staff.instrumentName = \markup { Horn in F 2 }
		\set Staff.shortInstrumentName = \markup { Hn.2 }
		\time 9/8
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
		R4.
		R4.
		R4.
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		R4.
		R4.
		R4.
		\bar "||"
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\xNotesOff
		r4.
		r4.
		\xNotesOn
		c'4. \pp ~ \<
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. ~
		\xNotesOff
		\xNotesOn
		c'4. \mp
		\bar "||"
		\xNotesOff
	}
	\context Staff = "trumpet1" {
		\set Staff.instrumentName = \markup { Trumpet in C 1 }
		\set Staff.shortInstrumentName = \markup { Tpt.1 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "trumpet2" {
		\set Staff.instrumentName = \markup { Trumpet in C 2 }
		\set Staff.shortInstrumentName = \markup { Tpt.2 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "trombone1" {
		\clef "bass"
		\set Staff.instrumentName = \markup { Tenor Trombone 1 }
		\set Staff.shortInstrumentName = \markup { Tbn.1 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "trombone2" {
		\clef "bass"
		\set Staff.instrumentName = \markup { Tenor Trombone 2 }
		\set Staff.shortInstrumentName = \markup { Tbn.2 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "tuba" {
		\clef "bass"
		\set Staff.instrumentName = \markup { Tuba }
		\set Staff.shortInstrumentName = \markup { Tba }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context RhythmicStaff = "perc1" {
		\set Staff.instrumentName = \markup { Percussion 1 }
		\set Staff.shortInstrumentName = \markup { Perc.1 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context RhythmicStaff = "perc2" {
		\set Staff.instrumentName = \markup { Percussion 2 }
		\set Staff.shortInstrumentName = \markup { Perc.2 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "timpani" {
		\clef "bass"
		\set Staff.instrumentName = \markup { Timpani }
		\set Staff.shortInstrumentName = \markup { Timp }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context RhythmicStaff = "shime" {
		\set Staff.instrumentName = \markup { Shime }
		\set Staff.shortInstrumentName = \markup { Sh. }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context RhythmicStaff = "gane" {
		\set Staff.instrumentName = \markup { Gane }
		\set Staff.shortInstrumentName = \markup { Gn. }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context RhythmicStaff = "odaiko" {
		\set Staff.instrumentName = \markup { Odaiko }
		\set Staff.shortInstrumentName = \markup { O.d. }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context RhythmicStaff = "taiko1" {
		\set Staff.instrumentName = \markup { Taiko 1 }
		\set Staff.shortInstrumentName = \markup { T.1 }
		\time 9/8
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		\bar "||"
		r4. _ \markup { tsu }
		c4. _ \markup { don }
		c4. _ \markup { don }
		c4. _ \markup { don }
		r4.
		r4.
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		\bar "||"
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		\bar "||"
	}
	\context RhythmicStaff = "taiko2" {
		\set Staff.instrumentName = \markup { Taiko 2 }
		\set Staff.shortInstrumentName = \markup { T.2. }
		\time 9/8
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		\bar "||"
		r4. _ \markup { tsu }
		c4. _ \markup { don }
		c4. _ \markup { don }
		c4. _ \markup { don }
		r4.
		r4.
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		\bar "||"
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		c4. _ \markup { don }
		r4.
		r4.
		r4. _ \markup { tsu }
		r4.
		r4.
		\bar "||"
	}
	\context Staff = "violinI" {
		\set Staff.instrumentName = \markup { Violin I }
		\set Staff.shortInstrumentName = \markup { Vln.I }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "violinII" {
		\set Staff.instrumentName = \markup { Violin II }
		\set Staff.shortInstrumentName = \markup { Vln.II }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "viola" {
		\set Staff.instrumentName = \markup { Viola }
		\set Staff.shortInstrumentName = \markup { Vla }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "cello" {
		\set Staff.instrumentName = \markup { Cello }
		\set Staff.shortInstrumentName = \markup { Vc. }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "bass" {
		\set Staff.instrumentName = \markup { Bass }
		\set Staff.shortInstrumentName = \markup { Cb. }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "line_1" {
		\set Staff.instrumentName = \markup { Line 1 }
		\set Staff.shortInstrumentName = \markup { Ln.1 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "line_2" {
		\set Staff.instrumentName = \markup { Line 2 }
		\set Staff.shortInstrumentName = \markup { Ln.2 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "harmony_1" {
		\set Staff.instrumentName = \markup { Harmony 1 }
		\set Staff.shortInstrumentName = \markup { Har.1 }
		\time 9/8
		<b d'>2.
		r4.
		<cs' e'>2.
		r4.
		<b d'>2.
		r4.
		<cs' e'>2.
		r4.
		\bar "||"
		<d' e' b' fs''>4.
		<cs' b' cs''>4.
		<cs' cs'' ds''>4.
		<d' a''>2.
		r4.
		<b' e''>4.
		<b d'>4.
		<cs' e'>4.
		d'4.
		g'4
		a'8
		cs''4.
		\bar "||"
		<d' e' b' fs''>4.
		<cs' b' cs''>4.
		<cs' cs'' ds''>4.
		<d' a''>2.
		r4.
		<b' e''>4.
		<b d'>4.
		<cs' e'>4.
		d'4.
		g'4
		a'8
		cs''4.
		\bar "||"
	}
	\context Staff = "harmony_2" {
		\set Staff.instrumentName = \markup { Harmony 2 }
		\set Staff.shortInstrumentName = \markup { Har.2 }
		\time 9/8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		r1
		r8
		\bar "||"
	}
	\context Staff = "harmony_3" {
		\clef "bass"
		\set Staff.instrumentName = \markup { Harmony 3 }
		\set Staff.shortInstrumentName = \markup { Har.3 }
		\time 9/8
		b,2.
		r4.
		a,2.
		r4.
		g,2.
		r4.
		a,2.
		r4.
		\bar "||"
		<c, d>4.
		<a, d b>4.
		<g,, a, b>4.
		f,2.
		r4.
		g,2.
		r4.
		a,2.
		r4.
		\bar "||"
		<c, d>4.
		<a, d b>4.
		<g,, a, b>4.
		f,2.
		r4.
		g,2.
		r4.
		a,2.
		r4.
		\bar "||"
	}
>>