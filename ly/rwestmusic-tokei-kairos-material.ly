% 2015-02-04 20:38

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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s4
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs'''2. -\fermata \ppp
						\times 4/5 {
							cs'''2 (
							\afterGrace
							d'''2. )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s4
						\grace {
							\hideNotes
							r32
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
							\startStaff
							\hideNotes
							r16
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
						cs'''2. -\fermata \ppp
						\times 4/5 {
							gs'''2 (
							\afterGrace
							d'''2. )
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
						}
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						r2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 32/4
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\context Staff {#(set-accidental-style 'forget)}
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
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "strings" <<
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
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.1 }
						\set Staff.shortInstrumentName = \markup { vln.I.1 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								s4
								cs'''1 -\fermata \pp
								\afterGrace
								s2
								{
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "violinI_2" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.2 }
						\set Staff.shortInstrumentName = \markup { vln.I.2 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									d'''2 (
									\afterGrace
									cs'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "violinI_3" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.3 }
						\set Staff.shortInstrumentName = \markup { vln.I.3 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									cs'''2 (
									\afterGrace
									d'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "violinI_4" {
						\set Staff.instrumentName = \markup { Violin I }
						\set Staff.shortInstrumentName = \markup { Vln.I }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.4 }
						\set Staff.shortInstrumentName = \markup { vln.I.4 }
						\set Staff.alignAboveContext = #"violinI"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									gs'''2 (
									\afterGrace
									d'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin I.5 }
						\set Staff.shortInstrumentName = \markup { vln.I.5 }
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									d'''2 (
									\afterGrace
									cs'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
				>>
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
				<<
					\context Staff = "violinII_1" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.1 }
						\set Staff.shortInstrumentName = \markup { vln.II.1 }
						\set Staff.alignAboveContext = #"violinII"
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
								cs''2
								fs4. (
								cs''8 ~
								cs''2 )
								r4
								r8
								fs8 ~ (
								fs2 ~
								fs4.
								fs'8 ~
								fs'2 ~
								fs'2. )
								d'4 (
								fs2. )
								fs4 (
								cs''4. )
								fs8 ~ (
								fs8
								cs''4. )
								fs'4 (
								cs''8
								d''8
								fs4 )
								fs4
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "violinII_2" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.2 }
						\set Staff.shortInstrumentName = \markup { vln.II.2 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									cs'''2 (
									\afterGrace
									d'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "violinII_3" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.3 }
						\set Staff.shortInstrumentName = \markup { vln.II.3 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									gs'''2 (
									\afterGrace
									d'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "violinII_4" {
						\set Staff.instrumentName = \markup { Violin II }
						\set Staff.shortInstrumentName = \markup { Vln.II }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.4 }
						\set Staff.shortInstrumentName = \markup { vln.II.4 }
						\set Staff.alignAboveContext = #"violinII"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									d'''2 (
									\afterGrace
									cs'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Violin II.5 }
						\set Staff.shortInstrumentName = \markup { vln.II.5 }
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									cs'''2 (
									\afterGrace
									d'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
				>>
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
				<<
					\context Staff = "viola_1" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.1 }
						\set Staff.shortInstrumentName = \markup { vla.1 }
						\set Staff.alignAboveContext = #"viola"
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
								cs'4
								d'2. )
								cs'4 (
								cs'4.
								d'8 ~
								d'4
								fs'4
								cs'2. )
								cs'8 (
								d'8 ~
								d'4. )
								cs'8 (
								fs'4
								cs'4 )
								fs'2.
								cs'8 (
								d'8 )
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "viola_2" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.2 }
						\set Staff.shortInstrumentName = \markup { vla.2 }
						\set Staff.alignAboveContext = #"viola"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									gs'''2 (
									\afterGrace
									d'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					\context Staff = "viola_3" {
						\set Staff.instrumentName = \markup { Viola }
						\set Staff.shortInstrumentName = \markup { Vla }
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.3 }
						\set Staff.shortInstrumentName = \markup { vla.3 }
						\set Staff.alignAboveContext = #"viola"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 32/4
							{
								s4
								\grace {
									\hideNotes
									r32
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
									\startStaff
									\hideNotes
									r16
									\unHideNotes
									\stopStaff
									\override Staff.StaffSymbol #'line-positions = #'()
									\startStaff
								}
								cs'''2. -\fermata \ppp
								\times 4/5 {
									d'''2 (
									\afterGrace
									cs'''2. )
									{
										\hideNotes
										r32
										\unHideNotes
										\stopStaff
										\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
										\startStaff
									}
								}
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\hideNotes
								r2
								\unHideNotes
								\grace {
									\once \override Rest  #'stencil = #ly:text-interface::print
									\once \override Rest.staff-position = #-2.2
									\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
									r16
								}
								\hideNotes
								r2
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'()
								\startStaff
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Viola.4 }
						\set Staff.shortInstrumentName = \markup { vla.4 }
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						{
							\time 32/4
							s1 * 8
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
				>>
			}
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "bass" {
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\context Staff {#(set-accidental-style 'forget)}
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
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
	>>
}