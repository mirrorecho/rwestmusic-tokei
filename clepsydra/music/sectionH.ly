fluteOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoH = {  
\calliopeRehearsalMark H 
 {
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
				d'4  \p  ( ^ \markup { repeat slowing down }
				e'1 )
			}
			d'2 -\fermata
			c''16 (
			b'4
			\afterGrace
			d'2. )
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
			c''2
			\unHideNotes
			\hideNotes
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
			\hideNotes
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
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornThreeH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornFourH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
timpaniH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
shimeH = {  
\calliopeRehearsalMark H 
 {
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneH = {  
\calliopeRehearsalMark H 
 {
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
			c8  \mp  _ \markup { da }
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoH = {  
\calliopeRehearsalMark H 
 {
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
			c8  \mp  _ \markup { da }
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIDivOneH = {  
\calliopeRehearsalMark H 
 {
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
			e''1 :32 -\fermata  \ppp %%%
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
			e''2
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
 
 
violinIDivTwoH = {  
\calliopeRehearsalMark H 
 {
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
			d''1 :32 -\fermata  \ppp %%%
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
			c''2
			\unHideNotes
			\hideNotes
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
			c''2
			\unHideNotes
			\hideNotes
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
		s1 * 3/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIDivOneH = {  
\calliopeRehearsalMark H 
 {
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
			c''1 :32 -\fermata  \ppp %%%
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
			c''2
			\unHideNotes
			\hideNotes
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
			c''2
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
 
 
violinIIDivTwoH = {  
\calliopeRehearsalMark H 
 {
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
			b'1 :32 -\fermata  \ppp %%%
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
			f'2
			\unHideNotes
			\hideNotes
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
			\hideNotes
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
			\hideNotes
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaDivOneH = {  
\calliopeRehearsalMark H 
 {
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
			e'1 :32 -\fermata  \ppp %%%
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
			f'2
			\unHideNotes
			\hideNotes
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
			f'2
			\unHideNotes
			\hideNotes
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
		s1 * 3/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaDivTwoH = {  
\calliopeRehearsalMark H 
 {
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
			d'1 :32 -\fermata  \ppp %%%
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
			d'2
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
 
 
celloDivOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloDivTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassDivOneH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassDivTwoH = {  
\calliopeRehearsalMark H 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 125/16
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
		s1 * 29/16
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
