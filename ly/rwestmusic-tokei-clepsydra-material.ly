% 2015-02-09 11:37

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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				ef''8 \p (
				d''8
				c''8
				a'8 )
				af'8 (
				a'8
				f''8
				e''8 )
				d''8 \< (
				g''8
				a''8
				g''8 )
				a''8 (
				f''8
				ef''8
				f''8 )
				e''8 (
				d''8
				ef''8
				bf''8 )
				f''8 \mf (
				g''8
				a''8
				ef'''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				cs''2. \pp ~ \<
				cs''4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs'''8 \mf (
				b''8
				cs'''8
				e'''8 )
				b''8 (
				a''8
				b''8
				fs''8 )
				e''8 (
				fs''8
				e''8
				fs''8 )
				a''8 (
				g''8
				a''8
				g''8 )
				fs''8 (
				a'8
				d''8
				a'8 )
				b'8 (
				d''8
				a'8
				d''8 )
				\bar "||"
				\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
				b''8 (
				cs'''8
				b''8 )
				a''8 (
				gs''4 )
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				e''8 \p (
				b'8
				c''8
				d''8 )
				cs''8 (
				g'8
				a'8
				g''8 )
				fs''8 \< (
				c''8
				f''8
				a''8 )
				g''8 (
				a''8
				g''8
				a''8 )
				b''8 (
				g''8
				a''8
				g''8 )
				a''8 \mf (
				c'''8
				cs'''8
				c'''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				bf'2. \pp ~ \<
				bf'4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf''8 \mf (
				a''8
				d'''8
				a''8 )
				ef'''8 (
				a''8
				g''8
				a''8 )
				e''8 (
				d''8
				g''8
				a''8 )
				e''8 (
				a''8
				c''8
				d''8 )
				a'8 (
				c''8
				d''8
				c''8 )
				g'8 (
				a'8
				g'8
				f'8 )
				\bar "||"
				\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				c'''8 -\staccato \p [ \<
				fs''8 -\staccato ]
				e''8 -\staccato [
				ds'''8 -\staccato ]
				cs'''8 -\staccato [
				gs''8 -\staccato ]
				a''8 -\staccato [
				cs'''8 -\accent -\staccato \mf ]
				r8 [
				fs''8 -\staccato ]
				e''8 -\staccato [
				ds'''8 -\staccato ]
				cs'''8 -\staccato [
				gs''8 -\staccato ]
				a''8 -\accent -\staccato [
				cs'''8 -\staccato ]
				c'''8 -\staccato \p [
				fs''8 -\staccato ]
				e''8 -\staccato [
				ds'''8 -\staccato ]
				cs'''8 -\staccato [
				gs''8 -\staccato ]
				a''8 -\staccato [
				cs'''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a''8 -\staccato \p [ \<
				b''8 -\staccato ]
				c'''8 -\staccato [
				e''8 -\staccato ]
				gs''8 -\staccato [
				d'''8 -\staccato ]
				e''8 -\staccato [
				e''8 -\accent -\staccato \mf ]
				r8 [
				b''8 -\staccato ]
				c'''8 -\staccato [
				e''8 -\staccato ]
				gs''8 -\staccato [
				d'''8 -\staccato ]
				e''8 -\accent -\staccato [
				e''8 -\staccato ]
				a''8 -\staccato \p [
				b''8 -\staccato ]
				c'''8 -\staccato [
				e''8 -\staccato ]
				gs''8 -\staccato [
				d'''8 -\staccato ]
				e''8 -\staccato [
				e''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				as''8 -\staccato \p [ \<
				cs'''8 -\staccato ]
				a''8 -\staccato [
				a''8 -\staccato ]
				fs''8 -\staccato [
				a''8 -\staccato ]
				d'''8 -\staccato [
				a''8 -\accent -\staccato \mf ]
				r8 [
				cs'''8 -\staccato ]
				a''8 -\staccato [
				a''8 -\staccato ]
				fs''8 -\staccato [
				a''8 -\staccato ]
				d'''8 -\accent -\staccato [
				a''8 -\staccato ]
				as''8 -\staccato \p [
				cs'''8 -\staccato ]
				a''8 -\staccato [
				a''8 -\staccato ]
				fs''8 -\staccato [
				a''8 -\staccato ]
				d'''8 -\staccato [
				a''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a''8 -\staccato \p [ \<
				b''8 -\staccato ]
				a''8 -\staccato [
				d'''8 -\staccato ]
				fs''8 -\staccato [
				a''8 -\staccato ]
				d'''8 -\staccato [
				c'''8 -\accent -\staccato \mf ]
				r8 [
				b''8 -\staccato ]
				a''8 -\staccato [
				d'''8 -\staccato ]
				fs''8 -\staccato [
				a''8 -\staccato ]
				d'''8 -\accent -\staccato [
				c'''8 -\staccato ]
				a''8 -\staccato \p [
				b''8 -\staccato ]
				a''8 -\staccato [
				d'''8 -\staccato ]
				fs''8 -\staccato [
				a''8 -\staccato ]
				d'''8 -\staccato [
				c'''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				fs''8 -\staccato \p [ \<
				e''8 -\staccato ]
				d'''8 -\staccato [
				b''8 -\staccato ]
				b''8 -\staccato [
				b''8 -\staccato ]
				b''8 -\staccato [
				b''8 -\accent -\staccato \mf ]
				r8 [
				e''8 -\staccato ]
				d'''8 -\staccato [
				b''8 -\staccato ]
				b''8 -\staccato [
				b''8 -\staccato ]
				b''8 -\accent -\staccato [
				b''8 -\staccato ]
				fs''8 -\staccato \p [
				e''8 -\staccato ]
				d'''8 -\staccato [
				b''8 -\staccato ]
				b''8 -\staccato [
				b''8 -\staccato ]
				b''8 -\staccato [
				b''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				b'8 \p (
				a'8
				e'8
				fs'8 )
				a'8 (
				e'8
				a'8
				b'8 )
				a'8 \< (
				a'8
				d''8
				e''8 )
				b'8 (
				c''8
				bf'8
				c''8 )
				a''8 (
				g''8
				g''8
				f''8 )
				a''8 \mf (
				c''8
				f''8
				a''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				bf'2. \pp ~ \<
				bf'4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf''8 \mf (
				af''8
				fs''8
				e''8 )
				ef''8 (
				cs''8
				fs''8
				e''8 )
				af''8 (
				b'8
				e''8
				b'8 )
				cs''8 (
				e''8
				f''8
				b'8 )
				cs''8 (
				a'8
				bf'8
				a'8 )
				b'8 (
				f'8
				ef'8
				f'8 )
				\bar "||"
				\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				cs''8 -\staccato \p [ \<
				gs'8 -\staccato ]
				cs''8 -\staccato [
				fs''8 -\staccato ]
				cs''8 -\staccato [
				e''8 -\staccato ]
				d''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				gs'8 -\staccato ]
				cs''8 -\staccato [
				fs''8 -\staccato ]
				cs''8 -\staccato [
				e''8 -\staccato ]
				d''8 -\accent -\staccato [
				a'8 -\staccato ]
				cs''8 -\staccato \p [
				gs'8 -\staccato ]
				cs''8 -\staccato [
				fs''8 -\staccato ]
				cs''8 -\staccato [
				e''8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
				e''8 -\staccato \p [ \<
				fs''8 -\staccato ]
				e''8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				c''8 -\staccato [
				e''8 -\accent -\staccato \mf ]
				r8 [
				fs''8 -\staccato ]
				e''8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				c''8 -\accent -\staccato [
				e''8 -\staccato ]
				e''8 -\staccato \p [
				fs''8 -\staccato ]
				e''8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				c''8 -\staccato [
				e''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				fs''8 -\staccato \p [ \<
				a'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato [
				e''8 -\staccato ]
				fs''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato [
				e''8 -\staccato ]
				fs''8 -\accent -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato \p [
				a'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato [
				e''8 -\staccato ]
				fs''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a'8 -\staccato \p [ \<
				e''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				f''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				e''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				f''8 -\accent -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato \p [
				e''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				f''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				a'8 -\staccato \p [ \<
				a'8 -\staccato ]
				g'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				d''8 -\staccato ]
				c''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				g'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				d''8 -\staccato ]
				c''8 -\accent -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato \p [
				a'8 -\staccato ]
				g'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				d''8 -\staccato ]
				c''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a'8 \p (
				d'8
				g'8
				b'8 )
				a'8 (
				d''8
				e''8
				g'8 )
				a'8 \< (
				a'8
				bf'8
				c''8 )
				b'8 (
				d''8
				ef''8
				f''8 )
				c''8 (
				bf'8
				c''8
				a''8 )
				a''8 \mf (
				a''8
				af''8
				c'''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				f'2. \pp ~ \<
				f'4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''8 \mf (
				cs'''8
				a''8
				af''8 )
				bf''8 (
				a''8
				g''8
				cs''8 )
				ef''8 (
				d''8
				c''8
				d''8 )
				af'8 (
				d''8
				a'8
				g'8 )
				d''8 (
				c''8
				bf'8
				a'8 )
				g'8 (
				f'8
				ef'8
				d'8 )
				\bar "||"
				\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				gs'8 -\staccato \p [ \<
				ds''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				as'8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato [
				cs''8 -\accent -\staccato \mf ]
				r8 [
				ds''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				as'8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\accent -\staccato [
				cs''8 -\staccato ]
				gs'8 -\staccato \p [
				ds''8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				as'8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato [
				cs''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
				b'8 -\staccato \p [ \<
				a'8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				a'8 -\staccato [
				b'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				a'8 -\accent -\staccato [
				b'8 -\staccato ]
				b'8 -\staccato \p [
				a'8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				a'8 -\staccato [
				b'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				cs''8 -\staccato \p [ \<
				fs'8 -\staccato ]
				fs'8 -\staccato [
				b'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				g'8 -\staccato [
				fs'8 -\accent -\staccato \mf ]
				r8 [
				fs'8 -\staccato ]
				fs'8 -\staccato [
				b'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				g'8 -\accent -\staccato [
				fs'8 -\staccato ]
				cs''8 -\staccato \p [
				fs'8 -\staccato ]
				fs'8 -\staccato [
				b'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				g'8 -\staccato [
				fs'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a'8 -\staccato \p [ \<
				e''8 -\staccato ]
				e''8 -\staccato [
				b'8 -\staccato ]
				cs''8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				e''8 -\staccato ]
				e''8 -\staccato [
				b'8 -\staccato ]
				cs''8 -\staccato [
				a'8 -\staccato ]
				d''8 -\accent -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato \p [
				e''8 -\staccato ]
				e''8 -\staccato [
				b'8 -\staccato ]
				cs''8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				fs'8 -\staccato \p [ \<
				b'8 -\staccato ]
				g'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				a'8 -\staccato ]
				c''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				b'8 -\staccato ]
				g'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				a'8 -\staccato ]
				c''8 -\accent -\staccato [
				a'8 -\staccato ]
				fs'8 -\staccato \p [
				b'8 -\staccato ]
				g'8 -\staccato [
				a'8 -\staccato ]
				gs'8 -\staccato [
				a'8 -\staccato ]
				c''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				af'8 \p (
				a'8
				b'8
				a'8 )
				a'8 (
				b'8
				c''8
				a'8 )
				d''8 \< (
				c''8
				a'8
				c''8 )
				d''8 (
				a'8
				d''8
				d''8 )
				c''8 (
				bf'8
				af''8
				bf''8 )
				c''8 \mf (
				ef''8
				f''8
				g''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				a'2. \pp ~ \<
				a'4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''8 \mf (
				e''8
				a''8
				cs''8 )
				fs''8 (
				e''8
				a''8
				fs''8 )
				a''8 (
				b'8
				a'8
				b'8 )
				a'8 (
				e''8
				a'8
				e''8 )
				a'8 (
				g'8
				a'8
				c''8 )
				a'8 (
				d'8
				g'8
				a'8 )
				\bar "||"
				\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				f'8 -\staccato \p [ \<
				a'8 -\staccato ]
				cs''8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				cs''8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato [
				a'8 -\staccato ]
				d''8 -\accent -\staccato [
				a'8 -\staccato ]
				f'8 -\staccato \p [
				a'8 -\staccato ]
				cs''8 -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato [
				a'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
				gs'8 -\staccato \p [ \<
				e'8 -\staccato ]
				b'8 -\staccato [
				e'8 -\staccato ]
				e'8 -\staccato [
				g'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\accent -\staccato \mf ]
				r8 [
				e'8 -\staccato ]
				b'8 -\staccato [
				e'8 -\staccato ]
				e'8 -\staccato [
				g'8 -\staccato ]
				a'8 -\accent -\staccato [
				g'8 -\staccato ]
				gs'8 -\staccato \p [
				e'8 -\staccato ]
				b'8 -\staccato [
				e'8 -\staccato ]
				e'8 -\staccato [
				g'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				cs''8 -\staccato \p [ \<
				gs'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				fs'8 -\staccato [
				cs''8 -\accent -\staccato \mf ]
				r8 [
				gs'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				fs'8 -\accent -\staccato [
				cs''8 -\staccato ]
				cs''8 -\staccato \p [
				gs'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				fs'8 -\staccato [
				fs'8 -\staccato ]
				fs'8 -\staccato [
				cs''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				cs''8 -\staccato \p [ \<
				g'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				g'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\staccato ]
				a'8 -\accent -\staccato [
				a'8 -\staccato ]
				cs''8 -\staccato \p [
				g'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				b'8 -\staccato \p [ \<
				e'8 -\staccato ]
				g'8 -\staccato [
				fs'8 -\staccato ]
				b'8 -\staccato [
				b'8 -\staccato ]
				c''8 -\staccato [
				b'8 -\accent -\staccato \mf ]
				r8 [
				e'8 -\staccato ]
				g'8 -\staccato [
				fs'8 -\staccato ]
				b'8 -\staccato [
				b'8 -\staccato ]
				c''8 -\accent -\staccato [
				b'8 -\staccato ]
				b'8 -\staccato \p [
				e'8 -\staccato ]
				g'8 -\staccato [
				fs'8 -\staccato ]
				b'8 -\staccato [
				b'8 -\staccato ]
				c''8 -\staccato [
				b'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				e'8 \p (
				fs'8
				e'8
				b8 )
				cs'8 (
				e'8
				a'8
				d'8 )
				cs'8 \< (
				e'8
				d'8
				a'8 )
				fs'8 (
				d'8
				a'8
				d'8 )
				g'8 (
				a'8
				af'8
				d''8 )
				e''8 \mf (
				ef''8
				cs''8
				ef''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				fs'2. \pp ~ \<
				fs'4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''8 \mf (
				e''8
				d''8
				b'8 )
				a'8 (
				fs''8
				d''8
				a'8 )
				b'8 (
				a'8
				c''8
				d''8 )
				a'8 (
				g'8
				f'8
				e'8 )
				d'8 (
				a'8
				f'8
				g'8 )
				fs'8 (
				c'8
				d'8
				c'8 )
				\bar "||"
				\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				f''8 -\staccato \p [ \<
				gs''8 -\staccato ]
				gs''8 -\staccato [
				gs''8 -\staccato ]
				as'8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato [
				cs''8 -\accent -\staccato \mf ]
				r8 [
				gs''8 -\staccato ]
				gs''8 -\staccato [
				gs''8 -\staccato ]
				as'8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\accent -\staccato [
				cs''8 -\staccato ]
				f''8 -\staccato \p [
				gs''8 -\staccato ]
				gs''8 -\staccato [
				gs''8 -\staccato ]
				as'8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato [
				cs''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
				e''8 -\staccato \p [ \<
				a'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				e''8 -\staccato [
				d''8 -\staccato ]
				e''8 -\staccato [
				e''8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				e''8 -\staccato [
				d''8 -\staccato ]
				e''8 -\accent -\staccato [
				e''8 -\staccato ]
				e''8 -\staccato \p [
				a'8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				e''8 -\staccato [
				d''8 -\staccato ]
				e''8 -\staccato [
				e''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				cs''8 -\staccato \p [ \<
				cs''8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				fs''8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				cs''8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				fs''8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\accent -\staccato [
				a'8 -\staccato ]
				cs''8 -\staccato \p [
				cs''8 -\staccato ]
				a'8 -\staccato [
				e''8 -\staccato ]
				fs''8 -\staccato [
				a'8 -\staccato ]
				fs''8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				cs''8 -\staccato \p [ \<
				e''8 -\staccato ]
				f''8 -\staccato [
				b'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				as'8 -\staccato [
				e''8 -\accent -\staccato \mf ]
				r8 [
				e''8 -\staccato ]
				f''8 -\staccato [
				b'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				as'8 -\accent -\staccato [
				e''8 -\staccato ]
				cs''8 -\staccato \p [
				e''8 -\staccato ]
				f''8 -\staccato [
				b'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				as'8 -\staccato [
				e''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				b'8 -\staccato \p [ \<
				b'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				ds''8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				d''8 -\accent -\staccato \mf ]
				r8 [
				b'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				ds''8 -\staccato [
				a'8 -\staccato ]
				a'8 -\accent -\staccato [
				d''8 -\staccato ]
				b'8 -\staccato \p [
				b'8 -\staccato ]
				d''8 -\staccato [
				a'8 -\staccato ]
				ds''8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				d''8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				af8 \p (
				b8
				a8
				d'8 )
				e'8 (
				g'8
				f'8
				e'8 )
				fs'8 \< (
				a'8
				bf'8
				a'8 )
				g'8 (
				f'8
				g'8
				a'8 )
				e'8 (
				f'8
				c''8
				g'8 )
				f'8 \mf (
				bf'8
				c''8
				bf'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				fs'2. \pp ~ \<
				fs'4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''8 \mf (
				cs''8
				fs''8
				cs''8 )
				b'8 (
				fs''8
				b'8
				a'8 )
				af'8 (
				a'8
				b'8
				a'8 )
				cs''8 (
				b'8
				e'8
				a'8 )
				fs'8 (
				e'8
				a'8
				e'8 )
				d'8 (
				a8
				bf8
				a8 )
				\bar "||"
				\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				cs'8 -\staccato \p [ \<
				a'8 -\staccato ]
				cs'8 -\staccato [
				ds'8 -\staccato ]
				fs'8 -\staccato [
				cs'8 -\staccato ]
				a'8 -\staccato [
				gs'8 -\accent -\staccato \mf ]
				r8 [
				a'8 -\staccato ]
				cs'8 -\staccato [
				ds'8 -\staccato ]
				fs'8 -\staccato [
				cs'8 -\staccato ]
				a'8 -\accent -\staccato [
				gs'8 -\staccato ]
				cs'8 -\staccato \p [
				a'8 -\staccato ]
				cs'8 -\staccato [
				ds'8 -\staccato ]
				fs'8 -\staccato [
				cs'8 -\staccato ]
				a'8 -\staccato [
				gs'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
				b'8 -\staccato \p [ \<
				b'8 -\staccato ]
				g'8 -\staccato [
				d'8 -\staccato ]
				e'8 -\staccato [
				g'8 -\staccato ]
				f'8 -\staccato [
				b'8 -\accent -\staccato \mf ]
				r8 [
				b'8 -\staccato ]
				g'8 -\staccato [
				d'8 -\staccato ]
				e'8 -\staccato [
				g'8 -\staccato ]
				f'8 -\accent -\staccato [
				b'8 -\staccato ]
				b'8 -\staccato \p [
				b'8 -\staccato ]
				g'8 -\staccato [
				d'8 -\staccato ]
				e'8 -\staccato [
				g'8 -\staccato ]
				f'8 -\staccato [
				b'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				a'8 -\staccato \p [ \<
				e'8 -\staccato ]
				fs'8 -\staccato [
				gs'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				fs'8 -\accent -\staccato \mf ]
				r8 [
				e'8 -\staccato ]
				fs'8 -\staccato [
				gs'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\accent -\staccato [
				fs'8 -\staccato ]
				a'8 -\staccato \p [
				e'8 -\staccato ]
				fs'8 -\staccato [
				gs'8 -\staccato ]
				a'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				fs'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a'8 -\staccato \p [ \<
				d'8 -\staccato ]
				c'8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\staccato ]
				as'8 -\staccato [
				a'8 -\accent -\staccato \mf ]
				r8 [
				d'8 -\staccato ]
				c'8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\staccato ]
				as'8 -\accent -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato \p [
				d'8 -\staccato ]
				c'8 -\staccato [
				a'8 -\staccato ]
				a'8 -\staccato [
				g'8 -\staccato ]
				as'8 -\staccato [
				a'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
				ds'8 -\staccato \p [ \<
				fs'8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				e'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				fs'8 -\accent -\staccato \mf ]
				r8 [
				fs'8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				e'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\accent -\staccato [
				fs'8 -\staccato ]
				ds'8 -\staccato \p [
				fs'8 -\staccato ]
				a'8 -\staccato [
				fs'8 -\staccato ]
				e'8 -\staccato [
				a'8 -\staccato ]
				b'8 -\staccato [
				fs'8 -\staccato ]
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
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
						\times 4/5 {
							cs'4 \p ( ^ \markup { repeat slowing down }
							ds'1 )
						}
						cs'2 -\fermata
						b'16 (
						as'4
						\afterGrace
						cs'2. )
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
						e'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				a1 \p ~ \<
				a1 ~
				a1 \mf
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a1 \p ~ \<
				a1 ~
				a1 \mf
				\bar "||"
				\mark "C"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a1 \p ~ \<
				a1 ~
				a1 \mf
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				e1 \p ~ \< (
				e1
				f1 \mf )
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				fs1 \p ~ \< (
				fs1
				g1 \mf )
				\bar "||"
				\mark "C"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				bf1 \p ~ \< (
				bf1
				b1 \mf )
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
				}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				bf1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				bf2 \< (
				ef'1 )
				df'1 \mf
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				c'1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				c'2 \< (
				f'1 )
				ef'1 \mf
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
				}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				f1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				f2 \< (
				af1 )
				b1 \mf
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				g1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				g2 \< (
				bf1 )
				df'1 \mf
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
				}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				bf1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				bf2 \< (
				ef'1 )
				gf1 \mf
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				c'1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				c'2 \< (
				f'1 )
				af1 \mf
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
				}
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				f1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				f2 \< (
				af1 )
				gf1 \mf
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				R1
				R1
				g1 \p
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				r2
				g2 \< (
				bf1 )
				af1 \mf
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				r4
				f'8 \p ( ^ \markup { straight mute }
				ef'8
				d'2 )
				bf'4 -\tenuto \<
				ef'4 -\tenuto
				af'8 (
				ef''4. \mp )
				R1 ^ \markup { mute out }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
				}
				\context Staff {#(set-accidental-style 'modern)}
				g''8 \mp ( ^ \markup { straight mute }
				a''4.
				e''2 )
				d''4 (
				c''2 )
				bf'4 ~ (
				bf'4.
				f''8 ~
				f''4 )
				r4 ^ \markup { mute out }
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				c'8 (
				d'8
				c'8 )
				bf8 (
				a4 )
				c'8 (
				g8 ~
				g4 )
				f'4 -\tenuto
				bf4 -\tenuto
				ef'4 -\tenuto
				ef'4. -\tenuto
				bf8 -\tenuto ~
				bf4
				r4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				bf8 (
				c'8
				bf8 )
				af8 (
				g4 )
				bf8 (
				f'8 ~
				f'4 )
				ef'4 -\tenuto
				af4 -\tenuto
				df'4 -\tenuto
				df'4. -\tenuto
				af8 -\tenuto ~
				af4
				r4
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
					s1 * 1
				}
				{
					s1 * 1
				}
				{
					s1 * 1
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						s4
						s8
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (with taiko ka kas) }
						r1 -\fermata
					}
					s1 * 11/8
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s4
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (4th ka ka) }
						c8 -\accent [
						c8 -\accent ]
						r1 -\fermata
					}
					s1 * 5/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
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
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						s4
						s8
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (with taiko do don) }
						r1 -\fermata
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s4
						s8
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (with taiko do don) }
						r1 -\fermata
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s4
						s8
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (with taiko do don) }
						r1 -\fermata
					}
					s1 * 11/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
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
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						s4
						s8
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (with taiko do don) }
						r1 -\fermata
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s4
						s8
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (with taiko do don) }
						r1 -\fermata
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						s4
						s8
						r1 -\fermata
						s1
						s1
						c8 [
						c8 ] ^ \markup { (with taiko do don) }
						r1 -\fermata
					}
					s1 * 11/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						r2
						r8
						c1 :32
							^ \markup {
								\column
									{
										"repeat 4x"
										"slowing down"
									}
								}
					}
					s1 * 99/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { repeat }
							_ \markup { ko }
						s1
						c8
							^ \markup { random kas }
							_ \markup { ka }
						s1
						s1
						c8 [ _ \markup { ka }
						c8 ]
							^ \markup { (ka kas together) }
							_ \markup { ka }
						s1
					}
					s1 * 11/8
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (sim) }
							_ \markup { ko }
						s1
						s1
						s1
						c8 [ _ \markup { ka }
						c8 ]
							^ \markup { (4th ka ka) }
							_ \markup { ka }
						c8 -\accent _ \markup { do }
						c8 -\accent _ \markup { don }
						r1 -\fermata
					}
					s1 * 5/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						r8 _ \markup { tsu }
						c8 \mp _ \markup { da }
						c8 _ \markup { da }
						c8 _ \markup { da }
						c8 _ \markup { da }
						c8 -\accent
							^ \markup {
								\column
									{
										"repeat 4x"
										"slowing down"
									}
								}
							_ \markup { dan }
					}
					s1 * 113/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				\textLengthOn
				\dynamicUp
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { repeat }
							_ \markup { ko }
						s1
						s1
						c8
							^ \markup { random kas }
							_ \markup { ka }
						s1
						c8 [ _ \markup { ka }
						c8 ]
							^ \markup { (ka kas together) }
							_ \markup { ka }
						s1
					}
					s1 * 11/8
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (sim) }
							_ \markup { ko }
						s1
						s1
						s1
						c8 [ _ \markup { ka }
						c8 ]
							^ \markup { (4th ka ka) }
							_ \markup { ka }
						c8 -\accent _ \markup { do }
						c8 -\accent _ \markup { don }
						r1 -\fermata
					}
					s1 * 5/4
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						c8 [ _ \markup { da }
						c8 ]
							^ \markup { repeat }
							_ \markup { da }
						s1
						s1
						c8 -\accent
							^ \markup { random dan }
							_ \markup { dan }
						s1
						c8 [ _ \markup { do }
						c8 ]
							^ \markup { (do don together) }
							_ \markup { don }
						s1
					}
					s1 * 11/8
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						r8 _ \markup { tsu }
						c8 \mp _ \markup { da }
						c8 _ \markup { da }
						c8 _ \markup { da }
						c8 _ \markup { da }
						c8 -\accent
							^ \markup {
								\column
									{
										"repeat 4x"
										"slowing down"
									}
								}
							_ \markup { dan }
					}
					s1 * 113/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI_div1" {
				\set Staff.instrumentName = \markup { Violin I 1 }
				\set Staff.shortInstrumentName = \markup { Vln.I.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
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
						s4 ^ \markup { repeat randomly }
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					\mark "B"
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
						s4
							^ \markup {
								\column
									{
										"repeat randomly"
										sim
									}
								}
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				fs''8 (
				e''8 )
				g''8 (
				fs''8 )
				e''8 (
				g''8 )
				fs''8 (
				e''8 )
				g''8 (
				fs''8 )
				e''8 (
				g''8 )
				fs''8 (
				e''8 )
				g''8 (
				fs''8 )
				e''8 (
				g''8 )
				fs''8 (
				e''8 )
				g''8 (
				fs''8 )
				e''8 (
				g''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''8 (
				f''8 )
				gs'8 (
				g''8 )
				f''8 (
				gs'8 )
				g''8 (
				f''8 )
				gs'8 (
				g''8 )
				f''8 (
				gs'8 )
				g''8 (
				f''8 )
				gs'8 (
				g''8 )
				f''8 (
				gs'8 )
				g''8 (
				f''8 )
				gs'8 (
				g''8 )
				f''8 (
				gs'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				a''4 -\downbow
				\bar "||"
				\mark "C"
				\context Staff {#(set-accidental-style 'modern)}
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				g''8 -\staccato
				g''8 -\staccato
				g''8 -\staccato
				g''8 -\staccato
				g''8 -\staccato
				g''8 -\staccato
				g''8 -\staccato
				g''8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				a''8 -\staccato
				a''8 -\staccato
				a''8 -\staccato
				a''8 -\staccato
				a''8 -\staccato
				a''8 -\staccato
				a''8 -\staccato
				a''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds''8 (
				cs''8 )
				e''8 (
				ds''8 )
				cs''8 (
				e''8 )
				ds''8 (
				cs''8 )
				e''8 (
				ds''8 )
				cs''8 (
				e''8 )
				ds''8 (
				cs''8 )
				e''8 (
				ds''8 )
				cs''8 (
				e''8 )
				ds''8 (
				cs''8 )
				e''8 (
				ds''8 )
				cs''8 (
				e''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''8 (
				d''8 )
				f''8 (
				e''8 )
				d''8 (
				f''8 )
				e''8 (
				d''8 )
				f''8 (
				e''8 )
				d''8 (
				f''8 )
				e''8 (
				d''8 )
				f''8 (
				e''8 )
				d''8 (
				f''8 )
				e''8 (
				d''8 )
				f''8 (
				e''8 )
				d''8 (
				f''8 )
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				f''8 (
				ds''8 )
				fs''8 (
				f''8 )
				ds''8 (
				fs''8 )
				f''8 (
				ds''8 )
				fs''8 (
				f''8 )
				ds''8 (
				fs''8 )
				f''8 (
				ds''8 )
				fs''8 (
				f''8 )
				ds''8 (
				fs''8 )
				f''8 (
				ds''8 )
				fs''8 (
				f''8 )
				ds''8 (
				fs''8 )
				\bar "||"
				\mark "F"
				\context Staff {#(set-accidental-style 'modern)}
				fs'8 (
				e'8 )
				g'8 (
				fs'8 )
				e'8 (
				g'8 )
				fs'8 (
				e'8 )
				g'8 (
				fs'8 )
				e'8 (
				g'8 )
				fs'8 (
				e'8 )
				g'8 (
				fs'8 )
				e'8 (
				g'8 )
				fs'8 (
				e'8 )
				g'8 (
				fs'8 )
				e'8 (
				g'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 (
				f'8 )
				gs8 (
				g'8 )
				f'8 (
				gs8 )
				g'8 (
				f'8 )
				gs8 (
				g'8 )
				f'8 (
				gs8 )
				g'8 (
				f'8 )
				gs8 (
				g'8 )
				f'8 (
				gs8 )
				g'8 (
				f'8 )
				gs8 (
				g'8 )
				f'8 (
				gs8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				gs'8 (
				fs''8 )
				a'8 (
				gs'8 )
				fs''8 (
				a'8 )
				gs'8 (
				fs''8 )
				a'8 (
				gs'8 )
				fs''8 (
				a'8 )
				gs'8 (
				fs''8 )
				a'8 (
				gs'8 )
				fs''8 (
				a'8 )
				gs'8 (
				fs''8 )
				a'8 (
				gs'8 )
				fs''8 (
				a'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'8 (
				g''8 )
				as'8 (
				a'8 )
				g''8 (
				as'8 )
				a'8 (
				g''8 )
				as'8 (
				a'8 )
				g''8 (
				as'8 )
				a'8 (
				g''8 )
				as'8 (
				a'8 )
				g''8 (
				as'8 )
				a'8 (
				g''8 )
				as'8 (
				a'8 )
				g''8 (
				as'8 )
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				as'8 (
				gs'8 )
				b'8 (
				as'8 )
				gs'8 (
				b'8 )
				as'8 (
				gs'8 )
				b'8 (
				as'8 )
				gs'8 (
				b'8 )
				as'8 (
				gs'8 )
				b'8 (
				as'8 )
				gs'8 (
				b'8 )
				as'8 (
				gs'8 )
				b'8 (
				as'8 )
				gs'8 (
				b'8 )
				\bar "||"
				\mark "H"
				\context Staff {#(set-accidental-style 'modern)}
				cs'8 \mp \< (
				e'8
				a'8 )
				b'8 (
				fs'8 )
				fs''8 \mf (
				d''8
				e''8 )
				g'8 -\staccato -\tenuto
				f'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				gs'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				g''8 (
				c''8
				gs'8 )
				g'8 (
				f'8 )
				g'8 (
				cs'8 )
				g'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''8 (
				as'8 )
				cs''8 (
				c''8 )
				as'8 (
				cs''8 )
				c''8 (
				as'8 )
				cs''8 (
				c''8 )
				as'8 (
				cs''8 )
				c''8 (
				as'8 )
				cs''8 (
				c''8 )
				as'8 (
				cs''8 )
				c''8 (
				as'8 )
				cs''8 (
				c''8 )
				as'8 (
				cs''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''8 (
				b'8 )
				d''8 (
				cs''8 )
				b'8 (
				d''8 )
				cs''8 (
				b'8 )
				d''8 (
				cs''8 )
				b'8 (
				d''8 )
				cs''8 (
				b'8 )
				d''8 (
				cs''8 )
				b'8 (
				d''8 )
				cs''8 (
				b'8 )
				d''8 (
				cs''8 )
				b'8 (
				d''8 )
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						s8 ^ \markup { repeat randomly until start of next movement }
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
						ds''1 :32 -\fermata \ppp
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
						e''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						ds''2
						\unHideNotes
						\hideNotes
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
						e''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						ds''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "violinI_div2" {
				\set Staff.instrumentName = \markup { Violin I 2 }
				\set Staff.shortInstrumentName = \markup { Vln.I.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
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
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'modern)}
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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
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
						s4 ^ \markup { repeat randomly }
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					\mark "B"
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
						s4
							^ \markup {
								\column
									{
										"repeat randomly"
										sim
									}
								}
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				e''8 (
				b'8 )
				d''8 (
				e''8 )
				b'8 (
				d''8 )
				e''8 (
				b'8 )
				d''8 (
				e''8 )
				b'8 (
				d''8 )
				e''8 (
				b'8 )
				d''8 (
				e''8 )
				b'8 (
				d''8 )
				e''8 (
				b'8 )
				d''8 (
				e''8 )
				b'8 (
				d''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''8 (
				c''8 )
				ds''8 (
				f''8 )
				c''8 (
				ds''8 )
				f''8 (
				c''8 )
				ds''8 (
				f''8 )
				c''8 (
				ds''8 )
				f''8 (
				c''8 )
				ds''8 (
				f''8 )
				c''8 (
				ds''8 )
				f''8 (
				c''8 )
				ds''8 (
				f''8 )
				c''8 (
				ds''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
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
				a''4 -\downbow
				\bar "||"
				\mark "C"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				d''8 -\staccato
				d''8 -\staccato
				d''8 -\staccato
				d''8 -\staccato
				d''8 -\staccato
				d''8 -\staccato
				d''8 -\staccato
				d''8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				b'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				e''8 -\staccato
				e''8 -\staccato
				e''8 -\staccato
				e''8 -\staccato
				e''8 -\staccato
				e''8 -\staccato
				e''8 -\staccato
				e''8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				cs''8 -\staccato
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''8 (
				gs'8 )
				b'8 (
				cs''8 )
				gs'8 (
				b'8 )
				cs''8 (
				gs'8 )
				b'8 (
				cs''8 )
				gs'8 (
				b'8 )
				cs''8 (
				gs'8 )
				b'8 (
				cs''8 )
				gs'8 (
				b'8 )
				cs''8 (
				gs'8 )
				b'8 (
				cs''8 )
				gs'8 (
				b'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''8 (
				a'8 )
				c''8 (
				d''8 )
				a'8 (
				c''8 )
				d''8 (
				a'8 )
				c''8 (
				d''8 )
				a'8 (
				c''8 )
				d''8 (
				a'8 )
				c''8 (
				d''8 )
				a'8 (
				c''8 )
				d''8 (
				a'8 )
				c''8 (
				d''8 )
				a'8 (
				c''8 )
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				ds''8 (
				as'8 )
				cs''8 (
				ds''8 )
				as'8 (
				cs''8 )
				ds''8 (
				as'8 )
				cs''8 (
				ds''8 )
				as'8 (
				cs''8 )
				ds''8 (
				as'8 )
				cs''8 (
				ds''8 )
				as'8 (
				cs''8 )
				ds''8 (
				as'8 )
				cs''8 (
				ds''8 )
				as'8 (
				cs''8 )
				\bar "||"
				\mark "F"
				\context Staff {#(set-accidental-style 'modern)}
				e'8 (
				b8 )
				d'8 (
				e'8 )
				b8 (
				d'8 )
				e'8 (
				b8 )
				d'8 (
				e'8 )
				b8 (
				d'8 )
				e'8 (
				b8 )
				d'8 (
				e'8 )
				b8 (
				d'8 )
				e'8 (
				b8 )
				d'8 (
				e'8 )
				b8 (
				d'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'8 (
				c'8 )
				ds'8 (
				f'8 )
				c'8 (
				ds'8 )
				f'8 (
				c'8 )
				ds'8 (
				f'8 )
				c'8 (
				ds'8 )
				f'8 (
				c'8 )
				ds'8 (
				f'8 )
				c'8 (
				ds'8 )
				f'8 (
				c'8 )
				ds'8 (
				f'8 )
				c'8 (
				ds'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'8 (
				cs''8 )
				e''8 (
				fs'8 )
				cs''8 (
				e''8 )
				fs'8 (
				cs''8 )
				e''8 (
				fs'8 )
				cs''8 (
				e''8 )
				fs'8 (
				cs''8 )
				e''8 (
				fs'8 )
				cs''8 (
				e''8 )
				fs'8 (
				cs''8 )
				e''8 (
				fs'8 )
				cs''8 (
				e''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 (
				d''8 )
				f''8 (
				g'8 )
				d''8 (
				f''8 )
				g'8 (
				d''8 )
				f''8 (
				g'8 )
				d''8 (
				f''8 )
				g'8 (
				d''8 )
				f''8 (
				g'8 )
				d''8 (
				f''8 )
				g'8 (
				d''8 )
				f''8 (
				g'8 )
				d''8 (
				f''8 )
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				gs'8 (
				ds''8 )
				fs'8 (
				gs'8 )
				ds''8 (
				fs'8 )
				gs'8 (
				ds''8 )
				fs'8 (
				gs'8 )
				ds''8 (
				fs'8 )
				gs'8 (
				ds''8 )
				fs'8 (
				gs'8 )
				ds''8 (
				fs'8 )
				gs'8 (
				ds''8 )
				fs'8 (
				gs'8 )
				ds''8 (
				fs'8 )
				\bar "||"
				\mark "H"
				\context Staff {#(set-accidental-style 'modern)}
				cs'8 \mp \< (
				b'8
				a'8 )
				g'8 (
				fs'8 )
				fs''8 \mf (
				d''8
				e''8 )
				e'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				a'8 -\staccato -\tenuto
				b'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				c''8 -\staccato -\tenuto
				e''8 (
				c''8
				cs''8 )
				c''8 (
				g'8 )
				gs'8 (
				fs'8 )
				gs'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				as'8 (
				f''8 )
				gs'8 (
				as'8 )
				f''8 (
				gs'8 )
				as'8 (
				f''8 )
				gs'8 (
				as'8 )
				f''8 (
				gs'8 )
				as'8 (
				f''8 )
				gs'8 (
				as'8 )
				f''8 (
				gs'8 )
				as'8 (
				f''8 )
				gs'8 (
				as'8 )
				f''8 (
				gs'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'8 (
				fs'8 )
				a'8 (
				b'8 )
				fs'8 (
				a'8 )
				b'8 (
				fs'8 )
				a'8 (
				b'8 )
				fs'8 (
				a'8 )
				b'8 (
				fs'8 )
				a'8 (
				b'8 )
				fs'8 (
				a'8 )
				b'8 (
				fs'8 )
				a'8 (
				b'8 )
				fs'8 (
				a'8 )
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						s8 ^ \markup { repeat randomly until start of next movement }
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
						cs''1 :32 -\fermata \ppp
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
						cs''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "violinII_div1" {
				\set Staff.instrumentName = \markup { Violin II 1 }
				\set Staff.shortInstrumentName = \markup { Vln.II.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a''1 \p \<
				gs''4. (
				a''8 ~
				a''2 )
				a''1 \mf
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
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
						s4 ^ \markup { repeat randomly }
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					\mark "B"
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
						s4
							^ \markup {
								\column
									{
										"repeat randomly"
										sim
									}
								}
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				d''8 (
				e''8 )
				a'8 (
				d''8 )
				e''8 (
				a'8 )
				d''8 (
				e''8 )
				a'8 (
				d''8 )
				e''8 (
				a'8 )
				d''8 (
				e''8 )
				a'8 (
				d''8 )
				e''8 (
				a'8 )
				d''8 (
				e''8 )
				a'8 (
				d''8 )
				e''8 (
				a'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds''8 (
				f''8 )
				as'8 (
				ds''8 )
				f''8 (
				as'8 )
				ds''8 (
				f''8 )
				as'8 (
				ds''8 )
				f''8 (
				as'8 )
				ds''8 (
				f''8 )
				as'8 (
				ds''8 )
				f''8 (
				as'8 )
				ds''8 (
				f''8 )
				as'8 (
				ds''8 )
				f''8 (
				as'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''1 \p \<
				gs''4. (
				a''8 ~
				a''2 )
				a''1 \mf
				\bar "||"
				\mark "C"
				\context Staff {#(set-accidental-style 'modern)}
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				ef''8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				a'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				c''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				f''8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'8 (
				cs''8 )
				fs''8 (
				b'8 )
				cs''8 (
				fs''8 )
				b'8 (
				cs''8 )
				fs''8 (
				b'8 )
				cs''8 (
				fs''8 )
				b'8 (
				cs''8 )
				fs''8 (
				b'8 )
				cs''8 (
				fs''8 )
				b'8 (
				cs''8 )
				fs''8 (
				b'8 )
				cs''8 (
				fs''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''8 (
				d''8 )
				g''8 (
				c''8 )
				d''8 (
				g''8 )
				c''8 (
				d''8 )
				g''8 (
				c''8 )
				d''8 (
				g''8 )
				c''8 (
				d''8 )
				g''8 (
				c''8 )
				d''8 (
				g''8 )
				c''8 (
				d''8 )
				g''8 (
				c''8 )
				d''8 (
				g''8 )
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				cs''8 (
				ds''8 )
				gs'8 (
				cs''8 )
				ds''8 (
				gs'8 )
				cs''8 (
				ds''8 )
				gs'8 (
				cs''8 )
				ds''8 (
				gs'8 )
				cs''8 (
				ds''8 )
				gs'8 (
				cs''8 )
				ds''8 (
				gs'8 )
				cs''8 (
				ds''8 )
				gs'8 (
				cs''8 )
				ds''8 (
				gs'8 )
				\bar "||"
				\mark "F"
				\context Staff {#(set-accidental-style 'modern)}
				d'8 (
				e'8 )
				a8 (
				d'8 )
				e'8 (
				a8 )
				d'8 (
				e'8 )
				a8 (
				d'8 )
				e'8 (
				a8 )
				d'8 (
				e'8 )
				a8 (
				d'8 )
				e'8 (
				a8 )
				d'8 (
				e'8 )
				a8 (
				d'8 )
				e'8 (
				a8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds'8 (
				f'8 )
				as8 (
				ds'8 )
				f'8 (
				as8 )
				ds'8 (
				f'8 )
				as8 (
				ds'8 )
				f'8 (
				as8 )
				ds'8 (
				f'8 )
				as8 (
				ds'8 )
				f'8 (
				as8 )
				ds'8 (
				f'8 )
				as8 (
				ds'8 )
				f'8 (
				as8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''8 (
				fs''8 )
				b'8 (
				e''8 )
				fs''8 (
				b'8 )
				e''8 (
				fs''8 )
				b'8 (
				e''8 )
				fs''8 (
				b'8 )
				e''8 (
				fs''8 )
				b'8 (
				e''8 )
				fs''8 (
				b'8 )
				e''8 (
				fs''8 )
				b'8 (
				e''8 )
				fs''8 (
				b'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''8 (
				g''8 )
				c''8 (
				f''8 )
				g''8 (
				c''8 )
				f''8 (
				g''8 )
				c''8 (
				f''8 )
				g''8 (
				c''8 )
				f''8 (
				g''8 )
				c''8 (
				f''8 )
				g''8 (
				c''8 )
				f''8 (
				g''8 )
				c''8 (
				f''8 )
				g''8 (
				c''8 )
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
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
						s4
						r4
						a''1 :32 -\fermata
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
						a''2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				fs''8 (
				gs'8 )
				cs''8 (
				fs''8 )
				gs'8 (
				cs''8 )
				fs''8 (
				gs'8 )
				cs''8 (
				fs''8 )
				gs'8 (
				cs''8 )
				fs''8 (
				gs'8 )
				cs''8 (
				fs''8 )
				gs'8 (
				cs''8 )
				fs''8 (
				gs'8 )
				cs''8 (
				fs''8 )
				gs'8 (
				cs''8 )
				\bar "||"
				\mark "H"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 \mp \< (
				a'8
				c''8 )
				a'8 (
				g'8 )
				a'8 \mf (
				as'8
				c''8 )
				g'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				ds'8 -\staccato -\tenuto
				f'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				as'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				as'8 -\staccato -\tenuto
				c''8 (
				g''8
				f''8 )
				ds''8 (
				as'8 )
				g'8 (
				as'8 )
				ds'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				gs'8 (
				as'8 )
				ds''8 (
				gs'8 )
				as'8 (
				ds''8 )
				gs'8 (
				as'8 )
				ds''8 (
				gs'8 )
				as'8 (
				ds''8 )
				gs'8 (
				as'8 )
				ds''8 (
				gs'8 )
				as'8 (
				ds''8 )
				gs'8 (
				as'8 )
				ds''8 (
				gs'8 )
				as'8 (
				ds''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'8 (
				b'8 )
				e''8 (
				a'8 )
				b'8 (
				e''8 )
				a'8 (
				b'8 )
				e''8 (
				a'8 )
				b'8 (
				e''8 )
				a'8 (
				b'8 )
				e''8 (
				a'8 )
				b'8 (
				e''8 )
				a'8 (
				b'8 )
				e''8 (
				a'8 )
				b'8 (
				e''8 )
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						s8 ^ \markup { repeat randomly until start of next movement }
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
						b'1 :32 -\fermata \ppp
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
						b'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "violinII_div2" {
				\set Staff.instrumentName = \markup { Violin II 2 }
				\set Staff.shortInstrumentName = \markup { Vln.II.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				a''1 \p \<
				gs''4. (
				a''8 ~
				a''2 )
				a''1 \mf
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''1
				gs''4. (
				a''8 ~
				a''2 )
				R1
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
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
						s4 ^ \markup { repeat randomly }
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					\mark "B"
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
						s4
							^ \markup {
								\column
									{
										"repeat randomly"
										sim
									}
								}
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				cs''8 (
				b'8 )
				g'8 (
				cs''8 )
				b'8 (
				g'8 )
				cs''8 (
				b'8 )
				g'8 (
				cs''8 )
				b'8 (
				g'8 )
				cs''8 (
				b'8 )
				g'8 (
				cs''8 )
				b'8 (
				g'8 )
				cs''8 (
				b'8 )
				g'8 (
				cs''8 )
				b'8 (
				g'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''8 (
				c''8 )
				gs'8 (
				d''8 )
				c''8 (
				gs'8 )
				d''8 (
				c''8 )
				gs'8 (
				d''8 )
				c''8 (
				gs'8 )
				d''8 (
				c''8 )
				gs'8 (
				d''8 )
				c''8 (
				gs'8 )
				d''8 (
				c''8 )
				gs'8 (
				d''8 )
				c''8 (
				gs'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a''1 \p \<
				gs''4. (
				a''8 ~
				a''2 )
				a''1 \mf
				\bar "||"
				\mark "C"
				\context Staff {#(set-accidental-style 'modern)}
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				d'8 -\staccato
				bf8 -\staccato
				bf8 -\staccato
				bf8 -\staccato
				bf8 -\staccato
				bf8 -\staccato
				bf8 -\staccato
				bf8 -\staccato
				bf8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				f'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				fs'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				e'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				c'8 -\staccato
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				g'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				bf'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				af'8 -\staccato
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
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
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				as'8 (
				gs'8 )
				e''8 (
				as'8 )
				gs'8 (
				e''8 )
				as'8 (
				gs'8 )
				e''8 (
				as'8 )
				gs'8 (
				e''8 )
				as'8 (
				gs'8 )
				e''8 (
				as'8 )
				gs'8 (
				e''8 )
				as'8 (
				gs'8 )
				e''8 (
				as'8 )
				gs'8 (
				e''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'8 (
				a'8 )
				f''8 (
				b'8 )
				a'8 (
				f''8 )
				b'8 (
				a'8 )
				f''8 (
				b'8 )
				a'8 (
				f''8 )
				b'8 (
				a'8 )
				f''8 (
				b'8 )
				a'8 (
				f''8 )
				b'8 (
				a'8 )
				f''8 (
				b'8 )
				a'8 (
				f''8 )
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				c''8 (
				as'8 )
				fs'8 (
				c''8 )
				as'8 (
				fs'8 )
				c''8 (
				as'8 )
				fs'8 (
				c''8 )
				as'8 (
				fs'8 )
				c''8 (
				as'8 )
				fs'8 (
				c''8 )
				as'8 (
				fs'8 )
				c''8 (
				as'8 )
				fs'8 (
				c''8 )
				as'8 (
				fs'8 )
				\bar "||"
				\mark "F"
				\context Staff {#(set-accidental-style 'modern)}
				cs'8 (
				b8 )
				g'8 (
				cs'8 )
				b8 (
				g'8 )
				cs'8 (
				b8 )
				g'8 (
				cs'8 )
				b8 (
				g'8 )
				cs'8 (
				b8 )
				g'8 (
				cs'8 )
				b8 (
				g'8 )
				cs'8 (
				b8 )
				g'8 (
				cs'8 )
				b8 (
				g'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d'8 (
				c'8 )
				gs8 (
				d'8 )
				c'8 (
				gs8 )
				d'8 (
				c'8 )
				gs8 (
				d'8 )
				c'8 (
				gs8 )
				d'8 (
				c'8 )
				gs8 (
				d'8 )
				c'8 (
				gs8 )
				d'8 (
				c'8 )
				gs8 (
				d'8 )
				c'8 (
				gs8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				ds''8 (
				cs''8 )
				a'8 (
				ds''8 )
				cs''8 (
				a'8 )
				ds''8 (
				cs''8 )
				a'8 (
				ds''8 )
				cs''8 (
				a'8 )
				ds''8 (
				cs''8 )
				a'8 (
				ds''8 )
				cs''8 (
				a'8 )
				ds''8 (
				cs''8 )
				a'8 (
				ds''8 )
				cs''8 (
				a'8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''8 (
				d''8 )
				as'8 (
				e''8 )
				d''8 (
				as'8 )
				e''8 (
				d''8 )
				as'8 (
				e''8 )
				d''8 (
				as'8 )
				e''8 (
				d''8 )
				as'8 (
				e''8 )
				d''8 (
				as'8 )
				e''8 (
				d''8 )
				as'8 (
				e''8 )
				d''8 (
				as'8 )
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
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
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						s4
						r4
						gs''2 (
						a''2 :32 -\fermata )
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
						\hideNotes
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
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				f''8 (
				ds''8 )
				b'8 (
				f''8 )
				ds''8 (
				b'8 )
				f''8 (
				ds''8 )
				b'8 (
				f''8 )
				ds''8 (
				b'8 )
				f''8 (
				ds''8 )
				b'8 (
				f''8 )
				ds''8 (
				b'8 )
				f''8 (
				ds''8 )
				b'8 (
				f''8 )
				ds''8 (
				b'8 )
				\bar "||"
				\mark "H"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 \mp \< (
				e'8
				f'8 )
				g'8 (
				a'8 )
				g''8 \mf (
				a''8
				c''8 )
				b'8 -\staccato -\tenuto
				c''8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				f'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				f'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				as'8 -\staccato -\tenuto
				c''8 (
				ds''8
				c''8 )
				as'8 (
				g'8 )
				f'8 (
				g'8 )
				f'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g'8 (
				f''8 )
				cs''8 (
				g'8 )
				f''8 (
				cs''8 )
				g'8 (
				f''8 )
				cs''8 (
				g'8 )
				f''8 (
				cs''8 )
				g'8 (
				f''8 )
				cs''8 (
				g'8 )
				f''8 (
				cs''8 )
				g'8 (
				f''8 )
				cs''8 (
				g'8 )
				f''8 (
				cs''8 )
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				gs'8 (
				fs'8 )
				d''8 (
				gs'8 )
				fs'8 (
				d''8 )
				gs'8 (
				fs'8 )
				d''8 (
				gs'8 )
				fs'8 (
				d''8 )
				gs'8 (
				fs'8 )
				d''8 (
				gs'8 )
				fs'8 (
				d''8 )
				gs'8 (
				fs'8 )
				d''8 (
				gs'8 )
				fs'8 (
				d''8 )
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
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						s8 ^ \markup { repeat randomly until start of next movement }
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
						as'1 :32 -\fermata \ppp
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
						e''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						as'2
						\unHideNotes
						\hideNotes
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
						e''2
						\unHideNotes
						\hideNotes
						r2
						\unHideNotes
						\grace {
							\once \override Rest  #'stencil = #ly:text-interface::print
							\once \override Rest.staff-position = #-2.2
							\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
							r16
						}
						\hideNotes
						as'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "viola_div1" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 1 }
				\set Staff.shortInstrumentName = \markup { Vla.1 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				e'8 \mp \< (
				d'8
				b8 )
				e'8 (
				fs'8 )
				e'8 \mf (
				g'8
				a'8 )
				fs'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				e'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				c'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				c''8 (
				g'8
				c''8 )
				g'8 (
				a'8 )
				g'8 (
				g8 )
				c'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						s8 ^ \markup { repeat randomly until start of next movement }
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
						ds'1 :32 -\fermata \ppp
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
						ds'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "viola_div2" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 2 }
				\set Staff.shortInstrumentName = \markup { Vla.2 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a8 \mp \< (
				b8
				g'8 )
				d'8 (
				g'8 )
				a'8 \mf (
				fs'8
				a'8 )
				b8 -\staccato -\tenuto
				a8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				c'8 -\staccato -\tenuto
				d'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				c'8 -\staccato -\tenuto
				g'8 -\staccato -\tenuto
				a'8 (
				c''8
				g'8 )
				c''8 (
				g'8 )
				f'8 (
				g8 )
				g'8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						s8 ^ \markup { repeat randomly until start of next movement }
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
						cs'1 :32 -\fermata \ppp
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
						cs'2
						\unHideNotes
						\stopStaff
						\override Staff.StaffSymbol #'line-positions = #'()
						\startStaff
					}
					s1 * 3/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "cello_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 1 }
				\set Staff.shortInstrumentName = \markup { Vc.1 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				gs8 \mp \< (
				g8
				e8 )
				g8 (
				cs8 )
				g,8 \mf (
				f,8
				g,8 )
				e8 -\staccato -\tenuto
				d8 -\staccato -\tenuto
				as8 -\staccato -\tenuto
				d8 -\staccato -\tenuto
				c8 -\staccato -\tenuto
				g8 -\staccato -\tenuto
				ds8 -\staccato -\tenuto
				c8 -\staccato -\tenuto
				a,8 (
				as,8
				c8 )
				ds8 (
				d8 )
				c8 (
				f8 )
				g8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
			\context Staff = "cello_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 2 }
				\set Staff.shortInstrumentName = \markup { Vc.2 }
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
				}
				\context Staff {#(set-accidental-style 'modern)}
				a8 \mp \< (
				g8
				a8 )
				g8 (
				d8 )
				c8 \mf (
				a,8
				g,8 )
				d8 -\staccato -\tenuto
				e8 -\staccato -\tenuto
				d8 -\staccato -\tenuto
				g8 -\staccato -\tenuto
				g8 -\staccato -\tenuto
				d8 -\staccato -\tenuto
				c8 -\staccato -\tenuto
				f8 -\staccato -\tenuto
				f,8 (
				c8
				f,8 )
				g,8 (
				d8 )
				ds8 (
				as8 )
				gs8 -\tenuto
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				{
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'modern)}
				\numericTimeSignature
				e''1
				e''1
				e''1
				\bar "||"
				\mark "A"
				\context Staff {#(set-accidental-style 'modern)}
				e''1
				e''1
				e''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				e''1
				e''1
				e''1
				\bar "||"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					{
						e''1
						e''1
						e''1
					}
					s1 * 3
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						e''1
						e''1
						e''1
					}
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				e''1
				e''1
				e''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''1
				f''1
				f''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''1
				fs''1
				fs''1
				\bar "||"
				\mark "C"
				\context Staff {#(set-accidental-style 'modern)}
				g''1
				g''1
				g''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				af'1
				af'1
				af'1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				a'1
				a'1
				a'1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf'1
				bf'1
				bf'1
				\bar "||"
				\mark "D"
				\context Staff {#(set-accidental-style 'modern)}
				b'1
				b'1
				b'1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''1
				c''1
				c''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				cs''1
				cs''1
				cs''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				d''1
				d''1
				d''1
				\bar "||"
				\mark "E"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						d''1
						d''1
						d''1
					}
					s1 * 3
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						d''1
						d''1
						d''1
					}
					s1 * 3
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						d''1
						d''1
						d''1
					}
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				ef''1
				ef''1
				ef''1
				\bar "||"
				\mark "F"
				\context Staff {#(set-accidental-style 'modern)}
				e''1
				e''1
				e''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				f''1
				f''1
				f''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				fs''1
				fs''1
				fs''1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				g''1
				g''1
				g''1
				\bar "||"
				\mark "G"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					{
						g''1
						g''1
						g''1
					}
					s1 * 3
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						g''1
						g''1
						g''1
					}
					s1 * 3
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					{
						g''1
						g''1
						g''1
					}
					s1 * 3
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'modern)}
				\time 4/4
				af'1
				af'1
				af'1
				\bar "||"
				\mark "H"
				\context Staff {#(set-accidental-style 'modern)}
				a'1
				a'1
				a'1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				bf'1
				bf'1
				bf'1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				b'1
				b'1
				b'1
				\bar "||"
				\context Staff {#(set-accidental-style 'modern)}
				c''1
				c''1
				c''1
				\bar "||"
				\mark "I"
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					{
						cs''1
						cs''1
						cs''1
					}
					s1 * 77/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\mark "A"
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
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
					\mark "B"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "C"
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
					\bar "||"
					\mark "D"
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
					\bar "||"
					\mark "E"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "F"
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
					\bar "||"
					\mark "G"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 24/4
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar ";"
				}
				\context Staff {#(set-accidental-style 'modern)}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override Staff.TimeSignature.stencil = ##f
				{
					s1 * 6
					\bar "||"
				}
				\context Staff {#(set-accidental-style 'modern)}
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
					\bar "||"
					\mark "H"
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
					\bar "||"
					\mark "I"
				}
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				{
					\time 125/16
					s1 * 125/16
				}
				\context Staff {#(set-accidental-style 'modern)}
			}
		>>
	>>
}