fluteOneD = {  
\calliopeRehearsalMark D 
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
	r2
	cs''2
	e'4. (
	cs''8 ~
	cs''2 )
	r4
	r8
	e'8 ~ (
	e'2 ~
	e'4.
	fs'8 ~
	fs'2 ~
	fs'2. )
	d'4 (
	e'2. )
	e'4 (
	cs''4. )
	e'8 ~ (
	e'8
	cs''4. )
	fs'4 (
	cs''8
	d''8
	e'4 )
	e'4
	fs'8  \p  (
	e'8
	d'8
	cs''8 )
	fs'8 (
	e'8
	fs'8
	e'8 )
	d'8 (
	fs'8
	d'8
	e'8 )
	d'8 (
	e'8
	d'8
	e'8 )
	fs'8 (
	e'8
	d'8
	fs'8 )
	d'8 (
	cs''8
	fs'8
	e'8 )
	cs''8 (
	fs'8
	cs''8
	fs'8 )
	cs''8 (
	e'8 )
	r4
	fs'8 \< (
	cs''8
	fs'8
	a'8 )
	d''8 (
	cs''8
	fs'8
	cs''8 )
	fs'8 (
	a'8
	d''8
	cs''8 )
	e''8 (
	d''8
	fs''8
	d''8 )
	cs''8 (
	e''8
	cs''8
	d''8 )
	fs''8 (
	d''8
	fs''8
	d''8 )
	a''8 (
	d''8
	e''8
	fs''8 )
	a''8 (
	cs''8  \mf  \! )
	r4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
fluteTwoD = {  
\calliopeRehearsalMark D 
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
	fs'8  \p  (
	d'8
	fs'8
	e'8 )
	fs'8 (
	d'8
	fs'8
	cs''8 )
	fs'8 (
	e'8
	fs'8
	cs''8 )
	fs'8 (
	cs''8
	a'8
	fs'8 )
	e'8 (
	a'8
	cs''8
	fs'8 )
	e'8 (
	fs'8
	e'8
	d'8 )
	fs'8 (
	d'8
	e'8
	d'8 )
	e'8 (
	d'8 )
	r4
	e'8 \< (
	fs'8
	d''8
	cs''8 )
	fs'8 (
	d''8
	cs''8
	fs'8 )
	d''8 (
	e''8
	cs''8
	d''8 )
	cs''8 (
	fs''8
	a'8
	d''8 )
	fs''8 (
	d''8
	a'8
	fs''8 )
	d''8 (
	a'8
	d''8
	cs''8 )
	e''8 (
	d''8
	a''8
	d''8 )
	cs''8 (
	fs''8  \mf  \! )
	r4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeOneD = {  
\calliopeRehearsalMark D 
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
	e''8  \p  (
	cs''8
	fs'8
	d''8 )
	e''8 (
	cs''8
	e''8
	d''8 )
	fs'8 (
	d''8
	e''8
	d''8 )
	cs''8 (
	fs'8
	d''8
	cs''8 )
	d''8 (
	fs'8
	cs''8
	d''8 )
	a'8 (
	fs'8
	d''8
	cs''8 )
	d''8 (
	cs''8
	fs'8
	e''8 )
	d''8 (
	cs''8 )
	r4
	a'8 \< (
	d''8
	cs''8
	fs'8 )
	d''8 (
	a'8
	d''8
	e''8 )
	d''8 (
	cs''8
	d''8
	e''8 )
	d''8 (
	e''8
	d''8
	cs''8 )
	d''8 (
	cs''8
	d''8
	e''8 )
	d''8 (
	cs''8
	d''8
	e''8 )
	cs''8 (
	d''8
	fs''8
	d''8 )
	e''8 (
	d''8  \mf  \! )
	r4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeTwoD = {  
\calliopeRehearsalMark D 
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
	cs''8  \p  (
	d''8
	e''8
	fs'8 )
	d''8 (
	cs''8
	d''8
	fs'8 )
	cs''8 (
	d''8
	cs''8
	d''8 )
	fs'8 (
	d''8
	cs''8
	d''8 )
	cs''8 (
	d''8
	fs'8
	cs''8 )
	d''8 (
	cs''8
	d''8
	fs'8 )
	cs''8 (
	d''8
	cs''8
	d''8 )
	cs''8 (
	d''8 )
	r4
	fs'8 \< (
	d''8
	a'8
	d''8 )
	fs'8 (
	d''8
	e''8
	d''8 )
	e''8 (
	d''8
	fs'8
	d''8 )
	fs'8 (
	d''8
	e''8
	fs'8 )
	a'8 (
	d''8
	fs''8
	d''8 )
	e''8 (
	d''8
	a'8
	d''8 )
	a''8 (
	fs''8
	a''8
	cs''8 )
	d''8 (
	e''8  \mf  \! )
	r4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
oboeThreeD = {  
\calliopeRehearsalMark D 
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
	d''8  \p  (
	cs''8
	d''8
	cs''8 )
	d''8 (
	fs'8
	cs''8
	fs'8 )
	e''8 (
	cs''8
	fs'8
	cs''8 )
	e''8 (
	cs''8
	fs'8
	cs''8 )
	fs'8 (
	cs''8
	d''8
	e''8 )
	cs''8 (
	d''8
	cs''8
	a'8 )
	fs'8 (
	cs''8
	d''8
	cs''8 )
	fs'8 (
	a'8 )
	r4
	cs''8 \< (
	d''8
	e''8
	d''8 )
	cs''8 (
	d''8
	a'8
	d''8 )
	cs''8 (
	fs'8
	a'8
	d''8 )
	a'8 (
	d''8
	cs''8
	e''8 )
	d''8 (
	fs''8
	d''8
	fs''8 )
	d''8 (
	fs''8
	e''8
	fs''8 )
	d''8 (
	cs''8
	d''8
	e''8 )
	a''8 (
	d''8  \mf  \! )
	r4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetOneD = {  
\calliopeRehearsalMark D 
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
	cs'8  \p  (
	fs8
	cs'8
	d'8 )
	cs'8 (
	d'8
	cs'8
	d'8 )
	cs'8 (
	fs8
	cs'8
	fs'8 )
	cs'8 (
	d'8
	cs'8
	d'8 )
	cs'8 (
	d'8
	e'8
	cs'8 )
	fs'8 (
	d'8
	cs'8
	d'8 )
	e'8 (
	fs'8
	d'8
	cs'8 )
	fs'8 (
	cs'8 )
	r4
	d'8 \< (
	fs'8
	d'8
	e'8 )
	d'8 (
	e'8
	fs'8
	d''8 )
	a'8 (
	d''8
	e'8
	fs'8 )
	d''8 (
	cs''8
	d''8
	fs'8 )
	e''8 (
	d''8
	e''8
	d''8 )
	cs''8 (
	e''8
	d''8
	fs''8 )
	d''8 (
	a'8
	cs''8
	d''8 )
	fs''8 (
	d''8  \mf  \! )
	r4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
clarinetTwoD = {  
\calliopeRehearsalMark D 
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
	d'8  \p  (
	fs8
	cs'8
	fs8 )
	cs'8 (
	fs8
	d'8
	cs'8 )
	d'8 (
	cs'8
	d'8
	fs8 )
	d'8 (
	fs8
	e8
	fs8 )
	d'8 (
	cs'8
	fs8
	d'8 )
	cs'8 (
	e8
	fs8
	cs'8 )
	d'8 (
	e'8
	a8
	fs8 )
	d'8 (
	fs'8 )
	r4
	d'8 \< (
	e'8
	d'8
	fs'8 )
	e'8 (
	fs'8
	d'8
	fs'8 )
	d'8 (
	fs'8
	d'8
	fs'8 )
	a'8 (
	fs'8
	d''8
	a'8 )
	d''8 (
	fs'8
	a'8
	cs''8 )
	a'8 (
	fs'8
	cs''8
	d''8 )
	fs''8 (
	e''8
	d''8
	a'8 )
	d''8 (
	a''8  \mf  \! )
	r4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassoonOneD = {  
\calliopeRehearsalMark D 
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
 
 
bassoonTwoD = {  
\calliopeRehearsalMark D 
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
 
 
hornOneD = {  
\calliopeRehearsalMark D 
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
 
 
hornTwoD = {  
\calliopeRehearsalMark D 
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
 
 
hornThreeD = {  
\calliopeRehearsalMark D 
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
 
 
hornFourD = {  
\calliopeRehearsalMark D 
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
 
 
trumpetOneD = {  
\calliopeRehearsalMark D 
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
 
 
trumpetTwoD = {  
\calliopeRehearsalMark D 
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
 
 
tromboneOneD = {  
\calliopeRehearsalMark D 
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
 
 
tromboneTwoD = {  
\calliopeRehearsalMark D 
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
 
 
tubaD = {  
\calliopeRehearsalMark D 
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
 
 
crotalesD = {  
\calliopeRehearsalMark D 
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
 
 
percOneD = {  
\calliopeRehearsalMark D 
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
 
 
percTwoD = {  
\calliopeRehearsalMark D 
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
 
 
timpaniD = {  
\calliopeRehearsalMark D 
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
 
 
odaikoD = {  
\calliopeRehearsalMark D 
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
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
	c4
	r8 [
	c8 ]
	r4
	c4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoOneD = {  
\calliopeRehearsalMark D 
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
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	c4 _ \markup { don }
	c8 [ _ \markup { do }
	c8 ] _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4 _ \markup { don }
	c8 [ _ \markup { do }
	c8 ] _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
taikoTwoD = {  
\calliopeRehearsalMark D 
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
	c4 _ \markup { don }
	c8 [ _ \markup { do }
	c8 ] _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
	c4
	c8
	c8 _ \markup { ko }
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinID = {  
\calliopeRehearsalMark D 
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
			\set Staff.instrumentName = \markup { Violin I.1 }
			\set Staff.shortInstrumentName = \markup { vln.I.1 }
			\set Staff.alignAboveContext = #"violinI"
			cs'8 \mp (
			d'8 )
			e'8 (
			cs'8 )
			d'8 (
			fs'8 )
			cs'8 (
			d'8 )
			e'8 (
			cs'8 )
			fs'8 (
			cs'8 )
			fs'8 (
			d'8 )
			e'8 (
			cs'8 )
			d'8 (
			e'8 )
			d'8 (
			e'8 )
			cs'8 (
			e'8 )
			fs'8 (
			e'8 )
			cs'8 (
			e'8 )
			fs'8 (
			d'8 )
			e'8 (
			d'8 )
			fs'8 (
			e'8 )
			fs'8 (
			fs'8 )
			cs'8 (
			d'8 )
			e'8 (
			cs'8 )
			e'8 (
			cs'8 )
			d'8 (
			e'8 )
			cs'8 (
			e'8 )
			d'8 (
			cs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			e'8 )
			cs'8 (
			e'8 )
			fs'8 (
			e'8 )
			cs''8 (
			fs'8 )
			e''8 (
			d''8 )
			e''8 (
			fs''8 )
			e''8 (
			fs''8 )
			e''8 (
			fs''8 )
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
			\set Staff.instrumentName = \markup { Violin I.2 }
			\set Staff.shortInstrumentName = \markup { vln.I.2 }
			\set Staff.alignAboveContext = #"violinI"
			d'8 \mp (
			fs'8 )
			e'8 (
			fs'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			fs'8 (
			cs'8 )
			d'8 (
			cs'8 )
			fs'8 (
			d'8 )
			e'8 (
			fs'8 )
			e'8 (
			d'8 )
			fs'8 (
			d'8 )
			cs'8 (
			e'8 )
			fs'8 (
			e'8 )
			fs'8 (
			d'8 )
			e'8 (
			d'8 )
			cs'8 (
			fs'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			cs'8 (
			fs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			d'8 )
			cs'8 (
			fs'8 )
			cs'8 (
			d'8 )
			fs'8 (
			cs'8 )
			d'8 (
			e'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs''8 )
			fs'8 (
			cs''8 )
			d''8 (
			cs''8 )
			d''8 (
			fs''8 )
			d''8 (
			e''8 )
			fs''8 (
			cs''8 )
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
			\set Staff.instrumentName = \markup { Violin I.3 }
			\set Staff.shortInstrumentName = \markup { vln.I.3 }
			\set Staff.alignAboveContext = #"violinI"
			e'8 (
			d'8 )
			fs'8 (
			d'8 )
			e'8 (
			fs'8 )
			e'8 (
			fs'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs'8 )
			d'8 (
			fs'8 )
			e'8 (
			d'8 )
			fs'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			cs'8 )
			e'8 (
			fs'8 )
			d'8 (
			fs'8 )
			d'8 (
			fs'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			fs'8 (
			cs'8 )
			e'8 (
			fs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			fs'8 )
			e'8 (
			cs'8 )
			e'8 (
			fs'8 )
			d'8 (
			cs'8 )
			e'8 (
			fs'8 )
			cs''8 (
			e'8 )
			cs''8 (
			fs'8 )
			e''8 (
			cs''8 )
			d''8 (
			fs''8 )
			cs''8 (
			e''8 )
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
			\set Staff.instrumentName = \markup { Violin I.4 }
			\set Staff.shortInstrumentName = \markup { vln.I.4 }
			\set Staff.alignAboveContext = #"violinI"
			d'8 (
			fs'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			cs'8 (
			d'8 )
			cs'8 (
			d'8 )
			e'8 (
			d'8 )
			cs'8 (
			fs'8 )
			d'8 (
			cs'8 )
			e'8 (
			cs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			fs'8 )
			d'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			cs'8 )
			e'8 (
			fs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			fs'8 )
			cs'8 (
			e'8 )
			d'8 (
			e'8 )
			d'8 (
			e'8 )
			cs'8 (
			e'8 )
			fs'8 (
			d'8 )
			cs'8 (
			d'8 )
			e'8 (
			fs'8 )
			cs''8 (
			d''8 )
			e''8 (
			d''8 )
			e''8 (
			fs''8 )
			cs''8 (
			d''8 )
			cs''8 (
			fs''8 )
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
			\set Staff.instrumentName = \markup { Violin I.5 }
			\set Staff.shortInstrumentName = \markup { vln.I.5 }
			fs'8 (
			e'8 )
			cs'8 (
			e'8 )
			cs'8 (
			e'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			cs'8 (
			fs'8 )
			cs'8 (
			d'8 )
			fs'8 (
			e'8 )
			fs'8 (
			e'8 )
			cs'8 (
			e'8 )
			fs'8 (
			e'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			fs'8 (
			d'8 )
			cs'8 (
			e'8 )
			fs'8 (
			d'8 )
			e'8 (
			cs'8 )
			d'8 (
			cs'8 )
			d'8 (
			cs'8 )
			fs'8 (
			e'8 )
			cs'8 (
			d'8 )
			cs'8 (
			fs'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs'8 )
			e'8 (
			cs'8 )
			e'8 (
			d'8 )
			cs'8 (
			d'8 )
			e'8 (
			fs'8 )
			e''8 (
			fs'8 )
			d''8 (
			cs''8 )
			e''8 (
			d''8 )
			fs''8 (
			d''8 )
			\set Staff.instrumentName = \markup { Violin I }
			\set Staff.shortInstrumentName = \markup { vln.I }
			cs''1
				^ \markup {
					\italic
						{
							"tutti Violin I"
						}
					}
			cs''8 (
			d''4. ~
			d''2 )
			r4
			r8
			cs''8 ~ (
			cs''4
			e''4
			d''2. )
			cs''4 (
			e''4.
			d''8 ~
			d''4
			fs''4
			cs''2. )
			cs''8 (
			d''8 ~
			d''4. )
			cs''8 (
			fs''4
			e''4 )
			fs''2.
			cs''8 (
			d''8 )
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIID = {  
\calliopeRehearsalMark D 
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
			\set Staff.instrumentName = \markup { Violin II.1 }
			\set Staff.shortInstrumentName = \markup { vln.II.1 }
			\set Staff.alignAboveContext = #"violinII"
			e'8 \mp (
			fs'8 )
			cs'8 (
			e'8 )
			fs'8 (
			cs'8 )
			d'8 (
			cs'8 )
			fs'8 (
			d'8 )
			e'8 (
			d'8 )
			e'8 (
			fs'8 )
			e'8 (
			d'8 )
			fs'8 (
			e'8 )
			cs'8 (
			e'8 )
			d'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			d'8 )
			fs'8 (
			d'8 )
			e'8 (
			fs'8 )
			d'8 (
			fs'8 )
			cs'8 (
			e'8 )
			d'8 (
			fs'8 )
			d'8 (
			fs'8 )
			d'8 (
			e'8 )
			fs'8 (
			cs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			d'8 )
			fs'8 (
			cs'8 )
			d'8 (
			fs'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			fs'8 (
			cs''8 )
			d''8 (
			e''8 )
			fs''8 (
			e''8 )
			cs''8 (
			d''8 )
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
			\set Staff.instrumentName = \markup { Violin II.2 }
			\set Staff.shortInstrumentName = \markup { vln.II.2 }
			\set Staff.alignAboveContext = #"violinII"
			d'8 \mp (
			cs'8 )
			fs'8 (
			fs'8 )
			e'8 (
			fs'8 )
			e'8 (
			fs'8 )
			d'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			fs'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			d'8 )
			fs'8 (
			cs'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs'8 )
			fs'8 (
			cs'8 )
			d'8 (
			cs'8 )
			d'8 (
			e'8 )
			fs'8 (
			cs'8 )
			d'8 (
			cs'8 )
			e'8 (
			d'8 )
			cs'8 (
			d'8 )
			cs'8 (
			fs'8 )
			e'8 (
			fs'8 )
			e'8 (
			d'8 )
			e'8 (
			fs'8 )
			d'8 (
			e'8 )
			fs'8 (
			cs''8 )
			d''8 (
			e''8 )
			fs''8 (
			e''8 )
			fs''8 (
			cs''8 )
			e''8 (
			fs''8 )
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
			\set Staff.instrumentName = \markup { Violin II.3 }
			\set Staff.shortInstrumentName = \markup { vln.II.3 }
			\set Staff.alignAboveContext = #"violinII"
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs'8 )
			fs'8 (
			d'8 )
			e'8 (
			d'8 )
			e'8 (
			fs'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs'8 )
			e'8 (
			d'8 )
			fs'8 (
			cs'8 )
			d'8 (
			cs'8 )
			d'8 (
			fs'8 )
			cs'8 (
			e'8 )
			fs'8 (
			cs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			e'8 )
			d'8 (
			e'8 )
			fs'8 (
			d'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			fs'8 (
			d'8 )
			e'8 (
			fs'8 )
			d'8 (
			cs'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			fs'8 )
			e'8 (
			fs'8 )
			d''8 (
			e''8 )
			fs''8 (
			e''8 )
			d''8 (
			cs''8 )
			d''8 (
			cs''8 )
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
			\set Staff.instrumentName = \markup { Violin II.4 }
			\set Staff.shortInstrumentName = \markup { vln.II.4 }
			\set Staff.alignAboveContext = #"violinII"
			fs'8 (
			e'8 )
			fs'8 (
			cs'8 )
			d'8 (
			e'8 )
			fs'8 (
			d'8 )
			cs'8 (
			fs'8 )
			cs'8 (
			e'8 )
			fs'8 (
			cs'8 )
			e'8 (
			cs'8 )
			d'8 (
			fs'8 )
			fs'8 (
			cs'8 )
			fs'8 (
			fs'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs'8 )
			d'8 (
			cs'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			cs'8 (
			fs'8 )
			e'8 (
			d'8 )
			e'8 (
			fs'8 )
			cs'8 (
			fs'8 )
			fs'8 (
			cs'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
			cs'8 (
			fs'8 )
			e'8 (
			d'8 )
			fs'8 (
			d'8 )
			cs''8 (
			d''8 )
			cs''8 (
			fs'8 )
			e''8 (
			cs''8 )
			fs''8 (
			d''8 )
			cs''8 (
			fs''8 )
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
			\set Staff.instrumentName = \markup { Violin II.5 }
			\set Staff.shortInstrumentName = \markup { vln.II.5 }
			cs'8 (
			fs'8 )
			e'8 (
			fs'8 )
			cs'8 (
			fs'8 )
			cs'8 (
			e'8 )
			fs'8 (
			d'8 )
			e'8 (
			fs'8 )
			e'8 (
			cs'8 )
			d'8 (
			e'8 )
			fs'8 (
			cs'8 )
			fs'8 (
			e'8 )
			d'8 (
			cs'8 )
			e'8 (
			d'8 )
			e'8 (
			cs'8 )
			e'8 (
			fs'8 )
			d'8 (
			cs'8 )
			e'8 (
			fs'8 )
			e'8 (
			d'8 )
			e'8 (
			cs'8 )
			fs'8 (
			d'8 )
			fs'8 (
			d'8 )
			fs'8 (
			e'8 )
			d'8 (
			fs'8 )
			e'8 (
			fs'8 )
			d'8 (
			cs'8 )
			fs'8 (
			d'8 )
			fs'8 (
			cs'8 )
			fs'8 (
			cs''8 )
			fs'8 (
			e'8 )
			fs'8 (
			d''8 )
			cs''8 (
			e''8 )
			cs''8 (
			e''8 )
			fs''8 (
			d''8 )
			\set Staff.instrumentName = \markup { Violin II }
			\set Staff.shortInstrumentName = \markup { vln.II }
			cs''1
				^ \markup {
					\italic
						{
							"tutti Violin II"
						}
					}
			cs''8 (
			d''4. ~
			d''2 )
			r4
			r8
			cs''8 ~ (
			cs''4
			e''4
			d''2. )
			cs''4 (
			e''4.
			d''8 ~
			d''4
			fs''4
			cs''2. )
			cs''8 (
			d''8 ~
			d''4. )
			cs''8 (
			fs''4
			e''4 )
			fs''2.
			cs''8 (
			d''8 )
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaD = {  
\calliopeRehearsalMark D 
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
	<<
		\context Staff = "viola_1" {
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
			\set Staff.instrumentName = \markup { Viola.1 }
			\set Staff.shortInstrumentName = \markup { vla.1 }
			\set Staff.alignAboveContext = #"viola"
			cs8 \mp (
			e8 )
			d8 (
			cs8 )
			e8 (
			d8 )
			fs8 (
			cs8 )
			e8 (
			fs8 )
			d8 (
			e8 )
			d8 (
			fs8 )
			cs8 (
			d8 )
			e8 (
			d8 )
			e8 (
			d8 )
			e8 (
			fs8 )
			cs8 (
			d8 )
			cs8 (
			d8 )
			cs8 (
			e8 )
			fs8 (
			e8 )
			cs8 (
			d8 )
			cs8 (
			fs8 )
			d8 (
			cs8 )
			d8 (
			fs8 )
			e8 (
			cs8 )
			d8 (
			cs8 )
			d8 (
			e8 )
			fs8 (
			d8 )
			fs8 (
			e8 )
			fs8 (
			e8 )
			fs8 (
			e'8 )
			fs8 (
			e'8 )
			d'8 (
			e'8 )
			cs'8 (
			fs'8 )
			cs'8 (
			fs'8 )
			e'8 (
			fs'8 )
			e'8 (
			cs''8 )
		}
		\context Staff = "viola_2" {
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
			\set Staff.instrumentName = \markup { Viola.2 }
			\set Staff.shortInstrumentName = \markup { vla.2 }
			\set Staff.alignAboveContext = #"viola"
			fs8 \mp (
			e8 )
			cs8 (
			d8 )
			cs8 (
			fs8 )
			d8 (
			cs8 )
			fs8 (
			e8 )
			d8 (
			cs8 )
			e8 (
			d8 )
			cs8 (
			fs8 )
			e8 (
			fs8 )
			e8 (
			d8 )
			fs8 (
			cs8 )
			e8 (
			fs8 )
			d8 (
			cs8 )
			d8 (
			cs8 )
			fs8 (
			e8 )
			fs8 (
			cs8 )
			e8 (
			fs8 )
			e8 (
			fs8 )
			d8 (
			e8 )
			d8 (
			e8 )
			fs8 (
			cs8 )
			fs8 (
			cs8 )
			fs8 (
			e8 )
			fs8 (
			d'8 )
			cs'8 (
			fs8 )
			cs'8 (
			fs8 )
			e'8 (
			cs'8 )
			d'8 (
			fs'8 )
			e'8 (
			fs'8 )
			e'8 (
			fs'8 )
			fs'8 (
			cs''8 )
			d''8 (
			cs''8 )
		}
		\context Staff = "viola_3" {
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
			\set Staff.instrumentName = \markup { Viola.3 }
			\set Staff.shortInstrumentName = \markup { vla.3 }
			\set Staff.alignAboveContext = #"viola"
			e8 (
			fs8 )
			cs8 (
			d8 )
			fs8 (
			cs8 )
			e8 (
			fs8 )
			cs8 (
			fs8 )
			cs8 (
			d8 )
			cs8 (
			e8 )
			d8 (
			fs8 )
			d8 (
			fs8 )
			e8 (
			cs8 )
			d8 (
			fs8 )
			cs8 (
			fs8 )
			e8 (
			cs8 )
			d8 (
			e8 )
			cs8 (
			fs8 )
			cs8 (
			d8 )
			fs8 (
			cs8 )
			d8 (
			fs8 )
			cs8 (
			fs8 )
			e8 (
			d8 )
			e8 (
			fs8 )
			e8 (
			cs8 )
			e8 (
			d8 )
			fs8 (
			cs'8 )
			d'8 (
			cs'8 )
			e'8 (
			fs8 )
			cs'8 (
			e'8 )
			d'8 (
			cs'8 )
			fs'8 (
			cs'8 )
			cs'8 (
			d'8 )
			e'8 (
			cs''8 )
			fs'8 (
			e''8 )
		}
		{
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
			\set Staff.instrumentName = \markup { Viola.4 }
			\set Staff.shortInstrumentName = \markup { vla.4 }
			e8 (
			cs8 )
			fs8 (
			e8 )
			fs8 (
			e8 )
			fs8 (
			e8 )
			cs8 (
			e8 )
			fs8 (
			d8 )
			e8 (
			fs8 )
			e8 (
			d8 )
			fs8 (
			cs8 )
			d8 (
			fs8 )
			e8 (
			d8 )
			e8 (
			cs8 )
			e8 (
			d8 )
			fs8 (
			e8 )
			fs8 (
			cs8 )
			d8 (
			e8 )
			cs8 (
			e8 )
			fs8 (
			e8 )
			fs8 (
			e8 )
			d8 (
			e8 )
			d8 (
			cs8 )
			e8 (
			fs8 )
			e8 (
			cs'8 )
			fs8 (
			d'8 )
			cs'8 (
			fs8 )
			d'8 (
			cs'8 )
			d'8 (
			fs'8 )
			e'8 (
			d'8 )
			fs'8 (
			e'8 )
			fs'8 (
			d'8 )
			e'8 (
			fs'8 )
			e'8 (
			e''8 )
			\set Staff.instrumentName = \markup { Viola }
			\set Staff.shortInstrumentName = \markup { vla. }
			cs'2.
				^ \markup {
					\italic
						{
							"tutti Viola"
						}
					}
			cs'4 ~
			cs'4.
			d'8 ~
			d'2 ~
			d'4.
			cs'8 ~
			cs'2
			d'4.
			d'8 ~
			d'2 ~
			d'4.
			d'8 ~
			d'2
			cs'4.
			cs'8 ~
			cs'2 ~
			cs'2.
			e'4
			fs'1
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloD = {  
\calliopeRehearsalMark D 
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
	<<
		\context Staff = "cello_1" {
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
			\set Staff.instrumentName = \markup { Cello.1 }
			\set Staff.shortInstrumentName = \markup { vc.1 }
			\set Staff.alignAboveContext = #"cello"
			fs8 \mp (
			cs8 )
			d8 (
			cs8 )
			fs8 (
			d8 )
			e8 (
			fs8 )
			e8 (
			fs8 )
			e8 (
			cs8 )
			d8 (
			cs8 )
			fs8 (
			e8 )
			cs8 (
			fs8 )
			cs8 (
			fs8 )
			cs8 (
			d8 )
			cs8 (
			fs8 )
			cs8 (
			e8 )
			cs8 (
			fs8 )
			fs8 (
			d8 )
			e8 (
			fs8 )
			cs8 (
			e8 )
			fs8 (
			d8 )
			cs8 (
			e8 )
			cs8 (
			fs8 )
			e8 (
			fs8 )
			e8 (
			d8 )
			cs8 (
			d8 )
			e8 (
			fs8 )
			d8 (
			e8 )
			fs8 (
			cs8 )
			e8 (
			d8 )
			e8 (
			d'8 )
			e'8 (
			cs'8 )
			fs'8 (
			e'8 )
			d'8 (
			e'8 )
			fs'8 (
			e'8 )
		}
		\context Staff = "cello_2" {
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
			\set Staff.instrumentName = \markup { Cello.2 }
			\set Staff.shortInstrumentName = \markup { vc.2 }
			\set Staff.alignAboveContext = #"cello"
			fs8 \mp (
			cs8 )
			d8 (
			fs8 )
			e8 (
			d8 )
			cs8 (
			e8 )
			d8 (
			fs8 )
			cs8 (
			fs8 )
			cs8 (
			e8 )
			fs8 (
			d8 )
			cs8 (
			e8 )
			fs8 (
			e8 )
			fs8 (
			d8 )
			e8 (
			cs8 )
			d8 (
			fs8 )
			e8 (
			fs8 )
			e8 (
			d8 )
			cs8 (
			e8 )
			fs8 (
			d8 )
			fs8 (
			e8 )
			cs8 (
			d8 )
			cs8 (
			e8 )
			fs8 (
			cs8 )
			d8 (
			e8 )
			fs8 (
			e8 )
			cs8 (
			d8 )
			e8 (
			fs8 )
			e8 (
			d8 )
			cs8 (
			cs'8 )
			d'8 (
			cs'8 )
			d'8 (
			e'8 )
			cs'8 (
			d'8 )
			cs'8 (
			fs'8 )
			d'8 (
			e'8 )
		}
		\context Staff = "cello_3" {
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
			\set Staff.instrumentName = \markup { Cello.3 }
			\set Staff.shortInstrumentName = \markup { vc.3 }
			\set Staff.alignAboveContext = #"cello"
			cs8 (
			d8 )
			e8 (
			fs8 )
			cs8 (
			d8 )
			e8 (
			cs8 )
			d8 (
			cs8 )
			fs8 (
			e8 )
			d8 (
			fs8 )
			cs8 (
			fs8 )
			cs8 (
			d8 )
			e8 (
			cs8 )
			e8 (
			cs8 )
			fs8 (
			d8 )
			e8 (
			fs8 )
			d8 (
			fs8 )
			e8 (
			fs8 )
			d8 (
			e8 )
			cs8 (
			d8 )
			fs8 (
			e8 )
			cs8 (
			e8 )
			fs8 (
			fs8 )
			e8 (
			d8 )
			fs8 (
			e8 )
			cs8 (
			fs8 )
			e8 (
			fs8 )
			d8 (
			cs8 )
			fs8 (
			e8 )
			cs8 (
			fs8 )
			e8 (
			fs8 )
			cs'8 (
			d'8 )
			fs'8 (
			d'8 )
			cs'8 (
			d'8 )
			e'8 (
			d'8 )
		}
		{
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
			\set Staff.instrumentName = \markup { Cello.4 }
			\set Staff.shortInstrumentName = \markup { vc.4 }
			e8 (
			d8 )
			e8 (
			d8 )
			e8 (
			cs8 )
			d8 (
			fs8 )
			d8 (
			e8 )
			fs8 (
			e8 )
			fs8 (
			e8 )
			cs8 (
			fs8 )
			cs8 (
			fs8 )
			cs8 (
			d8 )
			fs8 (
			e8 )
			fs8 (
			cs8 )
			fs8 (
			d8 )
			cs8 (
			e8 )
			d8 (
			e8 )
			fs8 (
			d8 )
			e8 (
			d8 )
			e8 (
			d8 )
			fs8 (
			d8 )
			e8 (
			d8 )
			fs8 (
			e8 )
			fs8 (
			d8 )
			e8 (
			d8 )
			cs8 (
			fs8 )
			e8 (
			d8 )
			cs8 (
			e8 )
			fs8 (
			d8 )
			fs8 (
			e8 )
			fs8 (
			e'8 )
			d'8 (
			cs'8 )
			fs'8 (
			e'8 )
			d'8 (
			fs'8 )
			\set Staff.instrumentName = \markup { Cello }
			\set Staff.shortInstrumentName = \markup { vc. }
			e2.
				^ \markup {
					\italic
						{
							"tutti Cello    "
						}
					}
			e4 ~
			e4.
			fs8 ~
			fs2 ~
			fs4.
			e8 ~
			e2
			fs4.
			fs8 ~
			fs2 ~
			fs4.
			fs8 ~
			fs2
			e4.
			e8 ~
			e2 ~
			e2.
			cs'4
			d'1
		}
	>>
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassD = {  
\calliopeRehearsalMark D 
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
 
 
