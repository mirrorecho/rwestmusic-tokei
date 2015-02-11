fluteOneN = {  
\calliopeRehearsalMark N 
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
	fs''4 -\tenuto
	fs''8 -\tenuto
	ds''4 -\staccato
	r8
	ds''4 -\tenuto
	ds''8 -\tenuto
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
	ds''4 -\staccato
	r8
	ds''4 -\tenuto
	ds''8 -\tenuto
	ds''4 -\staccato
	r8
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoN = {  
\calliopeRehearsalMark N 
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
	fs''4 -\staccato
	r8
	ds''4 -\tenuto
	ds''8 -\tenuto
	ds''4 -\staccato
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
	ds''4 -\tenuto
	ds''8 -\tenuto
	ds''4 -\staccato
	r8
	ds''4 -\tenuto
	ds''8 -\tenuto
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeOneN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneN = {  
\calliopeRehearsalMark N 
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
	ds''4 -\tenuto
	ds''8 -\tenuto
	fs'4 -\staccato
	r8
	ds'4 -\tenuto
	ds'8 -\tenuto
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
	ds'4 -\tenuto
	ds'8 -\tenuto
	ds'4 -\staccato
	r8
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoN = {  
\calliopeRehearsalMark N 
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
	ds''4 -\staccato
	r8
	fs'4 -\tenuto
	fs'8 -\tenuto
	ds'4 -\staccato
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
	ds'4 -\staccato
	r8
	ds'4 -\tenuto
	ds'8 -\tenuto
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonTwoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornOneN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornTwoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornThreeN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
hornFourN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetOneN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
trumpetTwoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneOneN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percOneN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
percTwoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
timpaniN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
shimeN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
odaikoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneN = {  
\calliopeRehearsalMark N 
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoN = {  
\calliopeRehearsalMark N 
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
	 \time 9/8 %%%
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
	R4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIN = {  
\calliopeRehearsalMark N 
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
			a''4.  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
	fs''4.
	ds''4.
	ds''4.
	fs''4.
	fs''4.
	fs''4.
	fs''4.
	cs''4.
	fs''4.
	ds''4.
	ds''4.
	ds''4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIN = {  
\calliopeRehearsalMark N 
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
			b'4.  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
	ds''4.
	fs'4.
	ds'4.
	cs''4.
	cs''4.
	cs''4.
	cs''4.
	fs''4.
	cs''4.
	b'4.
	ds'4.
	ds'4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaN = {  
\calliopeRehearsalMark N 
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
			a'4.  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
	b4.
	b4.
	b4.
	fs'4.
	fs'4.
	fs'4.
	a'4.
	a'4.
	a'4.
	ds'4.
	b4.
	b4.
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloN = {  
\calliopeRehearsalMark N 
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
			a4.  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassN = {  
\calliopeRehearsalMark N 
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
			g4.  \p %%%
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
	}
	\context Staff {#(set-accidental-style 'modern)}
	 \time 9/8 %%%
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
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
