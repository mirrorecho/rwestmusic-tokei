\version "2.18.2"
\language "english"

\paper {
  #(set-paper-size "tabloid")
  %#(set-paper-size "letter")
  left-margin = 22\mm
  system-separator-markup = \slashSeparator
}

#(set-global-staff-size 12)
showScoreStuff = 1
showPartStuff = 0

scoreBreak = {\break}
scoreNoBreak = {\noBreak}
partBreak = {}
partNoBreak = {}
engraveGlobal = {}

calliopeRehearsalMark = #(define-music-function (parser location text) 
  (string?)
  #{
   \mark \markup \fontsize #3.3 { \circle \bold $text }
#})

\include "music/bubbles.ly"


\include "staves.ly"

\header {
  title = "Caesium"
  %instrument = "Orchestra"
  composer = "Randall West"
  poet = \markup { \box "SCORE IN C" } %HACKY WAY TO GET SCORE IN C IN THERE !!!!!!
  tagline = "Copyright 2015 Randall West."
}




\score {
  <<
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \override Score.BarNumber #'font-size = #1.4
    \override Score.BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.RehearsalMark #'font-size = #2
    \set Score.markFormatter = #format-mark-circle-letters

    \windsStaves
    \brassStaves
    \percussionStaves
    \taikoStaves
    \stringStaves
  >>
  \layout {
    \context {\Voice \remove "Instrument_switch_engraver" }
    \context {\Staff \remove "Instrument_switch_engraver" }

    % \context {\RhythmicStaff \RemoveEmptyStaves
    %       \override VerticalAxisGroup #'remove-first = ##t
    %       \override Hairpin #'minimum-length = #6
    %   }
    % \context {\Staff \RemoveEmptyStaves
    %       \override VerticalAxisGroup #'remove-first = ##t
    %       \override Hairpin #'minimum-length = #6
    %   } 
  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 116 4)
    }
  }
}