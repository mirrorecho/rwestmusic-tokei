\version "2.18.2"
\language "english"

#(set! paper-alist (cons '("10x13" . (cons (* 10 in) (* 13 in))) paper-alist))

\paper {
  #(set-paper-size "10x13")
  system-system-spacing #'basic-distance = #12
  system-system-spacing #'padding = #9
}  

#(set-global-staff-size 16)

showScoreStuff = 0
showPartStuff = 1

scoreBreak = {}
scoreNoBreak = {}
partBreak = {\break}
partNoBreak = {\noBreak}


\header {
    title = "Clepsydra"
    %instrument = "Orchestra"
    composer = "Randall West"
    tagline = "Copyright 2015 Randall West."
}


\include "music/bubbles.ly"
\include "staves.ly"


\score {
  <<
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \override Score.BarNumber #'font-size = #1.4
    \override Score.BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.RehearsalMark #'font-size = #2
    \set Score.markFormatter = #format-mark-circle-letters

    \windsStaves
    \brassStaves
    \timpaniStaff
    \percussionStaves
    \stringStaves
  >>
