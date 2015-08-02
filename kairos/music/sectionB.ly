fluteOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
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
			fs''2. -\fermata
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
			fs''2. -\fermata
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
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
			s4
			r2
			cs''4 (
			d''2 )
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
			cs''2
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
			r2
			cs''4 (
			d''2 )
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
			cs''2
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
 
 
oboeOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s8
			\afterGrace
			cs'1 -\fermata
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
			cs'4.
			\unHideNotes
			\hideNotes
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
			cs'2
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
 
 
bassoonTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s8
			\afterGrace
			d'1 -\fermata
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
			cs'4.
			\unHideNotes
			\hideNotes
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
			\hideNotes
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
			d'2
			\unHideNotes
			\hideNotes
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
			d'2
			\unHideNotes
			\hideNotes
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornThreeB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornFourB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		{
			cs'1  \p  ^ \markup { bucket mute }
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
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
			s4 ^ \markup { bowed, repeat }
			cs'2 -\fermata
			\afterGrace
			gs''2 -\fermata
			{
				\hideNotes
				r32
				\unHideNotes
				\stopStaff
				\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
				\startStaff
			}
			\hideNotes
			r4
			\unHideNotes
			\grace {
				\once \override Rest  #'stencil = #ly:text-interface::print
				\once \override Rest.staff-position = #-2.2
				\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
				r16
			}
			\hideNotes
			cs'4
			\unHideNotes
			\hideNotes
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
			cs'2
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
			cs'2 -\fermata
			\afterGrace
			gs''2 -\fermata
			{
				\hideNotes
				r32
				\unHideNotes
				\stopStaff
				\override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
				\startStaff
			}
			\hideNotes
			r4
			\unHideNotes
			\grace {
				\once \override Rest  #'stencil = #ly:text-interface::print
				\once \override Rest.staff-position = #-2.2
				\once \override Rest #'text = \markup { \fontsize #6 { \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } } }
				r16
			}
			\hideNotes
			cs'4
			\unHideNotes
			\hideNotes
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
			cs'2
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
 
 
percOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
timpaniB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
odaikoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		{
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
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		{
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
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaB = {  
\calliopeRehearsalMark B 
 {
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	<<
		\context Staff = "viola_1" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.1 }
			\set Staff.shortInstrumentName = \markup { vla.1 }
			\set Staff.alignAboveContext = #"viola"
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
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
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.1 }
			\set Staff.shortInstrumentName = \markup { vla.1 }
			\set Staff.alignAboveContext = #"viola"
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					r2
					cs''2
					cs'4. (
					cs''8 ~
					cs''2 )
					r4
					r8
					cs'8 ~ (
					cs'2 ~
					cs'4.
					fs'8 ~
					fs'2 ~
					fs'2. )
					d'4 (
					cs'2. )
					cs'4 (
					cs''4. )
					cs'8 ~ (
					cs'8
					cs''4. )
					fs'4 (
					cs''8
					d''8
					cs'4 )
					cs'4
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
		}
		\context Staff = "viola_2" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.2 }
			\set Staff.shortInstrumentName = \markup { vla.2 }
			\set Staff.alignAboveContext = #"viola"
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
					r4
					fs''8 (
					cs''1 )
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
			\set Staff.instrumentName = \markup { Viola.2 }
			\set Staff.shortInstrumentName = \markup { vla.2 }
			\set Staff.alignAboveContext = #"viola"
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
					cs''2 (
					d''4. )
					r8
					\times 2/3 {
						cs''4 (
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
		}
		\context Staff = "viola_3" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.3 }
			\set Staff.shortInstrumentName = \markup { vla.3 }
			\set Staff.alignAboveContext = #"viola"
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
					cs''2 (
					d''4. )
					r8
					\times 2/3 {
						cs''4 (
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
			\set Staff.instrumentName = \markup { Viola.3 }
			\set Staff.shortInstrumentName = \markup { vla.3 }
			\set Staff.alignAboveContext = #"viola"
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
						fs''2. (
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
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.4 }
			\set Staff.shortInstrumentName = \markup { vla.4 }
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
					s1
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
	\once \override Staff.TimeSignature.stencil = ##f
	<<
		\context Staff = "cello_1" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Cello.1 }
			\set Staff.shortInstrumentName = \markup { vc.1 }
			\set Staff.alignAboveContext = #"cello"
			\once \override Staff.TimeSignature.stencil = ##f
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
					cs'2. -\fermata \ppp
					\times 4/5 {
						d'2. (
						\afterGrace
						cs'2 )
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
					d'2
					\unHideNotes
					\hideNotes
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
					cs'2
					\unHideNotes
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
		}
		\context Staff = "cello_2" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Cello.2 }
			\set Staff.shortInstrumentName = \markup { vc.2 }
			\set Staff.alignAboveContext = #"cello"
			\once \override Staff.TimeSignature.stencil = ##f
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
					cs'4 \ppp (
					d'2 )
					cs'4
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
					d'2
					\unHideNotes
					\hideNotes
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
					d'2
					\unHideNotes
					\hideNotes
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
					d'2
					\unHideNotes
					\hideNotes
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
			}
			\context Staff {#(set-accidental-style 'modern)}
		}
		\context Staff = "cello_3" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Cello.3 }
			\set Staff.shortInstrumentName = \markup { vc.3 }
			\set Staff.alignAboveContext = #"cello"
			\once \override Staff.TimeSignature.stencil = ##f
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
					cs'8 \ppp (
					fs1 )
					cs'4
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
					d'2
					\unHideNotes
					\hideNotes
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
					d'2
					\unHideNotes
					\hideNotes
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
			}
			\context Staff {#(set-accidental-style 'modern)}
		}
		{
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Cello.4 }
			\set Staff.shortInstrumentName = \markup { vc.4 }
			\once \override Staff.TimeSignature.stencil = ##f
			{
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
					cs'2  \ppp  (
					d'4. )
					r8
					\times 2/3 {
						fs4 (
						d'2 -\fermata )
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
					d'2
					\unHideNotes
					\hideNotes
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
					d'2
					\unHideNotes
					\hideNotes
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
					d'2
					\unHideNotes
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassB = {  
\calliopeRehearsalMark B 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
			s8
			\afterGrace
			cs'1 -\fermata  \ppp %%%
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
			cs'4.
			\unHideNotes
			\hideNotes
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
			cs'2
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
 
 
