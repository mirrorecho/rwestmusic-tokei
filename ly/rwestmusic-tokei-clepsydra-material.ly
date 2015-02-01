% 2015-01-31 21:08

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
	\context Score = "clepsydra-material" \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		\override StaffSymbol #'thickness = #0.5
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 8) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\context Staff = "flute1" {
			\set Staff.instrumentName = \markup { Flute 1 }
			\set Staff.shortInstrumentName = \markup { Fl.1 }
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			R1
			R1
			cs''2. \pp ~ \<
			cs''4
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			R1
			R1
			bf'2. \pp ~ \<
			bf'4
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			R1
			R1
			bf'2. \pp ~ \<
			bf'4
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			R1
			R1
			f'2. \pp ~ \<
			f'4
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			R1
			R1
			a'2. \pp ~ \<
			a'4
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			R1
			R1
			fs'2. \pp ~ \<
			fs'4
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			R1
			R1
			fs'2. \pp ~ \<
			fs'4
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			a1 \p ~ \<
			a1 ~
			a1 \mf
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			a1 \p ~ \<
			a1 ~
			a1 \mf
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			e1 \p ~ \< (
			e1
			f1 \mf )
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			fs1 \p ~ \< (
			fs1
			g1 \mf )
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			R1
			bf1 \p
			\bar "||"
			r2
			bf2 \< (
			ef'1 )
			df'1 \mf
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			R1
			f1 \p
			\bar "||"
			r2
			f2 \< (
			af1 )
			b1 \mf
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			R1
			bf1 \p
			\bar "||"
			r2
			bf2 \< (
			ef'1 )
			gf1 \mf
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			R1
			R1
			f1 \p
			\bar "||"
			r2
			f2 \< (
			af1 )
			gf1 \mf
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			r4
			f'8 \p (
			ef'8
			d'2 )
			bf'4 -\tenuto \<
			ef'4 -\tenuto
			af'8 (
			ef''4. \mp )
			R1
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			g''8 (
			a''4.
			e''2 )
			d''4 (
			c''2 )
			bf'4 ~ (
			bf'4.
			f''8 ~
			f''4 )
			r4
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { don }
			r4
			r4
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { do }
			\bar "||"
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
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { don }
			r4
			r4
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { do }
			\bar "||"
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
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { don }
			r4
			r4
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { do }
			\bar "||"
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { don }
			r4
			r2
			R1
			R1
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { don }
			r4
			r2
			R1
			R1
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			c8 _ \markup { do }
			c8 _ \markup { don }
			r4 ^ \markup { KATA }
			r2
			R1
			c8 _ \markup { do }
			c8 _ \markup { don }
			r4 ^ \markup { KATA }
			r2
			\bar "||"
			c8 _ \markup { do }
			c8 _ \markup { don }
			r4 ^ \markup { KATA }
			r2
			R1
			c8 _ \markup { do }
			c8 _ \markup { don }
			r4 ^ \markup { KATA }
			r2
			\bar "||"
			c8 _ \markup { do }
			c8 _ \markup { don }
			r4 ^ \markup { KATA }
			r2
			R1
			c8 _ \markup { do }
			c8 _ \markup { don }
			r4 ^ \markup { KATA }
			r2
			\bar "||"
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { don }
			r4
			r2
			R1
			R1
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			c8 -\accent _ \markup { do }
			c8 -\accent _ \markup { don }
			r4
			r2
			R1
			R1
			\bar "||"
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
		\context Staff = "violinI_div1" {
			\set Staff.instrumentName = \markup { Violin I 1 }
			\set Staff.shortInstrumentName = \markup { Vln.I.1 }
			\numericTimeSignature
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
		\context Staff = "violinI_div2" {
			\set Staff.instrumentName = \markup { Violin I 2 }
			\set Staff.shortInstrumentName = \markup { Vln.I.2 }
			\numericTimeSignature
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
		\context Staff = "violinII_div1" {
			\set Staff.instrumentName = \markup { Violin II 1 }
			\set Staff.shortInstrumentName = \markup { Vln.II.1 }
			\numericTimeSignature
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			e''4.
			b'8 ~
			b'4
			e''4 ~
			e''8
			b'4.
			e''4.
			b'8 ~
			b'4
			e''4 ~
			e''8
			b'4.
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
		\context Staff = "violinII_div2" {
			\set Staff.instrumentName = \markup { Violin II 2 }
			\set Staff.shortInstrumentName = \markup { Vln.II.2 }
			\numericTimeSignature
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
			a''1
			a''1
			gs''4. (
			a''8 ~
			a''2 )
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			e''4.
			b'8 ~
			b'4
			e''4 ~
			e''8
			b'4.
			e''4.
			b'8 ~
			b'4
			e''4 ~
			e''8
			b'4.
			\bar "||"
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
		\context Staff = "viola_div1" {
			\set Staff.instrumentName = \markup { Viola 1 }
			\set Staff.shortInstrumentName = \markup { Vla.1 }
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			\set Staff.instrumentName = \markup { Viola 2 }
			\set Staff.shortInstrumentName = \markup { Vla.2 }
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
			\numericTimeSignature
			e''1
			e''1
			e''1
			\bar "||"
			e''1
			e''1
			e''1
			\bar "||"
			e''1
			e''1
			e''1
			\bar "||"
			e''1
			e''1
			e''1
			\bar "||"
			e''1
			e''1
			e''1
			\bar "||"
			e''1
			e''1
			e''1
			\bar "||"
			f''1
			f''1
			f''1
			\bar "||"
			fs''1
			fs''1
			fs''1
			\bar "||"
			g''1
			g''1
			g''1
			\bar "||"
			af''1
			af''1
			af''1
			\bar "||"
			a''1
			a''1
			a''1
			\bar "||"
			bf''1
			bf''1
			bf''1
			\bar "||"
			b''1
			b''1
			b''1
			\bar "||"
			c'''1
			c'''1
			c'''1
			\bar "||"
			cs'''1
			cs'''1
			cs'''1
			\bar "||"
			d'''1
			d'''1
			d'''1
		}
		\context Staff = "harmony_2" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Harmony 2 }
			\set Staff.shortInstrumentName = \markup { Har.2 }
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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
		\context RhythmicStaff = "dummy" {
			\set Staff.instrumentName = \markup { . }
			\set Staff.shortInstrumentName = \markup { . }
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
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
			{
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				s1 * 1
				\bar "||"
			}
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