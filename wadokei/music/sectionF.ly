fluteOneF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeOneF = {  
\calliopeRehearsalMark F 
 {
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
			a''1  \ppp  ~ \<
			a''1 -\fermata  \mp  \!
			r4
			s4
		}
		s1 * 19/8
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoF = {  
\calliopeRehearsalMark F 
 {
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
			gs''1  \ppp  ~ \<
			gs''1 -\fermata  \mp  \!
			r4
			s4
		}
		s1 * 19/8
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeF = {  
\calliopeRehearsalMark F 
 {
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
			cs''1  \ppp  ~ \<
			cs''1 -\fermata  \mp  \!
			r4
			s4
		}
		s1 * 19/8
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
				gs''8  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
			gs2 -\fermata  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonTwoF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
				cs,2  \p  (
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornOneF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornTwoF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornThreeF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornFourF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetOneF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetTwoF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneOneF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percOneF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percTwoF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
timpaniF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
shimeF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
odaikoF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoF = {  
\calliopeRehearsalMark F 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloF = {  
\calliopeRehearsalMark F 
 {
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	<<
		\context Staff = "cello_s" {
			\context Staff {#(set-accidental-style 'forget)}
			\set Staff.instrumentName = \markup { Sollo Cello }
			\set Staff.shortInstrumentName = \markup { s.vc. }
			\set Staff.alignAboveContext = #"cello"
			\once \override 
			                            Staff.TimeSignature #'stencil = #(lambda (grob)
			                            (parenthesize-stencil (grob-interpret-markup grob 
			                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
			                            ) 0.1 0.4 0.4 0.1 ))
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
				\bar ";"
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
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassF = {  
\calliopeRehearsalMark F 
 {
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
		 \bar ";" %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
