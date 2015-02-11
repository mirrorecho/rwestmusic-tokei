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

TaikoAStaff = \new RhythmicStaff \with {
  \override SystemStartBracket #'style = #'bar-line
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.6
  %\override Staff.InstrumentName #'self-alignment-X = #RIGHT


\time 4/4

\numericTimeSignature

\tempo \markup {\box { "Ma!" }}
r1 \fermata

\break 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\calliopeRehearsalMark "A"
\tempo \markup {\box { "do ko x 12  | 4 TIMES" }}
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
\break
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
\break
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
\break
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko] c8_do[ c8_ko]
\break
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\calliopeRehearsalMark "B"
\tempo \markup {\box { "Melody | 4 TIMES" }}
  \time 10/8
 c8_don[ r8 r8]    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |       
  \time 7/8    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |     
  c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8] 
 \break
  \time 10/8
 c8_don[ r8 r8]    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |       
  \time 7/8    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |     
  c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8]
 \break
  \time 10/8
 c8_don[ r8 r8]    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |       
  \time 7/8    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |     
  c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8] 
 \break
  \time 10/8
 c8_don[ r8 r8]    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |       
  \time 7/8    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |     
  c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8] 
 \break
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\calliopeRehearsalMark "C"
\tempo \markup {\box { "Ma!" }}
r1 \fermata
\break
\tempo \markup {\box { "Pattern 2 | (ka don don) " }}
c8_ka^"R"[ c8_do  c8_don]   c8_ka^"L"[ c8_do  c8_don ]
c8_ka^"R"[ c8_do  c8_don]   c8_ka^"L"[ c8_do  c8_don ]
c8_ka^"R"[ c8_do  c8_don]   c8_ka^"L"[ c8_do  c8_don ]
c8_ka^"R"[ c8_do  c8_don]   c8_ka^"L"[ c8_do  c8_don ]
\break
\tempo \markup {\box { "Pattern 1 | (ka don don) " }}
  \time 4/4
  c8_do[  c8_ko]   c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] | 
  c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] c8_do[  c8_ko] 
  r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don r8_tsu c8->_don 
\break
\tempo \markup {\box { "Melody" }}
  \time 10/8
 c8_don[ r8 r8]    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |       
  \time 7/8    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |     
  c8_don[ r8]  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\calliopeRehearsalMark "D"
\tempo \markup {\box { "Orchestra Only | 12 Beats X 4" }}
r4 r4 r4 r4 | r4 r4 r4 r4  | r4 r4 r4 r4 \break
r4 r4 r4 r4 | r4 r4 r4 r4  | r4 r4 r4 r4 \break
r4 r4 r4 r4 | r4 r4 r4 r4  | r4 r4 r4 r4 \break
r4 r4 r4 r4 | r4 r4 r4 r4  | r4 r4 r4 r4 \break

}



TaikoBStaff = \new RhythmicStaff \with {
  \override SystemStartBracket #'style = #'bar-line
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.6
  %\override Staff.InstrumentName #'self-alignment-X = #RIGHT


\time 4/4

\numericTimeSignature

\tempo \markup {\box { "Ma!" }}

r1 \fermata
\break 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\calliopeRehearsalMark "A"
\tempo \markup {\box { "do ko x 12  | 4 TIMES" }}
s1*12 s1*12 s1*12 s1*12
\break


  % \time 10/8

  % c8_don[ r8 r8]    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |       
  % \time 7/8    c8_don[ r8 r8]     c8_don[ r8]        c8_don[ r8]     |     
  % c8_don[ r8]        c8_don[ r8]     c8_don[ r8 r8] \bar "|."
 

\break
}




\book {
  \bookOutputName "RandallWest-Caesium.Taiko"
  \score {
     <<
     \TaikoAStaff
     \TaikoBStaff
     >>

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
          \RemoveEmptyStaves
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \Staff
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff 
            \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }

