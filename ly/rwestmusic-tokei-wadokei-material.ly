% 2015-02-09 17:51

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
	composer = \markup { Randall West }
	tagline = \markup { [] }
	title = \markup { Wadokei }
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
	\context Score = "wadokei-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context StaffGroup = "winds" <<
			\context Staff = "flute1" {
				\set Staff.instrumentName = \markup { Flute 1 }
				\set Staff.shortInstrumentName = \markup { Fl.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
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
						s8 ^ \markup { wait for taiko strike, then repeat 2 or 3 times, slowing down }
						r4 -\fermata
						c'1 \pp \< (
						b'2. \mp \>
						d'2 \p )
						r4
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
						c'2
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
						b'2
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
						d'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						e'1 \pp \< (
						c'2. \mp \>
						b'2 \p )
						r4
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
						e'2
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
						c'2
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
						b'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						a'2 \pp \< (
						d'4 \mp \>
						e'8 )
						cs'4 (
						d'8 \p )
						r4
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
						e'2
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
						a'2
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
						d'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 7/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						fs'2 \pp \< (
						g'4 \mp \>
						a'8 )
						fs'4 (
						g'8 \p )
						r4
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
						a'2
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
						fs'2
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
						g'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 7/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				af''4 -\tenuto
				af''8 -\tenuto
				ef''4 -\staccato
				r8
				f''4 -\tenuto
				f''8 -\tenuto
				b''4 -\staccato
				r8
				b''4 -\tenuto
				b''8 -\tenuto
				b''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				a''4 -\staccato
				r8
				b''4 -\tenuto
				b''8 -\tenuto
				ef'''4 -\staccato
				r8
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4 -\tenuto
				fs''8 -\tenuto
				ef''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				cs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				ef''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				ef''4 -\staccato
				r8
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a'''4. -\accent -\tenuto
				gs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						a'''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				g'''4. -\accent -\staccato
				r4.
				a'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				a'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						g''4 -\staccato
						r8
						g''4 -\tenuto
						g''8 -\tenuto
						g''4 -\staccato
						r8
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				fs''4 -\tenuto
				fs''8 -\tenuto
				ef''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				cs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				ef''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				ef''4 -\staccato
				r8
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a'''4. -\accent -\tenuto
				gs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
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
						s8 ^ \markup { wait for taiko strike, then repeat 2 or 3 times, slowing down }
						r4 -\fermata
						a'2 \pp \< (
						fs'1 \mp )
						r2
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
						a'2
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
						fs'2
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
						a'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 1/2
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						g'2 \pp \< (
						a'1 \mp )
						r2
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
						g'2
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
						a'2
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
						g'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 1/2
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						fs'1 \pp \< (
						g'4
						a'8 )
						fs'2 \mp
						r2
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
						g'2
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
						a'2
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
						fs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
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
						s8 ^ \markup { sim. }
						r4 -\fermata
						cs'1 \pp \< (
						b'4
						a'8 )
						b'2 \mp
						r2
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
						cs'2
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
						b'2
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
						a'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				af''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				f''4 -\staccato
				r8
				b''4 -\tenuto
				b''8 -\tenuto
				b''4 -\staccato
				r8
				b''4 -\tenuto
				b''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				a''4 -\tenuto
				a''8 -\tenuto
				b''4 -\staccato
				r8
				ef'''4 -\tenuto
				ef'''8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				ef''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				fs''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				ef''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				gs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				gs'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						gs'''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'''4. -\accent -\staccato
				r4.
				g'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				a'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						a''4 -\tenuto
						a''8 -\tenuto
						a''4 -\staccato
						r8
						g''4 -\tenuto
						g''8 -\tenuto
						g''4 -\staccato
						r8
						g''4 -\tenuto
						g''8 -\tenuto
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				fs''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				ef''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				fs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				fs''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				ef''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				gs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				gs'''4. -\accent -\tenuto
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				f'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						r8
						a''1 \ppp ~ \<
						a''1 -\fermata \mp
						r4
						s4
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				f'''4. -\accent -\tenuto
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						r8
						gs''1 \ppp ~ \<
						gs''1 -\fermata \mp
						r4
						s4
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						r8
						cs''1 \ppp ~ \<
						cs''1 -\fermata \mp
						r4
						s4
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				f'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				f'''4. -\accent -\tenuto
				f'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				f'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				d'4. \pp ~ \<
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. \mp
				r4.
				d'4. \pp ~ \<
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				a''4. \pp ~ \<
				a''4. ~
				a''4. ~
				a''4. ~
				a''4. ~
				a''4. \mp
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4. \p \< (
				cs''4.
				ds''4.
				fs''4. ~
				fs''4. \mp )
				r4.
				b''4. \pp ~ \<
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				b''4. \pp ~ \<
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. \mp
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				e''4 -\staccato
				r8
				e''4 -\tenuto
				e''8 -\tenuto
				e''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				b'4 -\staccato
				r8
				ef''4 -\tenuto
				ef''8 -\tenuto
				fs''4 -\staccato
				r8
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef''4 -\tenuto
				ef''8 -\tenuto
				fs'4 -\staccato
				r8
				ef'4 -\tenuto
				ef'8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				fs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				b'4 -\staccato
				r8
				ef'4 -\tenuto
				ef'8 -\tenuto
				ef'4 -\staccato
				r8
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						cs'''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							gs''8 \p
							a''8
							gs''8 ~
						}
						gs''4
						\afterGrace
						fs''2
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
						f''2
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
						a''2
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 5/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							gs'8 \p
							f'8
							g'8 ~
						}
						g'4
						\afterGrace
						gs'2
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
						ds'2
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
						cs'2
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
						b'2
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
						gs'2
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
						f'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 5/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							fs'8 \p
							e'8
							gs'8 ~
						}
						gs'4
						\afterGrace
						d'2
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
						c'2
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
						b2
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
						fs'2
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
						e'2
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
						gs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 5/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				a''4. \pp ~ \<
				a''4. ~
				a''4. ~
				a''4. ~
				a''4. ~
				a''4. \mp
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				b''4. \pp ~ \<
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. \mp
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						a'4 -\staccato
						r8
						a'4 -\tenuto
						a'8 -\tenuto
						a'4 -\staccato
						r8
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				ef''4 -\tenuto
				ef''8 -\tenuto
				fs'4 -\staccato
				r8
				ef'4 -\tenuto
				ef'8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				fs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				b'4 -\staccato
				r8
				ef'4 -\tenuto
				ef'8 -\tenuto
				ef'4 -\staccato
				r8
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				ds'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				ds'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				d'4. \pp ~ \< (
				d'4. ~
				d'4.
				e''4. ~
				e''4. ~
				e''4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. \p ~ \< (
				b'4.
				cs''4.
				b'4. ~
				b'4. \mp )
				r4.
				e''4. \pp ~ \< (
				e''4. ~
				e''4.
				d'4. ~
				d'4. ~
				d'4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				e'4. \pp ~ \< (
				e'4. ~
				e'4.
				fs''4. ~
				fs''4. ~
				fs''4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				ef''4 -\staccato
				r8
				e''4 -\tenuto
				e''8 -\tenuto
				e''4 -\staccato
				r8
				e''4 -\tenuto
				e''8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				b'4 -\tenuto
				b'8 -\tenuto
				ef''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef''4 -\staccato
				r8
				fs'4 -\tenuto
				fs'8 -\tenuto
				ef'4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				cs''4 -\staccato
				r8
				b'4 -\tenuto
				b'8 -\tenuto
				ef'4 -\staccato
				r8
				ef'4 -\tenuto
				ef'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						a''8 -\accent -\staccato
						s1 ^ \markup { to b. clarinet }
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						\times 4/5 {
							f'8 \pp \< (
							b8
							cs'8 )
							b8 (
							f'8 ~
						}
						f'4 )
						b2. \mf
						cs'4 (
						b8 )
						f'4 (
						b8 )
						r4
						cs'4 (
						b8 )
					}
					s1 * 33/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						\times 4/5 {
							c'8 \pp \< (
							d'8
							fs8 )
							b8 (
							d'8 ~
						}
						d'4 )
						c'2. \mf
						d'4 (
						fs8 )
						b4 (
						d'8 )
						r4
						c'4 (
						d'8 )
					}
					s1 * 33/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d'''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				e'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				cs'''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				d'''4. -\accent -\tenuto
				e'''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				d'4. \pp ~ \< (
				d'4. ~
				d'4.
				e''4. ~
				e''4. ~
				e''4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				e'4. \pp ~ \< (
				e'4. ~
				e'4.
				fs''4. ~
				fs''4. ~
				fs''4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						b'4 -\tenuto
						b'8 -\tenuto
						b'4 -\staccato
						r8
						a'4 -\tenuto
						a'8 -\tenuto
						a'4 -\staccato
						r8
						a'4 -\tenuto
						a'8 -\tenuto
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				ef''4 -\staccato
				r8
				fs'4 -\tenuto
				fs'8 -\tenuto
				ef'4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				cs''4 -\tenuto
				cs''8 -\tenuto
				cs''4 -\staccato
				r8
				fs''4 -\tenuto
				fs''8 -\tenuto
				cs''4 -\staccato
				r8
				b'4 -\tenuto
				b'8 -\tenuto
				ef'4 -\staccato
				r8
				ef'4 -\tenuto
				ef'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'''4. -\accent -\staccato
				r4.
				b''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				cs'''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs'''4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				b''4. -\accent -\tenuto
				fs'''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				ds'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				ds'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				ds'4. -\accent -\tenuto
				f'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						gs'8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						gs2 -\fermata \p
						fs4 (
						cs8 )
						gs16 (
						\afterGrace
						fs2 )
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
						gs2
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
						fs2
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
						cs2
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
						gs2
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
						fs2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						f2 -\fermata \p
						b,4 (
						cs8 )
						b,16 (
						\afterGrace
						f2 )
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
						b,2
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
						cs2
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
						b,2
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
						f2
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
						b,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						c2 -\fermata \p
						d4 (
						fs,8 )
						b,16 (
						\afterGrace
						d2 )
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
						c2
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
						d2
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
						fs,2
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
						b,2
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
						d2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				d'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				e'4. -\accent -\staccato
				r4.
				d'4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				ds'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				ds'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				ds'4. -\accent -\tenuto
				f'4. -\accent -\tenuto
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						f'8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							cs,2 \p (
							gs,4 ~
						}
						gs,4 )
						\afterGrace
						b,2 -\fermata
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
						cs,2
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
						gs,2
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
						b,2
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
						cs,2
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
						gs,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							f,2 \p (
							cs,4 ~
						}
						cs,4 )
						\afterGrace
						b,,2 -\fermata
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
						f,2
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
						cs,2
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
						b,,2
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
						f,2
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
						cs,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						r4
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
						s8 ^ \markup { repeat, slowing down }
						\times 2/3 {
							c,2 \p (
							e,4 ~
						}
						e,4 )
						\afterGrace
						b,,2 -\fermata
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
						d,2
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
						c,2
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
						e,2
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
						b,,2
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
						d,2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				g'4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				e'4. \pp ~ \<
				e'4. ~
				e'4. ~
				e'4. \mp
				r4.
				r4.
				e'4. \pp ~ \<
				e'4. ~
				e'4. ~
				e'4. ~
				e'4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				d'4. \pp ~ \< (
				d'4.
				e'4. )
				d'4. (
				e'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e'4. \p \< (
				cs'4. ~
				cs'4.
				e'4. ~
				e'4. \mp )
				r4.
				r4.
				e'4. \pp ~ \< (
				e'4.
				d'4. )
				e'4. (
				d'4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				e'4. \pp ~ \< (
				e'4.
				fs'4. )
				e'4. (
				fs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				a'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						cs''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				e''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				e''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				g'4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				e''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				d'4. \pp ~ \< (
				d'4.
				e'4. )
				d'4. (
				e'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				e'4. \pp ~ \< (
				e'4.
				fs'4. )
				e'4. (
				fs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				a'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. \mp
				r4.
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				f4. \pp ~ \< (
				f4.
				b4. )
				b4. (
				cs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'4. \p \< (
				b4. ~
				b4.
				d'4. ~
				d'4. \mp )
				r4.
				r4.
				b4. \pp ~ \< (
				b4.
				g4. )
				cs'4. (
				a4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				g4. \pp ~ \< (
				g4.
				cs'4. )
				cs'4. (
				ds'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				gs4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						gs8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				e4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				f4. \pp ~ \< (
				f4.
				b4. )
				b4. (
				cs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				g4. \pp ~ \< (
				g4.
				cs'4. )
				cs'4. (
				ds'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				gs4. -\accent -\tenuto
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				r4.
				cs'4. \pp ~ \<
				cs'4. ~
				cs'4. \mp
				r4.
				r4.
				r4.
				cs'4. \pp ~ \<
				cs'4. ~
				cs'4. ~
				cs'4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				a4. \pp ~ \< (
				a4.
				e'4. ~
				e'4. ~
				e'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e'4. \p \< (
				cs'4. ~
				cs'4.
				e'4. ~
				e'4. \mp )
				r4.
				r4.
				e'4. \pp ~ \< (
				e'4.
				d'4. ~
				d'4. ~
				d'4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				b4. \pp ~ \< (
				b4.
				fs'4. ~
				fs'4. ~
				fs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds''4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				ds''4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				ds''4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				ds''4. -\accent -\tenuto
				f'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						a'8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent \mf (
				a'4. )
				d'4. \< (
				a'4.
				b'4. -\accent \f )
				r4.
				r4.
				f'4. -\tenuto \mf
				f'4. -\tenuto
				r4.
				c'4. \mp ~
				c'4.
				c'4. ~
				c'4.
				c'4. -\tenuto
				r4.
				b4. -\tenuto \<
				d'4. -\tenuto
				c'4. -\tenuto
				ef'4. -\tenuto
				d'4. -\tenuto
				g'4. ~
				g'4. ~
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				g'4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				e'4. -\accent -\staccato
				r4.
				d''4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				a4. \pp ~ \< (
				a4.
				e'4. ~
				e'4. ~
				e'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				b4. \pp ~ \< (
				b4.
				fs'4. ~
				fs'4. ~
				fs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. -\accent \mf (
				cs''4. )
				fs'4. \< (
				cs''4.
				ef''4. -\accent \f )
				r4.
				r4.
				a'4. -\tenuto \mf
				a'4. -\tenuto
				r4.
				e'4. \mp ~
				e'4.
				e'4. ~
				e'4.
				e'4. -\tenuto
				r4.
				ef'4. -\tenuto \<
				fs'4. -\tenuto
				e'4. -\tenuto
				g'4. -\tenuto
				fs'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds''4. -\accent -\staccato
				r4.
				a'4. -\accent -\staccato
				r4.
				ds''4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				gs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\tenuto
				a'4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				ds''4. -\accent -\tenuto
				gs'4. -\accent -\tenuto
				ds''4. -\accent -\tenuto
				f'4. -\accent -\tenuto
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				r4.
				a4. \pp ~ \<
				a4. ~
				a4. \mp
				r4.
				r4.
				r4.
				a4. \pp ~ \<
				a4. ~
				a4. ~
				a4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				d4. \pp ~ \< (
				d4.
				b4. ~
				b4. ~
				b4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'4. \p \< (
				b4. ~
				b4.
				d'4. ~
				d'4. \mp )
				r4.
				r4.
				b4. \pp ~ \< (
				b4.
				g4. ~
				g4. ~
				g4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				e4. \pp ~ \< (
				e4.
				cs'4. ~
				cs'4. ~
				cs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						f8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				f4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				f4. -\accent -\tenuto
				f4. -\accent -\tenuto
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				f4. -\accent -\tenuto
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				d4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				d4. \pp ~ \< (
				d4.
				b4. ~
				b4. ~
				b4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				e4. \pp ~ \< (
				e4.
				cs'4. ~
				cs'4. ~
				cs'4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs4. -\accent -\tenuto
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				e''4. -\accent \mf (
				a''4. )
				cs''4. \< (
				a'4.
				b''4. -\accent \f )
				r4.
				r4.
				e''4. -\tenuto \mf
				e''4. -\tenuto
				r4.
				cs''4. \mp ~
				cs''4.
				cs''4. ~
				cs''4.
				cs''4. -\tenuto
				r4.
				ef''4. -\tenuto \<
				fs''4. -\tenuto
				e''4. -\tenuto
				g''4. -\tenuto
				fs''4. -\tenuto
				e''4. ~
				e''4. ~
				e''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''4. -\accent \mf (
				a''4. )
				cs''4. \< (
				a'4.
				b''4. -\accent \f )
				r4.
				r4.
				e''4. -\tenuto \mf
				e''4. -\tenuto
				r4.
				cs''4. \mp ~
				cs''4.
				cs''4. ~
				cs''4.
				cs''4. -\tenuto
				r4.
				ef''4. -\tenuto \<
				fs''4. -\tenuto
				e''4. -\tenuto
				g''4. -\tenuto
				fs''4. -\tenuto
				e''4. ~
				e''4. ~
				e''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						gs''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				c''4. -\accent \mf (
				f''4. )
				a'4. \< (
				f'4.
				g''4. -\accent \f )
				r4.
				r4.
				c''4. -\tenuto \mf
				c''4. -\tenuto
				r4.
				a'4. \mp ~
				a'4.
				a'4. ~
				a'4.
				a'4. -\tenuto
				r4.
				b'4. -\tenuto \<
				d''4. -\tenuto
				c''4. -\tenuto
				ef''4. -\tenuto
				d''4. -\tenuto
				c''4. ~
				c''4. ~
				c''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''4. -\accent \mf (
				f''4. )
				a'4. \< (
				f'4.
				g''4. -\accent \f )
				r4.
				r4.
				c''4. -\tenuto \mf
				c''4. -\tenuto
				r4.
				a'4. \mp ~
				a'4.
				a'4. ~
				a'4.
				a'4. -\tenuto
				r4.
				b'4. -\tenuto \<
				d''4. -\tenuto
				c''4. -\tenuto
				ef''4. -\tenuto
				d''4. -\tenuto
				c''4. ~
				c''4. ~
				c''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				f''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				f''4. -\accent -\tenuto
				f''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				f''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				e''4. -\accent \mf (
				a''4. )
				cs''4. \< (
				a'4.
				b''4. -\accent \f )
				r4.
				r4.
				e''4. -\tenuto \mf
				e''4. -\tenuto
				r4.
				cs''4. \mp ~
				cs''4.
				cs''4. ~
				cs''4.
				cs''4. -\tenuto
				r4.
				ef''4. -\tenuto \<
				fs''4. -\tenuto
				e''4. -\tenuto
				g''4. -\tenuto
				fs''4. -\tenuto
				e''4. ~
				e''4. ~
				e''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''4. -\accent \mf (
				a''4. )
				cs''4. \< (
				a'4.
				b''4. -\accent \f )
				r4.
				r4.
				e''4. -\tenuto \mf
				e''4. -\tenuto
				r4.
				cs''4. \mp ~
				cs''4.
				cs''4. ~
				cs''4.
				cs''4. -\tenuto
				r4.
				ef''4. -\tenuto \<
				fs''4. -\tenuto
				e''4. -\tenuto
				g''4. -\tenuto
				fs''4. -\tenuto
				e''4. ~
				e''4. ~
				e''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				a''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				cs''4. -\accent \mf (
				e''4. )
				a'4. \< (
				e''4.
				fs''4. -\accent \f )
				r4.
				r4.
				ef''4. -\tenuto \mf
				ef''4. -\tenuto
				r4.
				b'4. \mp ~
				b'4.
				b'4. ~
				b'4.
				b'4. -\tenuto
				r4.
				fs'4. -\tenuto \<
				ef''4. -\tenuto
				g'4. -\tenuto
				e''4. -\tenuto
				a'4. -\tenuto
				ef''4. ~
				ef''4. ~
				ef''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''4. -\accent \mf (
				e''4. )
				a'4. \< (
				e''4.
				fs''4. -\accent \f )
				r4.
				r4.
				ef''4. -\tenuto \mf
				ef''4. -\tenuto
				r4.
				b'4. \mp ~
				b'4.
				b'4. ~
				b'4.
				b'4. -\tenuto
				r4.
				fs'4. -\tenuto \<
				ef''4. -\tenuto
				g'4. -\tenuto
				e''4. -\tenuto
				a'4. -\tenuto
				ef''4. ~
				ef''4. ~
				ef''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. -\accent -\staccato
				r4.
				ds''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				ds''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				ds''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						cs''8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a'4. -\accent \mf (
				c''4. )
				f'4. \< (
				c''4.
				d''4. -\accent \f )
				r4.
				r4.
				b'4. -\tenuto \mf
				b'4. -\tenuto
				r4.
				g'4. \mp ~
				g'4.
				g'4. ~
				g'4.
				g'4. -\tenuto
				r4.
				d'4. -\tenuto \<
				b'4. -\tenuto
				ef'4. -\tenuto
				c''4. -\tenuto
				f'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. -\accent \mf (
				c''4. )
				f'4. \< (
				c''4.
				d''4. -\accent \f )
				r4.
				r4.
				b'4. -\tenuto \mf
				b'4. -\tenuto
				r4.
				g'4. \mp ~
				g'4.
				g'4. ~
				g'4.
				g'4. -\tenuto
				r4.
				d'4. -\tenuto \<
				b'4. -\tenuto
				ef'4. -\tenuto
				c''4. -\tenuto
				f'4. -\tenuto
				b'4. ~
				b'4. ~
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				g''4. -\accent -\staccato
				r4.
				a''4. -\accent -\staccato
				r4.
				d''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				e''4. -\accent -\staccato
				r4.
				d''4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				e''4. -\accent -\tenuto
				d''4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				g''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				cs''4. -\accent \mf (
				e''4. )
				a'4. \< (
				e''4.
				fs''4. -\accent \f )
				r4.
				r4.
				ef''4. -\tenuto \mf
				ef''4. -\tenuto
				r4.
				b'4. \mp ~
				b'4.
				b'4. ~
				b'4.
				b'4. -\tenuto
				r4.
				fs'4. -\tenuto \<
				ef''4. -\tenuto
				g'4. -\tenuto
				e''4. -\tenuto
				a'4. -\tenuto
				ef''4. ~
				ef''4. ~
				ef''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''4. -\accent \mf (
				e''4. )
				a'4. \< (
				e''4.
				fs''4. -\accent \f )
				r4.
				r4.
				ef''4. -\tenuto \mf
				ef''4. -\tenuto
				r4.
				b'4. \mp ~
				b'4.
				b'4. ~
				b'4.
				b'4. -\tenuto
				r4.
				fs'4. -\tenuto \<
				ef''4. -\tenuto
				g'4. -\tenuto
				e''4. -\tenuto
				a'4. -\tenuto
				ef''4. ~
				ef''4. ~
				ef''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. -\accent -\staccato
				r4.
				ds''4. -\accent -\staccato
				r4.
				b'4. -\accent -\staccato
				r4.
				cs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				ds''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\staccato
				r4.
				gs''4. -\accent -\staccato
				r4.
				fs''4. -\accent -\tenuto
				a''4. -\accent -\tenuto
				gs''4. -\accent -\tenuto
				fs''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				ds''4. -\accent -\tenuto
				b'4. -\accent -\tenuto
				cs''4. -\accent -\tenuto
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				f,4. \pp ~ \< (
				f,4.
				g,4. ~
				g,4. ~
				g,4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d4. \p ~ \< (
				d4.
				a,4.
				d4. ~
				d4. \mp )
				r4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b,4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				gs,4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				ds4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						gs,8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4. -\accent \mf ~
				f4.
				g4. ~ \< (
				g4.
				d4. -\accent \f )
				r4.
				r4.
				d4. ~
				d4.
				r4.
				f4. \mp ~
				f4.
				f4. ~
				f4.
				f4. -\tenuto
				r4.
				g4. -\tenuto \<
				g4. -\tenuto
				f4. -\tenuto
				f4. -\tenuto
				g4. -\tenuto
				g4. ~
				g4. ~
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				d4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				e4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				f,4. \pp ~ \< (
				f,4.
				g,4. ~
				g,4. ~
				g,4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent \mf ~
				a4.
				b4. ~ \< (
				b4.
				fs4. -\accent \f )
				r4.
				r4.
				fs4. ~
				fs4.
				r4.
				a4. \mp ~
				a4.
				a4. ~
				a4.
				a4. -\tenuto
				r4.
				b4. -\tenuto \<
				b4. -\tenuto
				a4. -\tenuto
				a4. -\tenuto
				b4. -\tenuto
				b4. ~
				b4. ~
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b,4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs4. -\accent -\tenuto
				a,4. -\accent -\tenuto
				gs,4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				ds4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				cs4. -\accent -\tenuto
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. \p \< (
				a,4.
				g,4.
				c4. ~
				c4. \mp )
				r4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				g,4. -\accent \mf ~
				g,4.
				a,4. ~ \< (
				a,4.
				e,4. -\accent \f )
				r4.
				r4.
				e,4. ~
				e,4.
				r4.
				g,4. \mp ~
				g,4.
				g,4. ~
				g,4.
				g,4. -\tenuto
				r4.
				a,4. -\tenuto \<
				a,4. -\tenuto
				g,4. -\tenuto
				g,4. -\tenuto
				a,4. -\tenuto
				a,4. ~
				a,4. ~
				a,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4. -\accent \mf ~
				g,4.
				a,4. ~ \< (
				a,4.
				e,4. -\accent \f )
				r4.
				r4.
				e,4. ~
				e,4.
				r4.
				g,4. \mp ~
				g,4.
				g,4. ~
				g,4.
				g,4. -\tenuto
				r4.
				a,4. -\tenuto \<
				a,4. -\tenuto
				g,4. -\tenuto
				g,4. -\tenuto
				a,4. -\tenuto
				a,4. ~
				a,4. ~
				a,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				gs,4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						cs8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				ef,4. -\accent \mf ~
				ef,4.
				f,4. ~ \< (
				f,4.
				c,4. -\accent \f )
				r4.
				r4.
				c,4. ~
				c,4.
				r4.
				ef,4. \mp ~
				ef,4.
				ef,4. ~
				ef,4.
				ef,4. -\tenuto
				r4.
				f,4. -\tenuto \<
				f,4. -\tenuto
				ef,4. -\tenuto
				ef,4. -\tenuto
				f,4. -\tenuto
				f,4. ~
				f,4. ~
				f,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef,4. -\accent \mf ~
				ef,4.
				f,4. ~ \< (
				f,4.
				c,4. -\accent \f )
				r4.
				r4.
				c,4. ~
				c,4.
				r4.
				ef,4. \mp ~
				ef,4.
				ef,4. ~
				ef,4.
				ef,4. -\tenuto
				r4.
				f,4. -\tenuto \<
				f,4. -\tenuto
				ef,4. -\tenuto
				ef,4. -\tenuto
				f,4. -\tenuto
				f,4. ~
				f,4. ~
				f,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs,4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				d4. -\accent -\tenuto
				e4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				r4.
				g,4. \pp ~ \< (
				g,4.
				a,4. ~
				a,4. ~
				a,4. \mp )
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				g,4. -\accent \mf ~
				g,4.
				a,4. ~ \< (
				a,4.
				e,4. -\accent \f )
				r4.
				r4.
				e,4. ~
				e,4.
				r4.
				g,4. \mp ~
				g,4.
				g,4. ~
				g,4.
				g,4. -\tenuto
				r4.
				a,4. -\tenuto \<
				a,4. -\tenuto
				g,4. -\tenuto
				g,4. -\tenuto
				a,4. -\tenuto
				a,4. ~
				a,4. ~
				a,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4. -\accent \mf ~
				g,4.
				a,4. ~ \< (
				a,4.
				e,4. -\accent \f )
				r4.
				r4.
				e,4. ~
				e,4.
				r4.
				g,4. \mp ~
				g,4.
				g,4. ~
				g,4.
				g,4. -\tenuto
				r4.
				a,4. -\tenuto \<
				a,4. -\tenuto
				g,4. -\tenuto
				g,4. -\tenuto
				a,4. -\tenuto
				a,4. ~
				a,4. ~
				a,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				gs,4. -\accent -\tenuto
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				g,,4. -\accent \mf ~
				g,,4.
				a,,4. ~ \< (
				a,,4.
				e,,4. -\accent \f )
				r4.
				r4.
				e,,4. ~
				e,,4.
				r4.
				g,,4. \mp ~
				g,,4.
				g,,4. ~
				g,,4.
				g,,4. -\tenuto
				r4.
				a,,4. -\tenuto \<
				a,,4. -\tenuto
				g,,4. -\tenuto
				g,,4. -\tenuto
				a,,4. -\tenuto
				a,,4. ~
				a,,4. ~
				a,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,,4. -\accent \mf ~
				g,,4.
				a,,4. ~ \< (
				a,,4.
				e,,4. -\accent \f )
				r4.
				r4.
				e,,4. ~
				e,,4.
				r4.
				g,,4. \mp ~
				g,,4.
				g,,4. ~
				g,,4.
				g,,4. -\tenuto
				r4.
				a,,4. -\tenuto \<
				a,,4. -\tenuto
				g,,4. -\tenuto
				g,,4. -\tenuto
				a,,4. -\tenuto
				a,,4. ~
				a,,4. ~
				a,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				ds,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				gs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				f,,4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						cs,8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				ef,,4. -\accent \mf ~
				ef,,4.
				f,,4. ~ \< (
				f,,4.
				c,,4. -\accent \f )
				r4.
				r4.
				c,,4. ~
				c,,4.
				r4.
				ef,,4. \mp ~
				ef,,4.
				ef,,4. ~
				ef,,4.
				ef,,4. -\tenuto
				r4.
				f,,4. -\tenuto \<
				f,,4. -\tenuto
				ef,,4. -\tenuto
				ef,,4. -\tenuto
				f,,4. -\tenuto
				f,,4. ~
				f,,4. ~
				f,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef,,4. -\accent \mf ~
				ef,,4.
				f,,4. ~ \< (
				f,,4.
				c,,4. -\accent \f )
				r4.
				r4.
				c,,4. ~
				c,,4.
				r4.
				ef,,4. \mp ~
				ef,,4.
				ef,,4. ~
				ef,,4.
				ef,,4. -\tenuto
				r4.
				f,,4. -\tenuto \<
				f,,4. -\tenuto
				ef,,4. -\tenuto
				ef,,4. -\tenuto
				f,,4. -\tenuto
				f,,4. ~
				f,,4. ~
				f,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b,,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				g,,4. -\accent -\staccato
				r4.
				d,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				d,4. -\accent -\tenuto
				fs,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				g,,4. -\accent \mf ~
				g,,4.
				a,,4. ~ \< (
				a,,4.
				e,,4. -\accent \f )
				r4.
				r4.
				e,,4. ~
				e,,4.
				r4.
				g,,4. \mp ~
				g,,4.
				g,,4. ~
				g,,4.
				g,,4. -\tenuto
				r4.
				a,,4. -\tenuto \<
				a,,4. -\tenuto
				g,,4. -\tenuto
				g,,4. -\tenuto
				a,,4. -\tenuto
				a,,4. ~
				a,,4. ~
				a,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,,4. -\accent \mf ~
				g,,4.
				a,,4. ~ \< (
				a,,4.
				e,,4. -\accent \f )
				r4.
				r4.
				e,,4. ~
				e,,4.
				r4.
				g,,4. \mp ~
				g,,4.
				g,,4. ~
				g,,4.
				g,,4. -\tenuto
				r4.
				a,,4. -\tenuto \<
				a,,4. -\tenuto
				g,,4. -\tenuto
				g,,4. -\tenuto
				a,,4. -\tenuto
				a,,4. ~
				a,,4. ~
				a,,4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				ds,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				gs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				f,,4. -\accent -\tenuto
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
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
						a'4. \mf ^ \markup { repeat (steady beat) }
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
						a'2
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
						a'2
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
						a'2
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
						a'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 1/4
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "odaiko" {
				\set Staff.instrumentName = \markup { Odaiko }
				\set Staff.shortInstrumentName = \markup { O.d. }
				\tempo 4.=108
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
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4.=108
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
					\time 49/8
					{
						c4 -\accent \f _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 -\accent _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						c4 _ \markup { do }
						c4 _ \markup { do }
						c4 -\accent _ \markup { don }
						s2
						r1 -\fermata
						s2
					}
					s1 * 13/4
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 -\accent _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 11/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						c4. ^ \markup { solo taiko cadenza... }
						s1
						s1
						s1
					}
					s1 * 5/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						r4. _ \markup { tsu }
						c4. _ \markup { don }
						c4. _ \markup { don }
						r8 [ _ \markup { tsu }
						r8
						c8 ] _ \markup { don }
						r8 [
						r8
						c8 ] _ \markup { do }
						c4 _ \markup { do }
						c8 _ \markup { ko }
						c4. _ \markup { don }
						c4. _ \markup { don }
						r4. _ \markup { tsu }
						c4. _ \markup { ka }
						c4. _ \markup { don }
						r4. _ \markup { tsu }
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4.=108
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
					\time 49/8
					{
						c4 -\accent \f _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 -\accent _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 23/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						c4 _ \markup { do }
						c4 _ \markup { do }
						c4 -\accent _ \markup { don }
						s2
						r1 -\fermata
						s2
					}
					s1 * 13/4
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c4 -\accent _ \markup { don }
						s1
						r1 -\fermata
						s1
					}
					s1 * 11/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				c4 _ \markup { do }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { ka }
				c8 _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [
				r8
				c8 ] _ \markup { do }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				c4. _ \markup { ka }
				c4. _ \markup { don }
				r4. _ \markup { tsu }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { don }
				r8 [ _ \markup { tsu }
				r8
				c8 ] _ \markup { do }
				c8 _ \markup { ka }
				c8 _ \markup { ra }
				c8 _ \markup { ka }
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				c4 _ \markup { do }
				c8 _ \markup { ko }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				r4. _ \markup { tsu }
				c4. _ \markup { don }
				c4. _ \markup { don }
				r4.
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				r4 _ \markup { tsu }
				c8 _ \markup { do }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				r4.
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
				c4. _ \markup { don }
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI" {
				\set Staff.instrumentName = \markup { Violin I }
				\set Staff.shortInstrumentName = \markup { Vln.I }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af''4. \p
				ef''4.
				f''4.
				b''4.
				b''4.
				b''4.
				fs''4.
				fs''4.
				fs''4.
				a''4.
				b''4.
				ef'''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4.
				ef''4.
				ef''4.
				fs''4.
				fs''4.
				fs''4.
				fs''4.
				cs''4.
				fs''4.
				ef''4.
				ef''4.
				ef''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4 -\accent -\staccato
				f'''8 -\tenuto ~
				f'''4
				f'''8 -\tenuto ~
				f'''4
				f'''8 -\staccato -\tenuto
				b''4 -\accent -\staccato
				af''8 -\tenuto ~
				af''4
				af''8 -\tenuto ~
				af''4
				af''8 -\staccato -\tenuto
				fs''4 -\accent -\staccato
				fs''8 -\tenuto ~
				fs''4
				fs''8 -\tenuto ~
				fs''4
				fs''8 -\staccato -\tenuto
				fs''4 -\accent -\staccato
				cs''8 -\tenuto ~
				cs''4
				ef'''8 -\tenuto ~
				ef'''4
				ef'''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef'''4 -\tenuto
				ef'''8 -\staccato
				ef'''4 -\tenuto
				ef'''8 -\staccato
				f''4 -\tenuto
				f''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				ef''4 -\tenuto
				ef''8 -\staccato
				d'''4 -\tenuto
				d'''8 -\staccato
				d'''4 -\tenuto
				d'''8 -\staccato
				c'''4 -\tenuto
				c'''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				bf''4 -\tenuto
				bf''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''4 -\accent -\staccato
				e'''8 -\tenuto ~
				e'''4
				e'''8 -\tenuto ~
				e'''4
				e'''8 -\staccato -\tenuto
				bf''4 -\accent -\staccato
				g''8 -\tenuto ~
				g''4
				g''8 -\tenuto ~
				g''4
				g''8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				f''8 -\tenuto ~
				f''4
				f''8 -\tenuto ~
				f''4
				f''8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				c''8 -\tenuto ~
				c''4
				d'''8 -\tenuto ~
				d'''4
				d'''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'''4 -\tenuto
				g'''8 -\staccato
				g'''4 -\tenuto
				g'''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				cs'''4 -\tenuto
				cs'''8 -\staccato
				cs'''4 -\tenuto
				cs'''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				g''4 -\tenuto
				g''8 -\staccato
				fs'''4 -\tenuto
				fs'''8 -\staccato
				fs'''4 -\tenuto
				fs'''8 -\staccato
				e'''4 -\tenuto
				e'''8 -\staccato
				cs'''4 -\tenuto
				cs'''8 -\staccato
				d'''4 -\tenuto
				d'''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				gs4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						a8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a''4. \p ~ \<
				a''4. ~
				a''4. \mf
				a''4. ^ \markup { pizz }
				r4.
				a''4. -\tenuto ^ \markup { arco }
				r4.
				a''4. -\tenuto
				a''4. ^ \markup { pizz }
				a''4.
				r4.
				a''4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''4. \p ~ \<
				a''4. ~
				a''4. \mf
				a''4. ^ \markup { pizz }
				r4.
				a''4. -\tenuto ^ \markup { arco }
				r4.
				a''4. -\tenuto
				a''4. ^ \markup { pizz }
				a''4.
				r4.
				a''4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf'4.
				a''4.
				a''4.
				ef''4.
				c''4.
				c''4.
				bf'4.
				bf'4.
				bf'4.
				bf'4.
				f'4.
				g''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4.
				g''4.
				a'4.
				cs''4.
				cs''4.
				e'4.
				g'4.
				fs''4.
				fs''4.
				e''4.
				cs''4.
				d''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''4.
				b'4.
				cs''4.
				g''4.
				g''4.
				g''4.
				d''4.
				d''4.
				d''4.
				f''4.
				g''4.
				b''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''4.
				b'4.
				b'4.
				d''4.
				d''4.
				d''4.
				d''4.
				a'4.
				d''4.
				b'4.
				b'4.
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''4.
				a'4.
				b'4.
				f''4.
				f''4.
				f''4.
				c''4.
				c''4.
				c''4.
				ef''4.
				f''4.
				a''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''4.
				a'4.
				a'4.
				c''4.
				c''4.
				c''4.
				c''4.
				g'4.
				c''4.
				a'4.
				a'4.
				a'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				e'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				d'4. \pp ~ \<
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. \mp
				r4.
				d'4. \pp ~ \<
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. ~
				d'4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4. \p \< (
				cs''4.
				ds''4.
				fs''4. ~
				fs''4. \mp )
				r4.
				b''4. \pp ~ \<
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. ~
				b''4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						a''4. \p
						a''4.
						a''4.
						a''4.
						a''4.
						a''4.
						a''4.
						a''4.
						a''4.
						g''4.
						g''4.
						g''4.
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				fs''4.
				ef''4.
				ef''4.
				fs''4.
				fs''4.
				fs''4.
				fs''4.
				cs''4.
				fs''4.
				ef''4.
				ef''4.
				ef''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''4 -\accent -\staccato
				f'''8 -\tenuto ~
				f'''4
				f'''8 -\tenuto ~
				f'''4
				f'''8 -\staccato -\tenuto
				b''4 -\accent -\staccato
				af''8 -\tenuto ~
				af''4
				af''8 -\tenuto ~
				af''4
				af''8 -\staccato -\tenuto
				fs''4 -\accent -\staccato
				fs''8 -\tenuto ~
				fs''4
				fs''8 -\tenuto ~
				fs''4
				fs''8 -\staccato -\tenuto
				fs''4 -\accent -\staccato
				cs''8 -\tenuto ~
				cs''4
				ef'''8 -\tenuto ~
				ef'''4
				ef'''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef'''4 -\tenuto
				ef'''8 -\staccato
				ef'''4 -\tenuto
				ef'''8 -\staccato
				f''4 -\tenuto
				f''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				ef''4 -\tenuto
				ef''8 -\staccato
				d'''4 -\tenuto
				d'''8 -\staccato
				d'''4 -\tenuto
				d'''8 -\staccato
				c'''4 -\tenuto
				c'''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				bf''4 -\tenuto
				bf''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''4 -\accent -\staccato
				e'''8 -\tenuto ~
				e'''4
				e'''8 -\tenuto ~
				e'''4
				e'''8 -\staccato -\tenuto
				bf''4 -\accent -\staccato
				g''8 -\tenuto ~
				g''4
				g''8 -\tenuto ~
				g''4
				g''8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				f''8 -\tenuto ~
				f''4
				f''8 -\tenuto ~
				f''4
				f''8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				c''8 -\tenuto ~
				c''4
				d'''8 -\tenuto ~
				d'''4
				d'''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'''4 -\tenuto
				g'''8 -\staccato
				g'''4 -\tenuto
				g'''8 -\staccato
				a''4 -\tenuto
				a''8 -\staccato
				cs'''4 -\tenuto
				cs'''8 -\staccato
				cs'''4 -\tenuto
				cs'''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				g''4 -\tenuto
				g''8 -\staccato
				fs'''4 -\tenuto
				fs'''8 -\staccato
				fs'''4 -\tenuto
				fs'''8 -\staccato
				e'''4 -\tenuto
				e'''8 -\staccato
				cs'''4 -\tenuto
				cs'''8 -\staccato
				d'''4 -\tenuto
				d'''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				cs'4. -\accent -\staccato
				r4.
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				cs'4. -\accent -\tenuto
				gs4. -\accent -\tenuto
			}
			\context Staff = "violinII" {
				\set Staff.instrumentName = \markup { Violin II }
				\set Staff.shortInstrumentName = \markup { Vln.II }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''4. \p
				cs''4.
				ef''4.
				e''4.
				e''4.
				e''4.
				cs''4.
				cs''4.
				cs''4.
				b'4.
				ef''4.
				fs''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef''4.
				fs'4.
				ef'4.
				cs''4.
				cs''4.
				cs''4.
				cs''4.
				fs''4.
				cs''4.
				b'4.
				ef'4.
				ef'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af'4 -\accent -\staccato
				af'8 -\tenuto ~
				af'4
				a'8 -\tenuto ~
				a'4
				a'8 -\staccato -\tenuto
				a'4 -\accent -\staccato
				b'8 -\tenuto ~
				b'4
				b'8 -\tenuto ~
				b'4
				b'8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				f''8 -\tenuto ~
				f''4
				f''8 -\tenuto ~
				f''4
				f''8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				cs''8 -\tenuto ~
				cs''4
				ef''8 -\tenuto ~
				ef''4
				ef''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef''4 -\tenuto
				ef''8 -\staccato
				ef''4 -\tenuto
				ef''8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				g'4 -\tenuto
				g'8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				b'4 -\tenuto
				b'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4 -\accent -\staccato
				g'8 -\tenuto ~
				g'4
				af'8 -\tenuto ~
				af'4
				af'8 -\staccato -\tenuto
				af'4 -\accent -\staccato
				bf'8 -\tenuto ~
				bf'4
				bf'8 -\tenuto ~
				bf'4
				bf'8 -\staccato -\tenuto
				e''4 -\accent -\staccato
				e''8 -\tenuto ~
				e''4
				e''8 -\tenuto ~
				e''4
				e''8 -\staccato -\tenuto
				e''4 -\accent -\staccato
				c''8 -\tenuto ~
				c''4
				d''8 -\tenuto ~
				d''4
				d''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4 -\tenuto
				g''8 -\staccato
				g''4 -\tenuto
				g''8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				b'4 -\tenuto
				b'8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				ef''4 -\tenuto
				ef''8 -\staccato
				cs''4 -\tenuto
				cs''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				a4. -\accent -\tenuto
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						gs8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				b'4. \p ~ \<
				b'4. ~
				b'4. \mf
				b'4. ^ \markup { pizz }
				r4.
				b'4. -\tenuto ^ \markup { arco }
				r4.
				b'4. -\tenuto
				b'4. ^ \markup { pizz }
				b'4.
				r4.
				b'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. \p ~ \<
				b'4. ~
				b'4. \mf
				b'4. ^ \markup { pizz }
				r4.
				b'4. -\tenuto ^ \markup { arco }
				r4.
				b'4. -\tenuto
				b'4. ^ \markup { pizz }
				b'4.
				r4.
				b'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c'4.
				c'4.
				cs'4.
				cs'4.
				ef'4.
				ef'4.
				a'4.
				a'4.
				a'4.
				a'4.
				f'4.
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4.
				g'4.
				a4.
				b4.
				e'4.
				e'4.
				ef'4.
				cs'4.
				e'4.
				e'4.
				e'4.
				e'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4.
				a'4.
				b'4.
				c''4.
				c''4.
				c''4.
				a'4.
				a'4.
				a'4.
				g'4.
				b'4.
				d''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4.
				d'4.
				b4.
				a'4.
				a'4.
				a'4.
				a'4.
				d''4.
				a'4.
				g'4.
				b4.
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4.
				g'4.
				a'4.
				bf'4.
				bf'4.
				bf'4.
				g'4.
				g'4.
				g'4.
				f'4.
				a'4.
				c''4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4.
				c'4.
				a4.
				g'4.
				g'4.
				g'4.
				g'4.
				c''4.
				g'4.
				f'4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				d'4. -\accent -\staccato
				r4.
				d'4. -\accent -\staccato
				r4.
				f'4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				f'4. -\accent -\tenuto
				f'4. -\accent -\tenuto
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				f'4. -\accent -\tenuto
				g4. -\accent -\tenuto
				g4. -\accent -\tenuto
				d'4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'4. \p ~ \< (
				b'4.
				cs''4.
				b'4. ~
				b'4. \mp )
				r4.
				e''4. \pp ~ \< (
				e''4. ~
				e''4.
				d'4. ~
				d'4. ~
				d'4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						b'4. \p
						b'4.
						b'4.
						b'4.
						b'4.
						b'4.
						b'4.
						b'4.
						b'4.
						a'4.
						a'4.
						a'4.
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				ef''4.
				fs'4.
				ef'4.
				cs''4.
				cs''4.
				cs''4.
				cs''4.
				fs''4.
				cs''4.
				b'4.
				ef'4.
				ef'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af'4 -\accent -\staccato
				af'8 -\tenuto ~
				af'4
				a'8 -\tenuto ~
				a'4
				a'8 -\staccato -\tenuto
				a'4 -\accent -\staccato
				b'8 -\tenuto ~
				b'4
				b'8 -\tenuto ~
				b'4
				b'8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				f''8 -\tenuto ~
				f''4
				f''8 -\tenuto ~
				f''4
				f''8 -\staccato -\tenuto
				f''4 -\accent -\staccato
				cs''8 -\tenuto ~
				cs''4
				ef''8 -\tenuto ~
				ef''4
				ef''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef''4 -\tenuto
				ef''8 -\staccato
				ef''4 -\tenuto
				ef''8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				g'4 -\tenuto
				g'8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				b'4 -\tenuto
				b'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				c''4 -\tenuto
				c''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4 -\accent -\staccato
				g'8 -\tenuto ~
				g'4
				af'8 -\tenuto ~
				af'4
				af'8 -\staccato -\tenuto
				af'4 -\accent -\staccato
				bf'8 -\tenuto ~
				bf'4
				bf'8 -\tenuto ~
				bf'4
				bf'8 -\staccato -\tenuto
				e''4 -\accent -\staccato
				e''8 -\tenuto ~
				e''4
				e''8 -\tenuto ~
				e''4
				e''8 -\staccato -\tenuto
				e''4 -\accent -\staccato
				c''8 -\tenuto ~
				c''4
				d''8 -\tenuto ~
				d''4
				d''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''4 -\tenuto
				g''8 -\staccato
				g''4 -\tenuto
				g''8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				b'4 -\tenuto
				b'8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				ef''4 -\tenuto
				ef''8 -\staccato
				cs''4 -\tenuto
				cs''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				e''4 -\tenuto
				e''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				fs'4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				a4. -\accent -\tenuto
				a4. -\accent -\tenuto
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				a4. -\accent -\tenuto
				b4. -\accent -\tenuto
				b4. -\accent -\tenuto
				fs'4. -\accent -\tenuto
			}
			\context Staff = "viola" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola }
				\set Staff.shortInstrumentName = \markup { Vla }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'4. \p
				cs'4.
				cs'4.
				e'4.
				e'4.
				e'4.
				fs'4.
				fs'4.
				fs'4.
				e'4.
				a'4.
				b'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4.
				b4.
				b4.
				fs'4.
				fs'4.
				fs'4.
				a'4.
				a'4.
				a'4.
				ef'4.
				b4.
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'4 -\accent -\staccato
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\staccato -\tenuto
				ef'4 -\accent -\staccato
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\staccato -\tenuto
				ef''4 -\accent -\staccato
				ef''8 -\tenuto ~
				ef''4
				af'8 -\tenuto ~
				af'4
				af'8 -\staccato -\tenuto
				ef''4 -\accent -\staccato
				a'8 -\tenuto ~
				a'4
				ef''8 -\tenuto ~
				ef''4
				ef''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef'4 -\tenuto
				ef'8 -\staccato
				ef'4 -\tenuto
				ef'8 -\staccato
				ef'4 -\tenuto
				ef'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				c'4 -\tenuto
				c'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				bf'4 -\tenuto
				bf'8 -\staccato
				bf'4 -\tenuto
				bf'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'4 -\accent -\staccato
				d'8 -\tenuto ~
				d'4
				d'8 -\tenuto ~
				d'4
				d'8 -\staccato -\tenuto
				d'4 -\accent -\staccato
				d'8 -\tenuto ~
				d'4
				d'8 -\tenuto ~
				d'4
				d'8 -\staccato -\tenuto
				d''4 -\accent -\staccato
				d''8 -\tenuto ~
				d''4
				g'8 -\tenuto ~
				g'4
				g'8 -\staccato -\tenuto
				d''4 -\accent -\staccato
				af'8 -\tenuto ~
				af'4
				d''8 -\tenuto ~
				d''4
				d''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4 -\tenuto
				g'8 -\staccato
				g'4 -\tenuto
				g'8 -\staccato
				g'4 -\tenuto
				g'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				cs''4 -\tenuto
				cs''8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				e'4 -\tenuto
				e'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				d''4 -\tenuto
				d''8 -\staccato
				d''4 -\tenuto
				d''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				gs4. -\accent -\staccato
				r4.
				fs4. -\accent -\tenuto
				a4. -\accent -\tenuto
				gs4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				b4. -\accent -\tenuto
				ds4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						f8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a'4. \p ~ \<
				a'4. ~
				a'4. \mf
				a'4. ^ \markup { pizz }
				r4.
				a'4. -\tenuto ^ \markup { arco }
				r4.
				a'4. -\tenuto
				a'4. ^ \markup { pizz }
				a'4.
				r4.
				a'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'4. \p ~ \<
				a'4. ~
				a'4. \mf
				a'4. ^ \markup { pizz }
				r4.
				a'4. -\tenuto ^ \markup { arco }
				r4.
				a'4. -\tenuto
				a'4. ^ \markup { pizz }
				a'4.
				r4.
				a'4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf4.
				g4.
				g4.
				g4.
				g4.
				g4.
				g'4.
				g'4.
				c'4.
				g'4.
				cs'4.
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4.
				g4.
				g4.
				a4.
				a4.
				a4.
				cs'4.
				f4.
				e4.
				a4.
				d'4.
				d'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'4.
				a4.
				a4.
				c'4.
				c'4.
				c'4.
				d'4.
				d'4.
				d'4.
				c'4.
				f'4.
				g'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4.
				g4.
				g4.
				d'4.
				d'4.
				d'4.
				f'4.
				f'4.
				f'4.
				b4.
				g4.
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c'4.
				g4.
				g4.
				bf4.
				bf4.
				bf4.
				c'4.
				c'4.
				c'4.
				bf4.
				ef'4.
				f'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f4.
				f4.
				f4.
				c'4.
				c'4.
				c'4.
				ef'4.
				ef'4.
				ef'4.
				a4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				g4. -\accent -\staccato
				r4.
				a4. -\accent -\staccato
				r4.
				d4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				e4. -\accent -\staccato
				r4.
				d4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				e4. -\accent -\tenuto
				d4. -\accent -\tenuto
				g4. -\accent -\tenuto
				b4. -\accent -\tenuto
				g4. -\accent -\tenuto
				a4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				e'4. \pp ~ \<
				e'4. ~
				e'4. ~
				e'4. \mp
				r4.
				r4.
				e'4. \pp ~ \<
				e'4. ~
				e'4. ~
				e'4. ~
				e'4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e'4. \p \< (
				cs'4. ~
				cs'4.
				e'4. ~
				e'4. \mp )
				r4.
				r4.
				e'4. \pp ~ \< (
				e'4.
				d'4. )
				e'4. (
				d'4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						a'4. \p
						a'4.
						a'4.
						a'4.
						a'4.
						a'4.
						a'4.
						a'4.
						a'4.
						g'4.
						g'4.
						g'4.
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				b4.
				b4.
				b4.
				fs'4.
				fs'4.
				fs'4.
				a'4.
				a'4.
				a'4.
				ef'4.
				b4.
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'4 -\accent -\staccato
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\staccato -\tenuto
				ef'4 -\accent -\staccato
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\tenuto ~
				ef'4
				ef'8 -\staccato -\tenuto
				ef''4 -\accent -\staccato
				ef''8 -\tenuto ~
				ef''4
				af'8 -\tenuto ~
				af'4
				af'8 -\staccato -\tenuto
				ef''4 -\accent -\staccato
				a'8 -\tenuto ~
				a'4
				ef''8 -\tenuto ~
				ef''4
				ef''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef'4 -\tenuto
				ef'8 -\staccato
				ef'4 -\tenuto
				ef'8 -\staccato
				ef'4 -\tenuto
				ef'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				c'4 -\tenuto
				c'8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				bf'4 -\tenuto
				bf'8 -\staccato
				bf'4 -\tenuto
				bf'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'4 -\accent -\staccato
				d'8 -\tenuto ~
				d'4
				d'8 -\tenuto ~
				d'4
				d'8 -\staccato -\tenuto
				d'4 -\accent -\staccato
				d'8 -\tenuto ~
				d'4
				d'8 -\tenuto ~
				d'4
				d'8 -\staccato -\tenuto
				d''4 -\accent -\staccato
				d''8 -\tenuto ~
				d''4
				g'8 -\tenuto ~
				g'4
				g'8 -\staccato -\tenuto
				d''4 -\accent -\staccato
				af'8 -\tenuto ~
				af'4
				d''8 -\tenuto ~
				d''4
				d''8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'4 -\tenuto
				g'8 -\staccato
				g'4 -\tenuto
				g'8 -\staccato
				g'4 -\tenuto
				g'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				cs''4 -\tenuto
				cs''8 -\staccato
				f'4 -\tenuto
				f'8 -\staccato
				e'4 -\tenuto
				e'8 -\staccato
				a'4 -\tenuto
				a'8 -\staccato
				d''4 -\tenuto
				d''8 -\staccato
				d''4 -\tenuto
				d''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				b4. -\accent -\staccato
				r4.
				cs4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				ds4. -\accent -\staccato
				r4.
				fs4. -\accent -\staccato
				r4.
				gs4. -\accent -\staccato
				r4.
				fs4. -\accent -\tenuto
				a4. -\accent -\tenuto
				gs4. -\accent -\tenuto
				fs4. -\accent -\tenuto
				b4. -\accent -\tenuto
				ds4. -\accent -\tenuto
				b4. -\accent -\tenuto
				cs4. -\accent -\tenuto
			}
			\context Staff = "cello" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello }
				\set Staff.shortInstrumentName = \markup { Vc. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e4. \p
				e4.
				b4.
				g4.
				g4.
				g4.
				a4.
				a4.
				a4.
				cs'4.
				cs'4.
				cs'4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs4.
				cs4.
				cs4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				af4 -\accent -\staccato
				ef8 -\tenuto ~
				ef4
				ef8 -\tenuto ~
				ef4
				ef8 -\staccato -\tenuto
				b4 -\accent -\staccato
				a8 -\tenuto ~
				a4
				a8 -\tenuto ~
				a4
				a8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				g4 -\accent -\staccato
				d8 -\tenuto ~
				d4
				d8 -\tenuto ~
				d4
				d8 -\staccato -\tenuto
				bf4 -\accent -\staccato
				af8 -\tenuto ~
				af4
				af8 -\tenuto ~
				af4
				af8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				gs,4. -\accent -\tenuto
				\bar "||"
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				<<
					\context Staff = "cello_s" {
						\clef "tenor"
						\set Staff.instrumentName = \markup { Cello }
						\set Staff.shortInstrumentName = \markup { Vc. }
						\tempo 4.=108
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Sollo Cello }
						\set Staff.shortInstrumentName = \markup { s.vc. }
						\set Staff.alignAboveContext = #"cello"
						\once \override 
						                            Staff.TimeSignature #'stencil = #(lambda (grob)
						                            (parenthesize-stencil (grob-interpret-markup grob 
						                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
						                            ) 0.1 0.4 0.4 0.1 ))
						\numericTimeSignature
						{
							\time 40/8
							{
								s8
								r1 -\fermata
								s2
								\times 2/3 {
									f'1 \pp \< ( ^ \markup { Solo Cello }
									gf'2 ~
								}
								gf'8
								df'4 \mp )
							}
							s1 * 2
							\bar "||"
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\set Staff.instrumentName = \markup { Sollo Cello }
						\set Staff.shortInstrumentName = \markup { s.vc. }
						\set Staff.alignAboveContext = #"cello"
						\once \override Staff.TimeSignature.stencil = ##f
						{
							\time 56/8
							{
								\times 4/5 {
									f'2 (
									gf'4 )
									df'4 (
									gf'4 )
								}
								a'8 (
								gf'4. )
								f'1 -\fermata
								gf'1 -\fermata
								df'1 -\fermata
								r4
								gf'1 -\fermata
								r4
							}
							s1 * 1
							\bar ";"
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
					{
						\context Staff {#(set-accidental-style 'forget)}
						{
							\time 40/8
							{
								gs,8 -\accent -\staccato
								s1
								r1 -\fermata
								s2
							}
							s1 * 19/8
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						{
							\time 56/8
							{
								s1
								s1
								s1
								r1 -\fermata
								s1
								s1
								s1
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
						\context Staff {#(set-accidental-style 'forget)}
						\once \override Staff.TimeSignature.stencil = ##f
						{
							{
								s1
								s1
								s1
								r1 -\fermata
								s1
								s1
								s1
							}
						}
						\context Staff {#(set-accidental-style 'modern)}
					}
				>>
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				a4. \p ~ \<
				a4. ~
				a4. \mf
				a4. ^ \markup { pizz }
				r4.
				a4. -\tenuto ^ \markup { arco }
				r4.
				a4. -\tenuto
				a4. ^ \markup { pizz }
				a4.
				r4.
				a4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a4. \p ~ \<
				a4. ~
				a4. \mf
				a4. ^ \markup { pizz }
				r4.
				a4. -\tenuto ^ \markup { arco }
				r4.
				a4. -\tenuto
				a4. ^ \markup { pizz }
				a4.
				r4.
				a4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				c4.
				g,4.
				g,4.
				ef4.
				cs4.
				cs4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				a,4.
				a,4.
				a,4.
				g,4.
				g,4.
				g,4.
				cs4.
				cs4.
				cs4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c4.
				c4.
				g4.
				ef4.
				ef4.
				ef4.
				f4.
				f4.
				f4.
				a4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,4.
				a,4.
				a,4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf,4.
				bf,4.
				f4.
				cs4.
				cs4.
				cs4.
				ef4.
				ef4.
				ef4.
				g4.
				g4.
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d,4. -\accent -\staccato
				r4.
				g,4. -\accent -\staccato
				r4.
				d,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\tenuto
				d,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				d,4. -\accent -\tenuto
				g,4. -\accent -\tenuto
				d,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. \mp
				r4.
				r4.
				b4. \pp ~ \<
				b4. ~
				b4. ~
				b4. ~
				b4. \mp
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'4. \p \< (
				b4. ~
				b4.
				d'4. ~
				d'4. \mp )
				r4.
				r4.
				b4. \pp ~ \< (
				b4.
				g4. )
				cs'4. (
				a4. \mp )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						a4. \p
						a4.
						a4.
						a4.
						a4.
						a4.
						a4.
						a4.
						a4.
						g4.
						g4.
						g4.
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				cs4.
				cs4.
				cs4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				af4 -\accent -\staccato
				ef8 -\tenuto ~
				ef4
				ef8 -\tenuto ~
				ef4
				ef8 -\staccato -\tenuto
				b4 -\accent -\staccato
				a8 -\tenuto ~
				a4
				a8 -\tenuto ~
				a4
				a8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				g4 -\accent -\staccato
				d8 -\tenuto ~
				d4
				d8 -\tenuto ~
				d4
				d8 -\staccato -\tenuto
				bf4 -\accent -\staccato
				af8 -\tenuto ~
				af4
				af8 -\tenuto ~
				af4
				af8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs,4. -\accent -\staccato
				r4.
				b,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				gs,4. -\accent -\staccato
				r4.
				fs,4. -\accent -\staccato
				r4.
				a,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				b,4. -\accent -\tenuto
				fs,4. -\accent -\tenuto
				gs,4. -\accent -\tenuto
			}
			\context Staff = "bass" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass }
				\set Staff.shortInstrumentName = \markup { Cb. }
				\tempo 4.=108
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 49/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 9/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 48/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
					s1 * 1
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d4. \p
				b4.
				a4.
				g4.
				g4.
				g4.
				a4.
				a4.
				a4.
				b4.
				b4.
				b4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs4.
				cs4.
				cs4.
				a4.
				a4.
				a4.
				fs4.
				fs4.
				fs4.
				a4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				af4 -\accent -\staccato
				af8 -\tenuto ~
				af4
				af8 -\tenuto ~
				af4
				af8 -\staccato -\tenuto
				cs'4 -\accent -\staccato
				a8 -\tenuto ~
				a4
				a8 -\tenuto ~
				a4
				a8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				g4 -\accent -\staccato
				g8 -\tenuto ~
				g4
				g8 -\tenuto ~
				g4
				g8 -\staccato -\tenuto
				c'4 -\accent -\staccato
				af8 -\tenuto ~
				af4
				af8 -\tenuto ~
				af4
				af8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				ds,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				gs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				f,,4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						cs,8 -\accent -\staccato
						s1
						r1 -\fermata
						s2
					}
					s1 * 19/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					\time 56/8
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						s1
						r1 -\fermata
						s1
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				g4. \p ~ \<
				g4. ~
				g4. \mf
				g4. ^ \markup { pizz }
				r4.
				g4. -\tenuto ^ \markup { arco }
				r4.
				g4. -\tenuto
				g4. ^ \markup { pizz }
				g4.
				r4.
				g4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4. \p ~ \<
				g4. ~
				g4. \mf
				g4. ^ \markup { pizz }
				r4.
				g4. -\tenuto ^ \markup { arco }
				r4.
				g4. -\tenuto
				g4. ^ \markup { pizz }
				g4.
				r4.
				g4. ^ \markup { arco }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				ef4.
				c4.
				c4.
				c4.
				f4.
				cs4.
				cs4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				g,4.
				g,4.
				g,4.
				a,4.
				a,4.
				a,4.
				cs4.
				cs4.
				cs4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf,4.
				g4.
				f4.
				ef4.
				ef4.
				ef4.
				f4.
				f4.
				f4.
				g4.
				g4.
				g4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a,4.
				a,4.
				a,4.
				f4.
				f4.
				f4.
				d4.
				d4.
				d4.
				f4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af,4.
				f4.
				ef4.
				cs4.
				cs4.
				cs4.
				ef4.
				ef4.
				ef4.
				f4.
				f4.
				f4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g,4.
				g,4.
				g,4.
				ef4.
				ef4.
				ef4.
				c4.
				c4.
				c4.
				ef4.
				ef4.
				ef4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b,,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				g,,4. -\accent -\staccato
				r4.
				d,4. -\accent -\staccato
				r4.
				cs,4. -\accent -\staccato
				r4.
				e,4. -\accent -\staccato
				r4.
				d,4. -\accent -\tenuto
				fs,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				e,4. -\accent -\tenuto
				b,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 40/8
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s1
						s1
						r1 -\fermata
						s1
						s1
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						g4. \p
						g4.
						g4.
						g4.
						g4.
						g4.
						g4.
						g4.
						g4.
						f4.
						f4.
						f4.
					}
					s1 * 1/2
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 9/8
				cs4.
				cs4.
				cs4.
				a4.
				a4.
				a4.
				fs4.
				fs4.
				fs4.
				a4.
				a4.
				a4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				b4 -\accent -\staccato
				b8 -\tenuto ~
				b4
				b8 -\tenuto ~
				b4
				b8 -\staccato -\tenuto
				af4 -\accent -\staccato
				af8 -\tenuto ~
				af4
				af8 -\tenuto ~
				af4
				af8 -\staccato -\tenuto
				cs'4 -\accent -\staccato
				a8 -\tenuto ~
				a4
				a8 -\tenuto ~
				a4
				a8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				ef4 -\tenuto
				ef8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				f4 -\tenuto
				f8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				bf4 -\accent -\staccato
				bf8 -\tenuto ~
				bf4
				bf8 -\tenuto ~
				bf4
				bf8 -\staccato -\tenuto
				g4 -\accent -\staccato
				g8 -\tenuto ~
				g4
				g8 -\tenuto ~
				g4
				g8 -\staccato -\tenuto
				c'4 -\accent -\staccato
				af8 -\tenuto ~
				af4
				af8 -\tenuto ~
				af4
				af8 -\staccato -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				g4 -\tenuto
				g8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				a4 -\tenuto
				a8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				cs'4 -\tenuto
				cs'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				\time 6/8
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				R4.
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds,4. -\accent -\staccato
				r4.
				a,,4. -\accent -\staccato
				r4.
				ds,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				b,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\staccato
				r4.
				gs,,4. -\accent -\staccato
				r4.
				fs,,4. -\accent -\tenuto
				a,,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				cs,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				gs,,4. -\accent -\tenuto
				ds,4. -\accent -\tenuto
				f,,4. -\accent -\tenuto
				\bar "|."
			}
		>>
	>>
}