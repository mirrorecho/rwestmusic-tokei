% 2015-02-06 01:42

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
	\context Score = "kairos-material-fragment" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
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
							gs'''2 (
							\afterGrace
							d'''2 )
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
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.3 }
					\set Staff.shortInstrumentName = \markup { vln.I.3 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
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
							cs'''2 (
							\afterGrace
							d'''2 )
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
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.3 }
					\set Staff.shortInstrumentName = \markup { vln.I.3 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
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
							cs'''2 (
							\afterGrace
							d'''2 )
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
					\context Staff {#(set-accidental-style 'modern)}
					\set Staff.instrumentName = \markup { Violin I.3 }
					\set Staff.shortInstrumentName = \markup { vln.I.3 }
					\set Staff.alignAboveContext = #"violinI"
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
							d'''2 (
							\afterGrace
							cs'''2 )
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
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.4 }
					\set Staff.shortInstrumentName = \markup { vln.I.4 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
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
							gs'''2 (
							\afterGrace
							d'''2 )
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
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.4 }
					\set Staff.shortInstrumentName = \markup { vln.I.4 }
					\set Staff.alignAboveContext = #"violinI"
					\once \override Staff.TimeSignature.stencil = ##f
					{
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
							gs'''2 (
							\afterGrace
							d'''2 )
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
					\context Staff {#(set-accidental-style 'modern)}
					\set Staff.instrumentName = \markup { Violin I.4 }
					\set Staff.shortInstrumentName = \markup { vln.I.4 }
					\set Staff.alignAboveContext = #"violinI"
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
							cs'''2 (
							\afterGrace
							d'''2 )
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
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.5 }
					\set Staff.shortInstrumentName = \markup { vln.I.5 }
					\once \override Staff.TimeSignature.stencil = ##f
					{
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
							d'''2 (
							\afterGrace
							cs'''2 )
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
					\context Staff {#(set-accidental-style 'forget)}
					\set Staff.instrumentName = \markup { Violin I.5 }
					\set Staff.shortInstrumentName = \markup { vln.I.5 }
					\once \override Staff.TimeSignature.stencil = ##f
					{
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
							d'''2 (
							\afterGrace
							cs'''2 )
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
				}
			>>
		}
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
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin I.1 }
			\set Staff.shortInstrumentName = \markup { vln.I.1 }
			\set Staff.alignAboveContext = #"violinI"
			\once \override Staff.TimeSignature.stencil = ##f
			{
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
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin I.1 }
			\set Staff.shortInstrumentName = \markup { vln.I.1 }
			\set Staff.alignAboveContext = #"violinI"
			\once \override Staff.TimeSignature.stencil = ##f
			{
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
			\context Staff {#(set-accidental-style 'modern)}
			\set Staff.instrumentName = \markup { Violin I.1 }
			\set Staff.shortInstrumentName = \markup { vln.I.1 }
			\set Staff.alignAboveContext = #"violinI"
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
					cs'''2 (
					\afterGrace
					d'''2 )
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
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin I.2 }
			\set Staff.shortInstrumentName = \markup { vln.I.2 }
			\set Staff.alignAboveContext = #"violinI"
			\once \override Staff.TimeSignature.stencil = ##f
			{
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
					d'''2 (
					\afterGrace
					cs'''2 )
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
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin I.2 }
			\set Staff.shortInstrumentName = \markup { vln.I.2 }
			\set Staff.alignAboveContext = #"violinI"
			\once \override Staff.TimeSignature.stencil = ##f
			{
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
					d'''2 (
					\afterGrace
					cs'''2 )
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
			\context Staff {#(set-accidental-style 'modern)}
			\set Staff.instrumentName = \markup { Violin I.2 }
			\set Staff.shortInstrumentName = \markup { vln.I.2 }
			\set Staff.alignAboveContext = #"violinI"
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