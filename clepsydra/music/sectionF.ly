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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			r1 -\fermata
			s8
			d'1 -\fermata (
			\tweak #'text #tuplet-number::calc-fraction-text
			\times 7/8 {
				f'4 )
				bf'8 (
				af'8
				g'8
				bf'8
				ef'8 ~
			}
			ef'4 )
			r4
			df'2 (
			c'2. -\fermata )
			r1 -\fermata
		}
		s1 * 15/64
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
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
		\time 24/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 11/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 11/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 5/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 13/8
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
		\time 24/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 11/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 11/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 5/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 13/8
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
		\time 24/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 11/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 11/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 5/8
		 \bar ";" %%%
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			c8 [ _ \markup { da }
			c8 ]
				^ \markup { repeat }
				_ \markup { da }
			s1
			c8 -\accent
				^ \markup { random dan }
				_ \markup { dan }
			s1
			s1
			c8 [ _ \markup { do }
			c8 ]
				^ \markup { (do don together) }
				_ \markup { don }
			s1
		}
		s1 * 13/8
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIDivOneF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIDivTwoF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIDivOneF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violinIIDivTwoF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaDivOneF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
violaDivTwoF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloDivOneF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
celloDivTwoF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassDivOneF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
bassDivTwoF = {  
\calliopeRehearsalMark F 
 {
	\context Staff {#(set-accidental-style 'forget)}
	\once \override 
	                            Staff.TimeSignature #'stencil = #(lambda (grob)
	                            (parenthesize-stencil (grob-interpret-markup grob 
	                            (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
	                            ) 0.1 0.4 0.4 0.1 ))
	{
		\time 24/4
		{
			s1
			s1
			s2
			r1 -\fermata
			s2
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
			s2
			r1 -\fermata
			s2
			s1
			s1
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 21/4
		{
			\xNotesOn
			c'8  \p  \< ^ \markup { ad lib on any D None E (with taiko pulse) }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \f  \!
			\xNotesOff
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
	\context Staff {#(set-accidental-style 'forget)}
	\once \override Staff.TimeSignature.stencil = ##f
	{
		\time 25/4
		{
			\xNotesOn
			c'8  \f  \> ^ \markup { sim., an any D None A, or Bb }
			\xNotesOff
			s1
			s1
			s1
			s1
			s1
			\xNotesOn
			c'8  \p  \!
			\xNotesOff
			r1 -\fermata
		}
	}
	\context Staff {#(set-accidental-style 'modern)}
}\bar "||" 
} 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
