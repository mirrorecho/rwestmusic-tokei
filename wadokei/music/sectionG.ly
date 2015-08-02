fluteOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
				gs'8  \p %%%
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
		 \bar ";" %%%
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
				fs'8  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 56/8
		{
			s4
			\times 4/5 {
				f'8  \pp  \< (
				b8
				cs'8 )
				b8 (
				f'8 ~
			}
			f'4 )
			b2.  \mf  \!
			cs'4 (
			b8 )
			f'4 (
			b8 )
			r4
			cs'4 (
			b8 )
			s4
			r1 -\fermata
		}
		s1 * 21/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		{
			s4
			\times 4/5 {
				c'8  \pp  \< (
				d'8
				fs8 )
				b8 (
				d'8 ~
			}
			d'4 )
			c'2.  \mf  \!
			d'4 (
			fs8 )
			b4 (
			d'8 )
			r4
			c'4 (
			d'8 )
			s4
			r1 -\fermata
		}
		s1 * 21/8
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			f2 -\fermata  \p %%%
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
		 \bar ";" %%%
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
			c2 -\fermata  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
				f,2  \p  (
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
		 \bar ";" %%%
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
				c,2  \p  (
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornThreeG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornFourG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
timpaniG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
shimeG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
odaikoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassG = {  
\calliopeRehearsalMark G 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
