fluteOneE = {  
\calliopeRehearsalMark E 
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
	cs'8 \< (
	fs'8 )
	cs''8 (
	d''8 )
	cs''8 (
	d''8 )
	cs''8 (
	cs'''8 \! ) \>
	d'''8 (
	fs''8 )
	a''8 (
	d''8 )
	a'8 (
	d''8 )
	a'8 (
	fs'8 \! )
	r4
	r8
	d'8 \< (
	e'8
	d'8 )
	e'8 (
	fs'8 )
	a'8 (
	d''8 )
	e''8 (
	d''8 )
	cs''8 (
	d''8 )
	a''8 (
	cs''8 )
	d''8 \! \> (
	e''8 )
	fs''8 (
	d''8 )
	e''8 (
	d''8 )
	cs''8 (
	fs'8 )
	a'8 (
	cs''8 )
	a'8 (
	fs'8 \! )
	r4
	cs'8 (
	d'8 ) \<
	e'8 (
	d'8 )
	d''8 (
	cs''8 )
	a'8 (
	d''8 )
	e''8 (
	d''8 )
	a'8 (
	fs''8 )
	a''8 (
	fs''8 )
	a''8 (
	fs''8  \f  \! )
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
 
 
fluteTwoE = {  
\calliopeRehearsalMark E 
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
	fs'8 \< (
	a'8 )
	d''8 (
	cs''8 )
	a'8 (
	cs''8 )
	d''8 (
	a''8 \! ) \>
	cs'''8 (
	a''8 )
	d''8 (
	e''8 )
	d''8 (
	a'8 )
	d''8 (
	d'8 \! )
	r4
	r8
	cs'8 \< (
	a'8
	d'8 )
	e'8 (
	a'8 )
	d''8 (
	a'8 )
	d''8 (
	fs''8 )
	d''8 (
	e''8 )
	d''8 (
	fs''8 )
	d''8 \! \> (
	e''8 )
	d''8 (
	fs''8 )
	a'8 (
	d''8 )
	a'8 (
	cs''8 )
	d''8 (
	cs''8 )
	fs'8 (
	e'8 \! )
	r4
	d'8 (
	e'8 ) \<
	d'8 (
	a'8 )
	cs''8 (
	d''8 )
	e''8 (
	d''8 )
	fs''8 (
	e''8 )
	fs''8 (
	d''8 )
	fs''8 (
	a''8 )
	fs''8 (
	d''8  \f  \! )
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
 
 
oboeOneE = {  
\calliopeRehearsalMark E 
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
	e''8 \< (
	d''8 )
	cs''8 (
	a''8 )
	cs''8 (
	a'8 )
	fs'8 (
	e'8 \! ) \>
	fs'8 (
	d'8 )
	fs'8 (
	d''8 )
	e''8 (
	d''8 )
	cs''8 (
	d''8 \! )
	r4
	r8
	a''8 \< (
	fs''8
	e''8 )
	d''8 (
	e''8 )
	cs''8 (
	fs''8 )
	d''8 (
	e''8 )
	a'8 (
	d''8 )
	e''8 (
	a'8 )
	cs''8 \! \> (
	a'8 )
	d''8 (
	a'8 )
	d''8 (
	cs''8 )
	d''8 (
	a''8 )
	cs''8 (
	cs'''8 )
	d'''8 (
	cs'''8 \! )
	r4
	a''8 (
	d'''8 ) \<
	a''8 (
	e''8 )
	d''8 (
	a''8 )
	d''8 (
	fs''8 )
	e''8 (
	d''8 )
	cs''8 (
	a'8 )
	fs'8 (
	e'8 )
	fs'8 (
	e'8  \f  \! )
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
 
 
oboeTwoE = {  
\calliopeRehearsalMark E 
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
	a''8 \< (
	d''8 )
	e''8 (
	d''8 )
	fs''8 (
	cs''8 )
	a'8 (
	cs''8 \! ) \>
	a'8 (
	cs''8 )
	d''8 (
	a'8 )
	d''8 (
	e''8 )
	d''8 (
	a''8 \! )
	r4
	r8
	fs''8 \< (
	cs'''8
	a''8 )
	cs''8 (
	d''8 )
	fs''8 (
	d''8 )
	a'8 (
	d''8 )
	fs''8 (
	a'8 )
	fs'8 (
	e'8 )
	a'8 \! \> (
	e''8 )
	a'8 (
	e''8 )
	d''8 (
	e''8 )
	a''8 (
	fs''8 )
	a''8 (
	d''8 )
	cs'''8 (
	d'''8 \! )
	r4
	cs'''8 (
	a''8 ) \<
	d'''8 (
	a''8 )
	fs''8 (
	cs''8 )
	fs''8 (
	cs''8 )
	a'8 (
	fs''8 )
	d''8 (
	cs''8 )
	fs'8 (
	d''8 )
	a'8 (
	fs'8  \f  \! )
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
 
 
oboeThreeE = {  
\calliopeRehearsalMark E 
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
	d'''8 \< (
	cs'''8 )
	a''8 (
	cs''8 )
	a'8 (
	fs'8 )
	a'8 (
	d'8 \! ) \>
	cs'8 (
	d'8 )
	e'8 (
	a'8 )
	fs''8 (
	d''8 )
	fs''8 (
	a''8 \! )
	r4
	r8
	d'''8 \< (
	cs'''8
	fs''8 )
	a''8 (
	e''8 )
	d''8 (
	a''8 )
	d''8 (
	a'8 )
	d''8 (
	cs''8 )
	d''8 (
	cs''8 )
	fs'8 \! \> (
	a'8 )
	e''8 (
	d''8 )
	cs''8 (
	d''8 )
	fs''8 (
	e''8 )
	fs''8 (
	a''8 )
	cs'''8 (
	a''8 \! )
	r4
	fs''8 (
	cs'''8 ) \<
	d'''8 (
	fs''8 )
	d''8 (
	e''8 )
	fs''8 (
	e''8 )
	d''8 (
	a'8 )
	fs''8 (
	e''8 )
	d''8 (
	cs''8 )
	d''8 (
	d'8  \f  \! )
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
 
 
clarinetOneE = {  
\calliopeRehearsalMark E 
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
	cs'8 \< (
	e'8 )
	a'8 (
	cs''8 )
	d''8 (
	e''8 )
	cs''8 (
	d''8 \! ) \>
	cs''8 (
	d''8 )
	cs''8 (
	d''8 )
	cs''8 (
	d''8 )
	d'8 (
	e'8 \! )
	r4
	r8
	cs'8 \< (
	d'8
	cs'8 )
	a'8 (
	d'8 )
	a'8 (
	cs''8 )
	d''8 (
	cs''8 )
	d''8 (
	a'8 )
	cs''8 (
	d''8 )
	e''8 \! \> (
	cs''8 )
	e''8 (
	a'8 )
	d''8 (
	fs'8 )
	e'8 (
	fs'8 )
	d'8 (
	e'8 )
	a'8 (
	cs'8 \! )
	r4
	d'8 (
	a8 ) \<
	cs'8 (
	d'8 )
	e'8 (
	cs'8 )
	d'8 (
	a'8 )
	d''8 (
	e''8 )
	d''8 (
	fs''8 )
	e''8 (
	fs''8 )
	e''8 (
	fs''8  \f  \! )
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
 
 
clarinetTwoE = {  
\calliopeRehearsalMark E 
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
	a8 \< (
	cs'8 )
	fs'8 (
	a'8 )
	cs''8 (
	d''8 )
	e''8 (
	a''8 \! ) \>
	e''8 (
	a''8 )
	d''8 (
	cs''8 )
	d''8 (
	a'8 )
	e'8 (
	d'8 \! )
	r4
	r8
	a8 \< (
	d'8
	cs'8 )
	e'8 (
	cs'8 )
	d'8 (
	d''8 )
	a'8 (
	d''8 )
	a'8 (
	d''8 )
	cs''8 (
	a'8 )
	e''8 \! \> (
	fs''8 )
	a'8 (
	d''8 )
	a'8 (
	d''8 )
	fs'8 (
	d'8 )
	e'8 (
	fs'8 )
	e'8 (
	cs'8 \! )
	r4
	e'8 (
	d'8 ) \<
	fs'8 (
	d'8 )
	a'8 (
	fs'8 )
	a'8 (
	fs'8 )
	a'8 (
	cs''8 )
	e''8 (
	d''8 )
	cs''8 (
	a'8 )
	d''8 (
	cs''8  \f  \! )
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
 
 
bassoonOneE = {  
\calliopeRehearsalMark E 
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
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	cs'8 \< (
	a8 )
	cs'8 (
	e8 )
	d8 (
	cs8 )
	d8 (
	cs8 \! ) \>
	d8 (
	e8 )
	d8 (
	fs8 )
	d8 (
	cs8 )
	a8 (
	d'8 \! )
	r4
	r8
	cs'8 \< (
	a8
	cs'8 )
	d'8 (
	e8 )
	d8 (
	e8 )
	fs8 (
	a8 )
	d8 (
	fs8 )
	cs8 (
	d8 )
	e8 \! \> (
	d8 )
	cs8 (
	d8 )
	fs8 (
	a8 )
	d8 (
	d'8 )
	cs'8 (
	d'8 )
	cs'8 (
	d'8 \! )
	r4
	a8 (
	fs'8 ) \<
	d'8 (
	cs'8 )
	d'8 (
	a8 )
	fs8 (
	a8 )
	e8 (
	a8 )
	fs8 (
	a,8 )
	d8 (
	fs8 )
	fs,8 (
	a,8  \f  \! )
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
 
 
bassoonTwoE = {  
\calliopeRehearsalMark E 
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
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	R1
	d'8 \< (
	cs'8 )
	d'8 (
	fs8 )
	e8 (
	a,8 )
	cs8 (
	fs,8 \! ) \>
	a,8 (
	d8 )
	a,8 (
	d8 )
	a8 (
	fs8 )
	d'8 (
	cs'8 \! )
	r4
	r8
	e'8 \< (
	cs'8
	a8 )
	fs8 (
	a8 )
	e8 (
	d8 )
	cs8 (
	d8 )
	e8 (
	d8 )
	a,8 (
	cs8 )
	a,8 \! \> (
	d8 )
	e8 (
	cs8 )
	d8 (
	a8 )
	fs8 (
	a8 )
	cs'8 (
	a8 )
	d'8 (
	a8 \! )
	r4
	cs'8 (
	d'8 ) \<
	a8 (
	d'8 )
	a8 (
	d'8 )
	cs'8 (
	fs8 )
	cs8 (
	e8 )
	a8 (
	fs8 )
	a,8 (
	d8 )
	cs8 (
	a,8  \f  \! )
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
 
 
hornOneE = {  
\calliopeRehearsalMark E 
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
	cs'2.
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
 
 
hornTwoE = {  
\calliopeRehearsalMark E 
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
	e2.
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
 
 
hornThreeE = {  
\calliopeRehearsalMark E 
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
 
 
hornFourE = {  
\calliopeRehearsalMark E 
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
 
 
trumpetOneE = {  
\calliopeRehearsalMark E 
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
 
 
trumpetTwoE = {  
\calliopeRehearsalMark E 
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
 
 
tromboneOneE = {  
\calliopeRehearsalMark E 
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
	cs1
	cs8 (
	d4. ~
	d2 )
	r4
	r8
	cs8 ~ (
	cs4
	e4
	d2. )
	cs4 (
	e4.
	d8 ~
	d4
	fs4
	cs2. )
	cs8 (
	d8 ~
	d4. )
	cs8 (
	fs4
	e4 )
	fs2.
	cs8 (
	d8 )
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tromboneTwoE = {  
\calliopeRehearsalMark E 
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
	cs1
	cs8 (
	d4. ~
	d2 )
	r4
	r8
	cs8 ~ (
	cs4
	e4
	d2. )
	cs4 (
	e4.
	d8 ~
	d4
	fs4
	cs2. )
	cs8 (
	d8 ~
	d4. )
	cs8 (
	fs4
	e4 )
	fs2.
	cs8 (
	d8 )
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
tubaE = {  
\calliopeRehearsalMark E 
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
	cs1
	cs8 (
	d4. ~
	d2 )
	r4
	r8
	cs8 ~ (
	cs4
	e4
	d2. )
	cs4 (
	e4.
	d8 ~
	d4
	fs4
	cs2. )
	cs8 (
	d8 ~
	d4. )
	cs8 (
	fs4
	e4 )
	fs2.
	cs8 (
	d8 )
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
crotalesE = {  
\calliopeRehearsalMark E 
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
 
 
percOneE = {  
\calliopeRehearsalMark E 
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
 
 
percTwoE = {  
\calliopeRehearsalMark E 
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
 
 
timpaniE = {  
\calliopeRehearsalMark E 
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
 
 
odaikoE = {  
\calliopeRehearsalMark E 
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
 
 
taikoOneE = {  
\calliopeRehearsalMark E 
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
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
	c4 _ \markup { don }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
	c4 _ \markup { don }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
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
 
 
taikoTwoE = {  
\calliopeRehearsalMark E 
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
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
	c4 _ \markup { don }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c4 _ \markup { don }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
	c4 _ \markup { don }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 _ \markup { do }
	c8 _ \markup { ko }
	r4 _ \markup { tsu }
	c8 [ _ \markup { do }
	c8 ] _ \markup { don }
	r8 [
	c8 ] _ \markup { do }
	c4 _ \markup { don }
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
 
 
violinIE = {  
\calliopeRehearsalMark E 
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
	r2
	a''2
	e''4. (
	a''8 ~
	a''2 )
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
	a''4. )
	e''8 ~ (
	e''8
	a''4. )
	fs''4 (
	cs'''8
	d'''8
	e''4 )
	e''4
	r2
	a'2
	e'4. (
	a'8 ~
	a'2 )
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
	a'4. )
	e'8 ~ (
	e'8
	a'4. )
	fs'4 (
	cs''8
	d''8
	e'4 )
	e'4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIE = {  
\calliopeRehearsalMark E 
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
	r2
	a''2
	e''4. (
	a''8 ~
	a''2 )
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
	a''4. )
	e''8 ~ (
	e''8
	a''4. )
	fs''4 (
	cs'''8
	d'''8
	e''4 )
	e''4
	r2
	a'2
	e'4. (
	a'8 ~
	a'2 )
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
	a'4. )
	e'8 ~ (
	e'8
	a'4. )
	fs'4 (
	cs''8
	d''8
	e'4 )
	e'4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaE = {  
\calliopeRehearsalMark E 
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
	cs1
	cs8 (
	d4. ~
	d2 )
	r4
	r8
	cs8 ~ (
	cs4
	e4
	d2. )
	cs4 (
	e4.
	d8 ~
	d4
	fs4
	cs2. )
	cs8 (
	d8 ~
	d4. )
	cs8 (
	fs4
	e4 )
	fs2.
	cs8 (
	d8 )
	r2
	a2
	e4. (
	a8 ~
	a2 )
	r4
	r8
	e8 ~ (
	e2 ~
	e4.
	fs8 ~
	fs2 ~
	fs2. )
	d4 (
	e2. )
	e4 (
	a4. )
	e8 ~ (
	e8
	a4. )
	fs4 (
	cs'8
	d'8
	e4 )
	e4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloE = {  
\calliopeRehearsalMark E 
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
	cs1
	cs8 (
	d4. ~
	d2 )
	r4
	r8
	cs8 ~ (
	cs4
	e4
	d2. )
	cs4 (
	e4.
	d8 ~
	d4
	fs4
	cs2. )
	cs8 (
	d8 ~
	d4. )
	cs8 (
	fs4
	e4 )
	fs2.
	cs8 (
	d8 )
	r2
	a,2
	e,4. (
	a,8 ~
	a,2 )
	r4
	r8
	e,8 ~ (
	e,2 ~
	e,4.
	fs,8 ~
	fs,2 ~
	fs,2. )
	d,4 (
	e,2. )
	e,4 (
	a,4. )
	e,8 ~ (
	e,8
	a,4. )
	fs,4 (
	cs8
	d8
	e,4 )
	e,4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassE = {  
\calliopeRehearsalMark E 
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
	cs'1
	cs'8 (
	d'4. ~
	d'2 )
	r4
	r8
	cs'8 ~ (
	cs'4
	e'4
	d'2. )
	cs'4 (
	e'4.
	d'8 ~
	d'4
	fs'4
	cs'2. )
	cs'8 (
	d'8 ~
	d'4. )
	cs'8 (
	fs'4
	e'4 )
	fs'2.
	cs'8 (
	d'8 )
	r2
	a,2
	e,4. (
	a,8 ~
	a,2 )
	r4
	r8
	e,8 ~ (
	e,2 ~
	e,4.
	fs,8 ~
	fs,2 ~
	fs,2. )
	d,4 (
	e,2. )
	e,4 (
	a,4. )
	e,8 ~ (
	e,8
	a,4. )
	fs,4 (
	cs8
	d8
	e,4 )
	e,4
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
