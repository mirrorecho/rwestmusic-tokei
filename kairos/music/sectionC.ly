fluteOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	cs'''1  \mp %%%
	cs'''8 (
	d'''4. ~
	d'''2 )
	r4
	r8
	cs'''8 ~ (
	cs'''4
	cs'''4
	d'''2. )
	cs'''4 (
	cs'''4.
	d'''8 ~
	d'''4
	fs'''4
	cs'''2. )
	cs'''8 (
	d'''8 ~
	d'''4. )
	cs'''8 (
	fs'''4
	cs'''4 )
	fs'''2.
	cs'''8 (
	d'''8 )
	r2
	cs'''2
	e''4. (
	cs'''8 ~
	cs'''2 )
	r4
	r8
	e''8 ~ (
	e''2 ~
	e''4.
	fs''8 ~
	fs''2 ~
	fs''2. )
	d''4 (
	e''2. )
	e''4 (
	cs'''4. )
	e''8 ~ (
	e''8
	cs'''4. )
	fs''4 (
	cs'''8
	d'''8
	e''4 )
	e''4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	r8
	f''4.  \pp  ~ \<
	f''2  \p  ~ \! \>
	f''1  \pp  \!
	r8
	f''4.  \pp  ~ \<
	f''2  \p  ~ \! \>
	f''1  \pp  \!
	R1
	R1
	R1
	R1
	r8
	as''4.  \pp  ~ \<
	as''2  \p  ~ \! \>
	as''1  \pp  \!
	r8
	as''4.  \pp  ~ \<
	as''2  \p  ~ \! \>
	as''1  \pp  \!
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	r8
	gs'4.  \pp  ~ \<
	gs'2  \p  ~ \! \>
	gs'1  \pp  \!
	r8
	gs'4.  \pp  ~ \<
	gs'2  \p  ~ \! \>
	gs'1  \pp  \!
	R1
	R1
	R1
	R1
	r8
	cs''4.  \pp  ~ \<
	cs''2  \p  ~ \! \>
	cs''1  \pp  \!
	r8
	cs''4.  \pp  ~ \<
	cs''2  \p  ~ \! \>
	cs''1  \pp  \!
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	r8
	e''4.  \pp  ~ \<
	e''2  \p  ~ \! \>
	e''1  \pp  \!
	r8
	e''4.  \pp  ~ \<
	e''2  \p  ~ \! \>
	e''1  \pp  \!
	R1
	R1
	R1
	R1
	r8
	e''4.  \pp  ~ \<
	e''2  \p  ~ \! \>
	e''1  \pp  \!
	r8
	e''4.  \pp  ~ \<
	e''2  \p  ~ \! \>
	e''1  \pp  \!
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	r8
	fs''4.  \pp  ~ \<
	fs''2  \p  ~ \! \>
	fs''1  \pp  \!
	r8
	fs''4.  \pp  ~ \<
	fs''2  \p  ~ \! \>
	fs''1  \pp  \!
	R1
	R1
	R1
	R1
	r8
	fs''4.  \pp  ~ \<
	fs''2  \p  ~ \! \>
	fs''1  \pp  \!
	r8
	fs''4.  \pp  ~ \<
	fs''2  \p  ~ \! \>
	fs''1  \pp  \!
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	r8
	cs''4.  \pp  ~ \<
	cs''2  \p  ~ \! \>
	cs''1  \pp  \!
	r8
	cs''4.  \pp  ~ \<
	cs''2  \p  ~ \! \>
	cs''1  \pp  \!
	R1
	R1
	R1
	R1
	r8
	fs''4.  \pp  ~ \<
	fs''2  \p  ~ \! \>
	fs''1  \pp  \!
	r8
	fs''4.  \pp  ~ \<
	fs''2  \p  ~ \! \>
	fs''1  \pp  \!
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	r8
	d''4.  \pp  ~ \<
	d''2  \p  ~ \! \>
	d''1  \pp  \!
	r8
	d''4.  \pp  ~ \<
	d''2  \p  ~ \! \>
	d''1  \pp  \!
	R1
	R1
	R1
	R1
	r8
	d''4.  \pp  ~ \<
	d''2  \p  ~ \! \>
	d''1  \pp  \!
	r8
	d''4.  \pp  ~ \<
	d''2  \p  ~ \! \>
	d''1  \pp  \!
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	R1
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	R1
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	R1
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	r4
	d'2.  \pp  ~ \<
	d'2  \p  \!
	r2
	R1
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	r4
	d'2.  \pp  ~ \<
	d'2  \p  \!
	r2
	R1
	r4
	d'2.  \pp  ~ \<
	d'2  \p  \!
	r2
	R1
	r4
	cs'2.  \pp  ~ \<
	cs'2  \p  \!
	r2
	r4
	d'2.  \pp  ~ \<
	d'2  \p  \!
	r2
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornThreeC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornFourC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
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
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesC = {  
\calliopeRehearsalMark C 
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
			cs'2 -\fermata  \pp %%%
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percOneC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percTwoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
timpaniC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
odaikoC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneC = {  
\calliopeRehearsalMark C 
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
			c4
				^ \markup { repeat }
				_ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			r2 -\fermata
			s1
			s1
			s1
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
	 \time 4/4 %%%
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoC = {  
\calliopeRehearsalMark C 
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
			c4
				^ \markup { repeat }
				_ \markup { dan }
			c8 _ \markup { da }
			c8 _ \markup { da }
			r2 -\fermata
			s1
			s1
			s1
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
			c4
				^ \markup { repeat }
				_ \markup { dan }
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
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
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
	 \time 4/4 %%%
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
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { dan }
	c8 _ \markup { da }
	c8 _ \markup { da }
	c4 _ \markup { ka }
	r4
	R1
	R1
	R1
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIC = {  
\calliopeRehearsalMark C 
 {
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
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
					cs'''1 -\fermata \pp ^ \markup { hold until D }
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
			\set Staff.instrumentName = \markup { Violin I.1 }
			\set Staff.shortInstrumentName = \markup { vln.I.1 }
			\set Staff.alignAboveContext = #"violinI"
			e''4. \mp
			e''8 ~
			e''4
			e''4 -\tenuto
			e''4.
			e''8 ~
			e''4
			e''4 -\tenuto
			e''4.
			e''8 ~
			e''4
			e''4 -\tenuto
			e''4.
			e''8 ~
			e''4
			e''4 -\tenuto
			e''4.
			e''8 ~
			e''4
			e''4 -\tenuto
			e''4.
			e''8 ~
			e''4
			e''4 -\tenuto
			e''4.
			e''8 ~
			e''4
			e''4 -\tenuto
			e''4.
			e''8 ~
			e''4
			e''4 -\tenuto
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
			\set Staff.instrumentName = \markup { Violin I.2 }
			\set Staff.shortInstrumentName = \markup { vln.I.2 }
			\set Staff.alignAboveContext = #"violinI"
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
			\set Staff.instrumentName = \markup { Violin I.2 }
			\set Staff.shortInstrumentName = \markup { vln.I.2 }
			\set Staff.alignAboveContext = #"violinI"
			d''4. \mp
			d''8 ~
			d''4
			d''4 -\tenuto
			d''4.
			d''8 ~
			d''4
			d''4 -\tenuto
			d''4.
			d''8 ~
			d''4
			d''4 -\tenuto
			d''4.
			d''8 ~
			d''4
			d''4 -\tenuto
			d''4.
			d''8 ~
			d''4
			d''4 -\tenuto
			d''4.
			d''8 ~
			d''4
			d''4 -\tenuto
			d''4.
			d''8 ~
			d''4
			d''4 -\tenuto
			d''4.
			d''8 ~
			d''4
			d''4 -\tenuto
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
			\set Staff.instrumentName = \markup { Violin I.3 }
			\set Staff.shortInstrumentName = \markup { vln.I.3 }
			\set Staff.alignAboveContext = #"violinI"
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
			\set Staff.instrumentName = \markup { Violin I.3 }
			\set Staff.shortInstrumentName = \markup { vln.I.3 }
			\set Staff.alignAboveContext = #"violinI"
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
			\set Staff.instrumentName = \markup { Violin I.4 }
			\set Staff.shortInstrumentName = \markup { vln.I.4 }
			\set Staff.alignAboveContext = #"violinI"
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
			\set Staff.instrumentName = \markup { Violin I.4 }
			\set Staff.shortInstrumentName = \markup { vln.I.4 }
			\set Staff.alignAboveContext = #"violinI"
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
			\set Staff.instrumentName = \markup { Violin I.5 }
			\set Staff.shortInstrumentName = \markup { vln.I.5 }
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
					cs''2  \ppp  (
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
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIC = {  
\calliopeRehearsalMark C 
 {
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	<<
		\context Staff = "violinII_1" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin II.1 }
			\set Staff.shortInstrumentName = \markup { vln.II.1 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.1 }
			\set Staff.shortInstrumentName = \markup { vln.II.1 }
			\set Staff.alignAboveContext = #"violinII"
			\once \override Staff.TimeSignature.stencil = ##f
			{
				{
					cs''1
					cs''8 (
					d''4. ~
					d''2 )
					r4
					r8
					cs''8 ~ (
					cs''4
					d''4
					cs''2. )
					cs''4 (
					d''4.
					cs''8 ~
					cs''4
					d''4
					cs''2. )
					cs''8 (
					d''8 ~
					d''4. )
					cs''8 (
					d''4
					cs''4 )
					cs''1 -\fermata
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin II.1 }
			\set Staff.shortInstrumentName = \markup { vln.II.1 }
			\set Staff.alignAboveContext = #"violinII"
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
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin II.1 }
			\set Staff.shortInstrumentName = \markup { vln.II.1 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.1 }
			\set Staff.shortInstrumentName = \markup { vln.II.1 }
			\set Staff.alignAboveContext = #"violinII"
			\time 4/4
			R1
			cs'4. \p
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			\set Staff.instrumentName = \markup { Violin II.1 }
			\set Staff.shortInstrumentName = \markup { vln.II.1 }
			\set Staff.alignAboveContext = #"violinII"
			cs''4. \mp
			cs''8 ~
			cs''4
			cs''4 -\tenuto
			cs''4.
			cs''8 ~
			cs''4
			cs''4 -\tenuto
			cs''4.
			cs''8 ~
			cs''4
			cs''4 -\tenuto
			cs''4.
			cs''8 ~
			cs''4
			cs''4 -\tenuto
			cs''4.
			cs''8 ~
			cs''4
			cs''4 -\tenuto
			cs''4.
			cs''8 ~
			cs''4
			cs''4 -\tenuto
			cs''4.
			cs''8 ~
			cs''4
			cs''4 -\tenuto
			cs''4.
			cs''8 ~
			cs''4
			cs''4 -\tenuto
		}
		\context Staff = "violinII_2" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin II.2 }
			\set Staff.shortInstrumentName = \markup { vln.II.2 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.2 }
			\set Staff.shortInstrumentName = \markup { vln.II.2 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.2 }
			\set Staff.shortInstrumentName = \markup { vln.II.2 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.2 }
			\set Staff.shortInstrumentName = \markup { vln.II.2 }
			\set Staff.alignAboveContext = #"violinII"
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
					fs''4. )
					r8
					\times 2/3 {
						fs''4 (
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
					\hideNotes
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
			\set Staff.instrumentName = \markup { Violin II.2 }
			\set Staff.shortInstrumentName = \markup { vln.II.2 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.2 }
			\set Staff.shortInstrumentName = \markup { vln.II.2 }
			\set Staff.alignAboveContext = #"violinII"
			fs'4. \mp
			fs'8 ~
			fs'4
			fs'4 -\tenuto
			fs'4.
			fs'8 ~
			fs'4
			fs'4 -\tenuto
			fs'4.
			fs'8 ~
			fs'4
			fs'4 -\tenuto
			fs'4.
			fs'8 ~
			fs'4
			fs'4 -\tenuto
			fs'4.
			fs'8 ~
			fs'4
			fs'4 -\tenuto
			fs'4.
			fs'8 ~
			fs'4
			fs'4 -\tenuto
			fs'4.
			fs'8 ~
			fs'4
			fs'4 -\tenuto
			fs'4.
			fs'8 ~
			fs'4
			fs'4 -\tenuto
		}
		\context Staff = "violinII_3" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin II.3 }
			\set Staff.shortInstrumentName = \markup { vln.II.3 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.3 }
			\set Staff.shortInstrumentName = \markup { vln.II.3 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.3 }
			\set Staff.shortInstrumentName = \markup { vln.II.3 }
			\set Staff.alignAboveContext = #"violinII"
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
					fs''4. )
					r8
					\times 2/3 {
						fs''4 (
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
					\hideNotes
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
			\set Staff.instrumentName = \markup { Violin II.3 }
			\set Staff.shortInstrumentName = \markup { vln.II.3 }
			\set Staff.alignAboveContext = #"violinII"
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
					d''2. -\fermata
					\times 4/5 {
						cs''2. (
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
					\hideNotes
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
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
			\set Staff.instrumentName = \markup { Violin II.3 }
			\set Staff.shortInstrumentName = \markup { vln.II.3 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.3 }
			\set Staff.shortInstrumentName = \markup { vln.II.3 }
			\set Staff.alignAboveContext = #"violinII"
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
		\context Staff = "violinII_4" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin II.4 }
			\set Staff.shortInstrumentName = \markup { vln.II.4 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.4 }
			\set Staff.shortInstrumentName = \markup { vln.II.4 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.4 }
			\set Staff.shortInstrumentName = \markup { vln.II.4 }
			\set Staff.alignAboveContext = #"violinII"
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
					d''2. -\fermata
					\times 4/5 {
						cs''2. (
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
					\hideNotes
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
					\stopStaff
					\override Staff.StaffSymbol #'line-positions = #'()
					\startStaff
				}
			}
			\context Staff {#(set-accidental-style 'modern)}
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Violin II.4 }
			\set Staff.shortInstrumentName = \markup { vln.II.4 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.4 }
			\set Staff.shortInstrumentName = \markup { vln.II.4 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.4 }
			\set Staff.shortInstrumentName = \markup { vln.II.4 }
			\set Staff.alignAboveContext = #"violinII"
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
			\set Staff.instrumentName = \markup { Violin II.5 }
			\set Staff.shortInstrumentName = \markup { vln.II.5 }
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
					cs''2  \ppp  (
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
			\set Staff.instrumentName = \markup { Violin II.5 }
			\set Staff.shortInstrumentName = \markup { vln.II.5 }
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
			\set Staff.instrumentName = \markup { Violin II.5 }
			\set Staff.shortInstrumentName = \markup { vln.II.5 }
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
			\set Staff.instrumentName = \markup { Violin II.5 }
			\set Staff.shortInstrumentName = \markup { vln.II.5 }
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
			\set Staff.instrumentName = \markup { Violin II.5 }
			\set Staff.shortInstrumentName = \markup { vln.II.5 }
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
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaC = {  
\calliopeRehearsalMark C 
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
	\once \override Staff.TimeSignature.stencil = ##f
	<<
		\context Staff = "viola_1" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.1 }
			\set Staff.shortInstrumentName = \markup { vla.1 }
			\set Staff.alignAboveContext = #"viola"
			\once \override Staff.TimeSignature.stencil = ##f
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
			\set Staff.instrumentName = \markup { Viola.1 }
			\set Staff.shortInstrumentName = \markup { vla.1 }
			\set Staff.alignAboveContext = #"viola"
			\time 4/4
			R1
			fs4. \p
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			\set Staff.instrumentName = \markup { Viola.1 }
			\set Staff.shortInstrumentName = \markup { vla.1 }
			\set Staff.alignAboveContext = #"viola"
			e'4. \mp
			e'8 ~
			e'4
			e'4 -\tenuto
			e'4.
			e'8 ~
			e'4
			e'4 -\tenuto
			e'4.
			e'8 ~
			e'4
			e'4 -\tenuto
			e'4.
			e'8 ~
			e'4
			e'4 -\tenuto
			e'4.
			e'8 ~
			e'4
			e'4 -\tenuto
			e'4.
			e'8 ~
			e'4
			e'4 -\tenuto
			e'4.
			e'8 ~
			e'4
			e'4 -\tenuto
			e'4.
			e'8 ~
			e'4
			e'4 -\tenuto
		}
		\context Staff = "viola_2" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.2 }
			\set Staff.shortInstrumentName = \markup { vla.2 }
			\set Staff.alignAboveContext = #"viola"
			\once \override Staff.TimeSignature.stencil = ##f
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
			\set Staff.instrumentName = \markup { Viola.2 }
			\set Staff.shortInstrumentName = \markup { vla.2 }
			\set Staff.alignAboveContext = #"viola"
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
			\set Staff.instrumentName = \markup { Viola.2 }
			\set Staff.shortInstrumentName = \markup { vla.2 }
			\set Staff.alignAboveContext = #"viola"
			cs'4. \mp
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
			cs'4.
			cs'8 ~
			cs'4
			cs'4 -\tenuto
		}
		\context Staff = "viola_3" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Viola.3 }
			\set Staff.shortInstrumentName = \markup { vla.3 }
			\set Staff.alignAboveContext = #"viola"
			\once \override Staff.TimeSignature.stencil = ##f
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
			\set Staff.instrumentName = \markup { Viola.3 }
			\set Staff.shortInstrumentName = \markup { vla.3 }
			\set Staff.alignAboveContext = #"viola"
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
			\set Staff.instrumentName = \markup { Viola.3 }
			\set Staff.shortInstrumentName = \markup { vla.3 }
			\set Staff.alignAboveContext = #"viola"
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
			\set Staff.instrumentName = \markup { Viola.4 }
			\set Staff.shortInstrumentName = \markup { vla.4 }
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			\set Staff.instrumentName = \markup { Viola.4 }
			\set Staff.shortInstrumentName = \markup { vla.4 }
			R1
			R1
			R1
			R1
			R1
			R1
			R1
			R1
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloC = {  
\calliopeRehearsalMark C 
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
			\set Staff.instrumentName = \markup { Cello.1 }
			\set Staff.shortInstrumentName = \markup { vc.1 }
			\set Staff.alignAboveContext = #"cello"
			\time 4/4
			R1
			cs4. \p
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			\set Staff.instrumentName = \markup { Cello.1 }
			\set Staff.shortInstrumentName = \markup { vc.1 }
			\set Staff.alignAboveContext = #"cello"
			fs4. \mp
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
			fs4.
			fs8 ~
			fs4
			fs4 -\tenuto
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
			\set Staff.instrumentName = \markup { Cello.2 }
			\set Staff.shortInstrumentName = \markup { vc.2 }
			\set Staff.alignAboveContext = #"cello"
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
			cs'4. -\fermata
			\times 2/3 {
				d'4 (
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
			\hideNotes
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
			\set Staff.instrumentName = \markup { Cello.2 }
			\set Staff.shortInstrumentName = \markup { vc.2 }
			\set Staff.alignAboveContext = #"cello"
			cs4. \mp
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
			cs4.
			cs8 ~
			cs4
			cs4 -\tenuto
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
			\set Staff.instrumentName = \markup { Cello.3 }
			\set Staff.shortInstrumentName = \markup { vc.3 }
			\set Staff.alignAboveContext = #"cello"
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
			cs'4. -\fermata
			\times 2/3 {
				d'4 (
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
			\hideNotes
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
			\set Staff.instrumentName = \markup { Cello.3 }
			\set Staff.shortInstrumentName = \markup { vc.3 }
			\set Staff.alignAboveContext = #"cello"
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
			cs'4. -\fermata
			\times 2/3 {
				d'4 (
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
			\hideNotes
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
			\set Staff.instrumentName = \markup { Cello.4 }
			\set Staff.shortInstrumentName = \markup { vc.4 }
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
			cs'4. -\fermata
			\times 2/3 {
				fs4 (
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
			\hideNotes
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
			\set Staff.instrumentName = \markup { Cello.4 }
			\set Staff.shortInstrumentName = \markup { vc.4 }
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
			cs'4. -\fermata
			\times 2/3 {
				d'4 (
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
			\hideNotes
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
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassC = {  
\calliopeRehearsalMark C 
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
	 \time 4/4 %%%
	r4
	cs2.  \pp  ~ \<
	cs2  \p  \!
	r2
	R1
	r4
	cs2.  \pp  ~ \<
	cs2  \p  \!
	r2
	r4
	cs2.  \pp  ~ \<
	cs2  \p  \!
	r2
	R1
	r4
	fs2.  \pp  ~ \<
	fs2  \p  \!
	r2
	R1
	r4
	fs2.  \pp  ~ \<
	fs2  \p  \!
	r2
	r4
	fs2.  \pp  ~ \<
	fs2  \p  \!
	r2
	R1
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
