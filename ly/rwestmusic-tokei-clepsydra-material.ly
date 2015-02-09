% 2015-02-09 11:34

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
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "flute2" {
				\set Staff.instrumentName = \markup { Flute 2 }
				\set Staff.shortInstrumentName = \markup { Fl.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "oboe1" {
				\set Staff.instrumentName = \markup { Oboe 1 }
				\set Staff.shortInstrumentName = \markup { Ob.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "oboe2" {
				\set Staff.instrumentName = \markup { Oboe 2 }
				\set Staff.shortInstrumentName = \markup { Ob.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "oboe3" {
				\set Staff.instrumentName = \markup { Oboe 3 }
				\set Staff.shortInstrumentName = \markup { Ob.3 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "clarinet1" {
				\set Staff.instrumentName = \markup { Clarinet 1 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "clarinet2" {
				\set Staff.instrumentName = \markup { Clarinet 2 in Bb }
				\set Staff.shortInstrumentName = \markup { Cl.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "bassoon1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 1 }
				\set Staff.shortInstrumentName = \markup { Bsn.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "bassoon2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bassoon 2 }
				\set Staff.shortInstrumentName = \markup { Bsn.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
		>>
		\context StaffGroup = "brass" <<
			\context Staff = "horn1" {
				\set Staff.instrumentName = \markup { Horn in F 1 }
				\set Staff.shortInstrumentName = \markup { Hn.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
			}
			\context Staff = "horn2" {
				\set Staff.instrumentName = \markup { Horn in F 2 }
				\set Staff.shortInstrumentName = \markup { Hn.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
			}
			\context Staff = "horn3" {
				\set Staff.instrumentName = \markup { Horn in F 3 }
				\set Staff.shortInstrumentName = \markup { Hn.3 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
			}
			\context Staff = "horn4" {
				\set Staff.instrumentName = \markup { Horn in F 4 }
				\set Staff.shortInstrumentName = \markup { Hn.4 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
			}
			\context Staff = "trumpet1" {
				\set Staff.instrumentName = \markup { Trumpet in C 1 }
				\set Staff.shortInstrumentName = \markup { Tpt.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "trumpet2" {
				\set Staff.instrumentName = \markup { Trumpet in C 2 }
				\set Staff.shortInstrumentName = \markup { Tpt.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "trombone1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 1 }
				\set Staff.shortInstrumentName = \markup { Tbn.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "trombone2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tenor Trombone 2 }
				\set Staff.shortInstrumentName = \markup { Tbn.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "tuba" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Tuba }
				\set Staff.shortInstrumentName = \markup { Tba }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
		>>
		\context StaffGroup = "perc" <<
			\context Staff = "crotales" {
				\set Staff.instrumentName = \markup { Crotales }
				\set Staff.shortInstrumentName = \markup { Cro. }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context RhythmicStaff = "perc1" {
				\set Staff.instrumentName = \markup { Percussion 1 }
				\set Staff.shortInstrumentName = \markup { Perc.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context RhythmicStaff = "perc2" {
				\set Staff.instrumentName = \markup { Percussion 2 }
				\set Staff.shortInstrumentName = \markup { Perc.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "timpani" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Timpani }
				\set Staff.shortInstrumentName = \markup { Timp }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
		>>
		\context StaffGroup = "taiko" <<
			\context RhythmicStaff = "shime" {
				\set Staff.instrumentName = \markup { Shime }
				\set Staff.shortInstrumentName = \markup { Sh. }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context RhythmicStaff = "taiko1" {
				\set Staff.instrumentName = \markup { Taiko 1 }
				\set Staff.shortInstrumentName = \markup { T.1 }
				\tempo 4=116
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
					\time 24/4
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
				}
			}
			\context RhythmicStaff = "taiko2" {
				\set Staff.instrumentName = \markup { Taiko 2 }
				\set Staff.shortInstrumentName = \markup { T.2. }
				\tempo 4=116
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
					\time 24/4
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
				}
			}
		>>
		\context StaffGroup = "strings" <<
			\context Staff = "violinI_div1" {
				\set Staff.instrumentName = \markup { Violin I 1 }
				\set Staff.shortInstrumentName = \markup { Vln.I.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
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
			}
			\context Staff = "violinI_div2" {
				\set Staff.instrumentName = \markup { Violin I 2 }
				\set Staff.shortInstrumentName = \markup { Vln.I.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
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
			}
			\context Staff = "violinII_div1" {
				\set Staff.instrumentName = \markup { Violin II 1 }
				\set Staff.shortInstrumentName = \markup { Vln.II.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
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
			}
			\context Staff = "violinII_div2" {
				\set Staff.instrumentName = \markup { Violin II 2 }
				\set Staff.shortInstrumentName = \markup { Vln.II.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
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
			}
			\context Staff = "viola_div1" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 1 }
				\set Staff.shortInstrumentName = \markup { Vla.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "viola_div2" {
				\clef "alto"
				\set Staff.instrumentName = \markup { Viola 2 }
				\set Staff.shortInstrumentName = \markup { Vla.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "cello_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 1 }
				\set Staff.shortInstrumentName = \markup { Vc.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "cello_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Cello 2 }
				\set Staff.shortInstrumentName = \markup { Vc.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "bass_div1" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 1 }
				\set Staff.shortInstrumentName = \markup { Cb.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "bass_div2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Bass 2 }
				\set Staff.shortInstrumentName = \markup { Cb.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
		>>
		\context StaffGroup = "ref" <<
			\context Staff = "line_1" {
				\set Staff.instrumentName = \markup { Line 1 }
				\set Staff.shortInstrumentName = \markup { Ln.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
			}
			\context Staff = "line_2" {
				\set Staff.instrumentName = \markup { Line 2 }
				\set Staff.shortInstrumentName = \markup { Ln.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "line_3" {
				\set Staff.instrumentName = \markup { Line 3 }
				\set Staff.shortInstrumentName = \markup { Ln.3 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "harmony_1" {
				\set Staff.instrumentName = \markup { Harmony 1 }
				\set Staff.shortInstrumentName = \markup { Har.1 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "harmony_2" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 2 }
				\set Staff.shortInstrumentName = \markup { Har.2 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
			\context Staff = "harmony_3" {
				\clef "bass"
				\set Staff.instrumentName = \markup { Harmony 3 }
				\set Staff.shortInstrumentName = \markup { Har.3 }
				\tempo 4=116
				\context Staff {#(set-accidental-style 'forget)}
				\once \override 
				                            Staff.TimeSignature #'stencil = #(lambda (grob)
				                            (parenthesize-stencil (grob-interpret-markup grob 
				                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
				                            ) 0.1 0.4 0.4 0.1 ))
				\numericTimeSignature
				{
					\time 24/4
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
				}
			}
		>>
	>>
}