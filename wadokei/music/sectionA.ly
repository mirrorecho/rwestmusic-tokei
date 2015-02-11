fluteOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			c'1  \pp  \< (
			b'2.  \mp  \! \>
			d'2  \p  \! )
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
			e'1  \pp  \< (
			c'2.  \mp  \! \>
			b'2  \p  \! )
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
			a'2  \pp  \< (
			d'4  \mp  \! \>
			e'8 )
			cs'4 (
			d'8  \p  \! )
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
		 \bar ";" %%%
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
			fs'2  \pp  \< (
			g'4  \mp  \! \>
			a'8 )
			fs'4 (
			g'8  \p  \! )
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			a'2  \pp  \< (
			fs'1  \mp  \! )
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
		 \bar ";" %%%
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
			g'2  \pp  \< (
			a'1  \mp  \! )
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
		 \bar ";" %%%
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
			fs'1  \pp  \< (
			g'4
			a'8 )
			fs'2  \mp  \!
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
			cs'1  \pp  \< (
			b'4
			a'8 )
			b'2  \mp  \!
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornThreeA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornFourA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
timpaniA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
shimeA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
odaikoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 49/8
		{
			c4 -\accent  \f  _ \markup { don }
			s1
			r1 -\fermata
			s1
		}
		s1 * 23/8
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 49/8
		{
			c4 -\accent  \f  _ \markup { don }
			s1
			r1 -\fermata
			s1
		}
		s1 * 23/8
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassA = {  
\calliopeRehearsalMark A 
 \tempo 4. = 120\numericTimeSignature 
 \context Staff {#(set-accidental-style 'modern)} 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
		 \bar ";" %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
