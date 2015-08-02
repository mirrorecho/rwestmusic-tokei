\version "2.18.0"

% -------------------------------------------------------------------------


% -------------------------------------------------------------------------
% TESTING LAYOUT FUNCTIONS.... (doesn't work yet)

##(set! paper-alist (cons '("11x14" . (cons (* 11 in) (* 14 in))) paper-alist))

#(set-global-staff-size 16)

\paper {
  indent = 0\mm
  %system-separator-markup = \slashSeparator
  system-system-spacing #'basic-distance = #4
  system-system-spacing #'padding = #8
}


\header {
  title = "Tokei for Taiko and Orchestra - Material for Rehearsal 1"
  %instrument = "Orchestra"
  composer = "Randall West"
  %poet = \markup { \box "SCORE IN C" } %HACKY WAY TO GET SCORE IN C IN THERE !!!!!!
  tagline = "Copyright 2015 Randall West. All rights reserved."
}

partOverrides = {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \override Staff.TimeSignature #'break-visibility = #'#(#f #f #f)
  \override Score.SpacingSpanner.uniform-stretching = ##t
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \numericTimeSignature
  %\overrideProperty NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 12) (alignment-distances . (12)))
}

taikoMusic = {
  \textLengthOn
  \dynamicUp

  \tempo \markup \large "Clepsydra Melody"

  r4_"tsu" r8 c8_"do"\<\p  c_"do"[ c_"ko" ]  c_"do"[ c_"don"]^>\f | r8 c8_don r8 c8_don r8 c8_don d4^>_don |
  c8_da^>\p\<   c8_da  r8_"tsu"   c8_da   c8_da^>  c8_da r8_"tsu"   c8_da |
  c8_da^>[  c8_da]   c8_ka[  c8_ka^>]      r8  c8_ka   r8  c8_ka |
  c4_don\mf   r8   c8_don      r8   c8_don                r8   c8_"do"\p\<   |
  c_"do"[ c_"ko" ]  c_"do"[ c_"don"]^>\f r2  \bar "|."

  \break


  \tempo \markup \large "Wadokei Intro"

  \time 9/8
  c4._don  r4.  r4.  | r4._tsu   r4.  r4.     \break
  c4._don  r4.  r4.  | r4._tsu   r4.  r4.  \break
  r4.    c4._do   c4._do   |  c4._don  r4.  r4.   \break
  c4._don  r4.  r4.  | r4._tsu   r4.  r4.     

  \bar "|."
  \break

  \tempo \markup \large "Wadokei Melody"
  r4._tsu    c4._don   c4._don   |    r4_tsu  c8_don    r4  c8_do   c4_do   c8_ko   |  \break
  \bar ".|:" c4._don^"(2 times)"   c4._don   r4._tsu      |c4._ka   c4._don   r4._tsu  \bar ":|."   \break

  r4_tsu  c8_don    r4  c8_do  c8_ka c8_ra  c8_ka | r4._tsu    c4._don   c4._don 
 
  \bar "|."
  \break


  \tempo \markup \large "Wadokei Pattern 1 (Melody part B  ... repeat 4 times)"


  \bar ".|:"
  c4_don  c8_don     r4_tsu  c8_don   r4_tsu  c8_do
  c4_ka  c8_don     r4_tsu  c8_don   r4_tsu  c8_do
  \bar ":|."
 
  \bar "|."
  \break


  \tempo \markup \large "Wadokei Pattern 2"
  c4._don   c4._don   r4._tsu      |c4._ka   c4._don   r4._tsu
  \bar "|."
  \break



  \tempo \markup \large "Caesium Melody"

  \time 10/8

  c8_don[ r8 r8]    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |       
  \time 7/8    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |     
  c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8] \bar "|."




  \tempo \markup \large "Caesium Pattern 1"

  \time 4/4

  c8_do[  c8_ko]   c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] | 
  c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] 
  r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don 
  \bar "|."


  \tempo "Caesium Pattern 2  (4 times)"

  \bar ".|:" c8_ka^"R"[ c8_do  c8_don]   c8_ka^"L"[ c8_do  c8_don ]
  \bar ":|."




}




taikoStaff = \new RhythmicStaff \with {
  %instrumentName = \fluteComboName
  %shortInstrumentName = \fluteComboName
  midiInstrument = "percussion"
  } {
    \partOverrides
    \taikoMusic
  }


  \book {
  \bookOutputName  "TAIKO_REHEARSALS"
  %\bookOutputName  #(string-append "VAR OF EACH - " fluteComboName " - " clarinetComboName) 
  \score {
    <<
      \taikoStaff
    >>
      \layout {
        ragged-right = ##t
        ragged-bottom = ##t
        \context {
        }
    }
  }



}
