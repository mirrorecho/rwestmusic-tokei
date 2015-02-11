\version "2.18.2"
\language "english"

%#(set! paper-alist (cons '("10x13" . (cons (* 10 in) (* 13 in))) paper-alist))

\paper {
  %#(set-paper-size "10x13")
  system-system-spacing #'basic-distance = #12
  system-system-spacing #'padding = #9
}  

#(set-global-staff-size 15)

showScoreStuff = 0
showPartStuff = 1

scoreBreak = {}
scoreNoBreak = {}
partBreak = {\break}
partNoBreak = {\noBreak}


engraveGlobal = {
  \compressFullBarRests
}

calliopeRehearsalMark = #(define-music-function (parser location text) 
  (string?)
  #{
   \mark \markup \fontsize #3.3 { \circle \bold $text }
#})

\header {
  title = "Kairos
"
  %instrument = "Orchestra"
  composer = "Randall West"
  tagline = "Copyright 2015 Randall West."
}


\include "music/bubbles.ly"
\include "staves.ly"

drumStaff = \new RhythmicStaff \with {
  \override SystemStartBracket #'style = #'bar-line
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.6
  %\override Staff.InstrumentName #'self-alignment-X = #RIGHT


  s1
  ^"ad lib, rif off of these lines throughout"
  ^"slow crescnedo, accel., throughout"

  c4 _ \markup { don }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }

  c4 _ \markup { don }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }


  c4 _ \markup { don }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }

  c4 _ \markup { don }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }

  \break

  c4._don c4._don c4_do
  c4._don c4._don c4_do
  c4._don c4._don c4_do
  c4._don c4._don c4_do


\break

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


  \break


  r2
  r4
  c8 [ _ \markup { don }
  c16 _ \markup { do }
  c16 ] _ \markup { ko }
  c8 _ \markup { do }
  c8 _ \markup { ko }
  r4
  r4
  c8 [ _ \markup { don }
  c16 _ \markup { do }
  c16 ] _ \markup { ko }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }
  r4
  c8 [ _ \markup { don }
  c16 _ \markup { do }
  c16 ] _ \markup { ko }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }
  c8 [ _ \markup { do }
  c8 ] _ \markup { ko }
  c8 [ _ \markup { don }
  c16 _ \markup { do }
  c16 ] _ \markup { ko }
  r2
  r4
  c8 [ _ \markup { don }
  c16 _ \markup { do }
  c16 ] _ \markup { ko }


\break

%  c8_don[ c16_do c_ko] c8_don c8_don 
%  c8_don[ c16_do c_ko] c8_don c8_don 
%  c8_don[ c16_do c_ko] c8_don c8_don 
%  c8_don[ c16_do c_ko] c8_don c8_don 

%  c8_do [ c_do ] c_do [ c_don ] r8 [ c_do ] c8_don [ c16_do c_ko ] 
%  c16_do [ c_ko c8_don ] r8 [ c_don ] r [ c_do ] c4_don 

% \break

}




\book {
  \bookOutputName "RandallWest-Kairos.Taiko"
  \score {
     \drumStaff
     

     \header { piece = "Taiko (and Orchestra Percussion)" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
        }
        \context {
          \RhythmicStaff
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \Staff
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff 
          % % \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }

