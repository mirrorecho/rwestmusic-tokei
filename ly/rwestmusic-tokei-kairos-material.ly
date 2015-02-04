% 2015-02-03 18:52

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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\set Staff.instrumentName = \markup { Bassoon 1 }
			\set Staff.shortInstrumentName = \markup { Bsn.1 }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
			r4
			cs'2. \pp ~ \<
			cs'2 \p
			r2
			R1
			r4
			d'2. \pp ~ \<
			d'2 \p
			r2
			r4
			cs'2. \pp ~ \<
			cs'2 \p
			r2
			R1
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
			\set Staff.instrumentName = \markup { Bassoon 2 }
			\set Staff.shortInstrumentName = \markup { Bsn.2 }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\set Staff.instrumentName = \markup { Tenor Trombone 1 }
			\set Staff.shortInstrumentName = \markup { Tbn.1 }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\set Staff.instrumentName = \markup { Tenor Trombone 2 }
			\set Staff.shortInstrumentName = \markup { Tbn.2 }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\set Staff.instrumentName = \markup { Tuba }
			\set Staff.shortInstrumentName = \markup { Tba }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\set Staff.instrumentName = \markup { Timpani }
			\set Staff.shortInstrumentName = \markup { Timp }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			{
				\time 32/4
				{
					c4 _ \markup { dan }
					c8 _ \markup { da }
					c8 _ \markup { da }
					r2 -\fermata
					s1
					s1
					s1
					c4 _ \markup { dan }
					c8 _ \markup { da }
					c8 _ \markup { da }
					r2 -\fermata
					s1
					s1
					s1
				}
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					c4 _ \markup { dan }
					c8 [ _ \markup { da }
					c8 ]
						^ \markup { repeat slowing down }
						_ \markup { da }
					s2
					s1
					s1
					s1
					c4 _ \markup { dan }
					c8 [ _ \markup { da }
					c8 ]
						^ \markup { repeat slowing down }
						_ \markup { da }
					s2
					s1
					s1
					s1
				}
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			\textLengthOn
			\dynamicUp
			{
				\time 32/4
				{
					c4 _ \markup { dan }
					c8 _ \markup { da }
					c8 _ \markup { da }
					r2 -\fermata
					s1
					s1
					s1
					c4 _ \markup { dan }
					c8 _ \markup { da }
					c8 _ \markup { da }
					r2 -\fermata
					s1
					s1
					s1
				}
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					c4 _ \markup { dan }
					c8 _ \markup { da }
					c8 _ \markup { da }
					r2 -\fermata
					s1
					s1
					s1
					c4 _ \markup { dan }
					c8 [ _ \markup { da }
					c8 ]
						^ \markup { repeat slowing down }
						_ \markup { da }
					s2
					s1
					s1
					s1
				}
			}
			c4 _ \markup { dan }
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat slowing down }
				_ \markup { da }
			s2
			s1
			s1
			s1
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			<<
				\context Staff = "violinI_1" {
					\set Staff.instrumentName = \markup { Violin I }
					\set Staff.shortInstrumentName = \markup { Vln.I }
					\set Staff.alignAboveContext = #"violinI"
					\once \override 
					                            Staff.TimeSignature #'stencil = #(lambda (grob)
					                            (parenthesize-stencil (grob-interpret-markup grob 
					                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
					                            ) 0.1 0.4 0.4 0.1 ))
					\numericTimeSignature
					{
						\time 32/4
						s1 * 8
					}
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						s1 * 8
					}
				}
				{
					{
						\time 32/4
						s1 * 8
					}
					{
						s1 * 8
					}
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
			>>
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\set Staff.instrumentName = \markup { Cello }
			\set Staff.shortInstrumentName = \markup { Vc. }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				{
					cs1 \p ~
					cs1 ~
					cs1
					fs1 ~
					fs1
					e1 ~
					e1
					d1
				}
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					cs1 \p ~
					cs1 ~
					cs1
					fs1 ~
					fs1
					e1 ~
					e1
					d1
				}
			}
			cs1 \p ~
			cs1 ~
			cs1
			fs1 ~
			fs1
			e1 ~
			e1
			d1
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				{
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
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
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
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				{
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
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
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
			}
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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
			\set Staff.instrumentName = \markup { Harmony 2 }
			\set Staff.shortInstrumentName = \markup { Har.2 }
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				{
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
				}
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
					cs,1
				}
			}
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
			cs,1
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
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\numericTimeSignature
			{
				\time 32/4
				s1 * 8
			}
			\once \override Staff.TimeSignature.stencil = ##f
			{
				s1 * 8
			}
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
				s1 * 1
			}
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