% 2015-02-08 23:15

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	title = \markup { Kairos }
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
	\context Score = "kairos-violinI" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context Staff = "violinI" {
			\set Staff.instrumentName = \markup { Violin I }
			\set Staff.shortInstrumentName = \markup { Vln.I }
			\tempo 4=120
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
			\context Staff {#(set-accidental-style 'modern)}
			\numericTimeSignature
			<<
				\context Staff = "violinI_1" {
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.1 }
					\set Staff.shortInstrumentName = \markup { vln.I.1 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override 
					                            Staff.TimeSignature #'stencil = #(lambda (grob)
					                            (parenthesize-stencil (grob-interpret-markup grob 
					                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
					                            ) 0.1 0.4 0.4 0.1 ))
					{
						\time 32/4
						{
							s8
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
							s8
							\afterGrace
							cs'''1 -\fermata \pp
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
							\hideNotes
							r4.
							\unHideNotes
							\grace {
								\once \override Rest  #'stencil = #ly:text-interface::print
								\once \override Rest.staff-position = #-2.2
								\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
								r16
							}
							\hideNotes
							cs'''4.
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.1 }
					\set Staff.shortInstrumentName = \markup { vln.I.1 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							\afterGrace
							cs'''1 -\fermata
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
							\hideNotes
							r4.
							\unHideNotes
							\grace {
								\once \override Rest  #'stencil = #ly:text-interface::print
								\once \override Rest.staff-position = #-2.2
								\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
								r16
							}
							\hideNotes
							cs'''4.
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.1 }
					\set Staff.shortInstrumentName = \markup { vln.I.1 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							\afterGrace
							cs'''1 -\fermata
							{
								\hideNotes
								r32
								\unHideNotes
								\stopStaff
								\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
								\startStaff
							}
							\hideNotes
							r4.
							\unHideNotes
							\grace {
								\once \override Rest  #'stencil = #ly:text-interface::print
								\once \override Rest.staff-position = #-2.2
								\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
								r16
							}
							\hideNotes
							cs'''4.
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
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
							cs'''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'modern)}
					\set Staff.instrumentName = \markup { Violin I.1 }
					\set Staff.shortInstrumentName = \markup { vln.I.1 }
					\set Staff.alignAboveContext = #"violinI"
					\time 4/4
					R1
					d'4. \p
					d'8 ~
					d'4
					d'4 -\tenuto
					d'4.
					d'8 ~
					d'4
					d'4 -\tenuto
					d'4.
					d'8 ~
					d'4
					d'4 -\tenuto
					d'4.
					d'8 ~
					d'4
					d'4 -\tenuto
					d'4.
					d'8 ~
					d'4
					d'4 -\tenuto
					d'4.
					d'8 ~
					d'4
					d'4 -\tenuto
					d'4.
					d'8 ~
					d'4
					d'4 -\tenuto
				}
				\context Staff = "violinI_2" {
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.2 }
					\set Staff.shortInstrumentName = \markup { vln.I.2 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override 
					                            Staff.TimeSignature #'stencil = #(lambda (grob)
					                            (parenthesize-stencil (grob-interpret-markup grob 
					                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
					                            ) 0.1 0.4 0.4 0.1 ))
					{
						\time 32/4
						{
							s8 ^ \markup { mute on }
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
							s8 ^ \markup { repeat }
							cs''2. -\fermata \ppp
							\times 4/5 {
								cs''2. (
								\afterGrace
								d''2 )
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
							cs''2
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
							cs''2
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
							d''2
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
							cs''2
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
							cs''2
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
							d''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.2 }
					\set Staff.shortInstrumentName = \markup { vln.I.2 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							r4
							cs''8 (
							fs''1 )
							fs''4
							\afterGrace
							s8
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
							cs''2
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
							cs''2
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
							fs''2
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
							fs''2
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
							cs''2
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
							cs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.2 }
					\set Staff.shortInstrumentName = \markup { vln.I.2 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							r4
							cs''8 (
							fs''1 )
							fs''4
							\afterGrace
							s8
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
							cs''2
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
							cs''2
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
							fs''2
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
							fs''2
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
							cs''2
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
							cs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'modern)}
					\set Staff.instrumentName = \markup { Violin I.2 }
					\set Staff.shortInstrumentName = \markup { vln.I.2 }
					\set Staff.alignAboveContext = #"violinI"
					\time 4/4
					s8
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
					cs''4. -\fermata
					\times 2/3 {
						cs''4 (
						\afterGrace
						d''2 )
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
					cs''2
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
					cs''2
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
					d''2
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
					cs''2
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
					cs''2
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
					d''2
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
					cs''2
					\unHideNotes
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
				}
				\context Staff = "violinI_3" {
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.3 }
					\set Staff.shortInstrumentName = \markup { vln.I.3 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override 
					                            Staff.TimeSignature #'stencil = #(lambda (grob)
					                            (parenthesize-stencil (grob-interpret-markup grob 
					                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
					                            ) 0.1 0.4 0.4 0.1 ))
					{
						\time 32/4
						{
							s8 ^ \markup { mute on }
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
							s4 ^ \markup { repeat }
							r2
							cs''4 \ppp (
							gs''2 )
							d''4
							\afterGrace
							s8
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
							cs''2
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
							gs''2
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
							d''2
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
							cs''2
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
							gs''2
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
							d''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.3 }
					\set Staff.shortInstrumentName = \markup { vln.I.3 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							d''2 (
							cs''4. )
							r8
							\times 2/3 {
								gs''4 (
								fs''2 -\fermata )
							}
							\afterGrace
							s4
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
							d''2
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
							cs''2
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
							gs''2
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
							fs''2
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
							d''2
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
							cs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.3 }
					\set Staff.shortInstrumentName = \markup { vln.I.3 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							d''2 (
							cs''4. )
							r8
							\times 2/3 {
								gs''4 (
								fs''2 -\fermata )
							}
							\afterGrace
							s4
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
							d''2
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
							cs''2
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
							gs''2
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
							fs''2
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
							d''2
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
							cs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'modern)}
					\set Staff.instrumentName = \markup { Violin I.3 }
					\set Staff.shortInstrumentName = \markup { vln.I.3 }
					\set Staff.alignAboveContext = #"violinI"
					\time 4/4
					s8
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
					cs''4. -\fermata
					\times 2/3 {
						gs''4 (
						\afterGrace
						d''2 )
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
					cs''2
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
					gs''2
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
					d''2
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
					cs''2
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
					gs''2
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
					d''2
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
					cs''2
					\unHideNotes
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
				}
				\context Staff = "violinI_4" {
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.4 }
					\set Staff.shortInstrumentName = \markup { vln.I.4 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override 
					                            Staff.TimeSignature #'stencil = #(lambda (grob)
					                            (parenthesize-stencil (grob-interpret-markup grob 
					                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
					                            ) 0.1 0.4 0.4 0.1 ))
					{
						\time 32/4
						{
							s8 ^ \markup { mute on }
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
							s8 ^ \markup { repeat }
							r4
							cs''8 \ppp (
							d''1 )
							cs''4
							\afterGrace
							s8
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
							cs''2
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
							d''2
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
							cs''2
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
							cs''2
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
							d''2
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
							cs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.4 }
					\set Staff.shortInstrumentName = \markup { vln.I.4 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							cs''2. -\fermata
							\times 4/5 {
								d''2. (
								\afterGrace
								fs''2 )
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
							cs''2
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
							cs''2
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
							d''2
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
							fs''2
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
							cs''2
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
							cs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.4 }
					\set Staff.shortInstrumentName = \markup { vln.I.4 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							s8
							cs''2. -\fermata
							\times 4/5 {
								d''2. (
								\afterGrace
								fs''2 )
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
							cs''2
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
							cs''2
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
							d''2
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
							fs''2
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
							cs''2
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
							cs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'modern)}
					\set Staff.instrumentName = \markup { Violin I.4 }
					\set Staff.shortInstrumentName = \markup { vln.I.4 }
					\set Staff.alignAboveContext = #"violinI"
					\time 4/4
					s8
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
					cs''4. -\fermata
					\times 2/3 {
						d''4 (
						\afterGrace
						cs''2 )
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
					cs''2
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
					d''2
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
					cs''2
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
					cs''2
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
					d''2
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
					cs''2
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
					cs''2
					\unHideNotes
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
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
							s8 ^ \markup { mute on }
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
							s8 ^ \markup { repeat }
							cs''2 \ppp (
							d''4. )
							r8
							\times 2/3 {
								gs''4 (
								cs''2 -\fermata )
							}
							\afterGrace
							s4
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
							cs''2
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
							d''2
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
							gs''2
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
							cs''2
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
							cs''2
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
							d''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.5 }
					\set Staff.shortInstrumentName = \markup { vln.I.5 }
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							r2
							fs''4 (
							cs''2 )
							d''4
							\afterGrace
							s8
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
							cs''2
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
							fs''2
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
							cs''2
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
							d''2
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
							cs''2
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
							fs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.5 }
					\set Staff.shortInstrumentName = \markup { vln.I.5 }
					\once \override Staff.TimeSignature.stencil = ##f
					{
						{
							s8
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
							r2
							fs''4 (
							cs''2 )
							d''4
							\afterGrace
							s8
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
							cs''2
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
							fs''2
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
							cs''2
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
							d''2
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
							cs''2
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
							fs''2
							\unHideNotes
							\stopStaff
							\override Staff.StaffSymbol #'line-positions = #'()
							\startStaff
						}
					}
					\context Staff {#(set-accidental-style 'modern)}
					\context Staff {#(set-accidental-style 'modern)}
					\set Staff.instrumentName = \markup { Violin I.5 }
					\set Staff.shortInstrumentName = \markup { vln.I.5 }
					s8
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
					cs''4. -\fermata
					\times 2/3 {
						d''4 (
						\afterGrace
						gs''2 )
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
					cs''2
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
					cs''2
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
					d''2
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
					gs''2
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
					cs''2
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
					cs''2
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
					d''2
					\unHideNotes
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
				}
			>>
		}
	>>
}