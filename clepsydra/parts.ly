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


engraveGlobal = {
  \compressFullBarRests
}

\header {
  title = "Clepsydra"
  %instrument = "Orchestra"
  composer = "Randall West"
  tagline = "Copyright 2015 Randall West."
}


\include "music/bubbles.ly"
\include "staves.ly"

%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Flutes"
  \score {
      \new StaffGroup <<
     \fluteOneStaff
     \fluteTwoStaff
     >>
     \header { piece = "Flute 1, 2" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Oboes"
  \score {
      \new StaffGroup <<
     \oboeOneStaff
     \oboeTwoStaff
     >>
     \header { piece = "Oboe 1, 2" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Clarinets"
  \score {
      \new StaffGroup <<
     \transpose c d  \clarinetOneStaff
     \transpose c d  \clarinetTwoStaff
     >>
     \header { piece = "Clarinet in Bb 1, 2" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Bassoons"
  \score {
      \new StaffGroup <<
     \bassoonOneStaff
     \bassoonTwoStaff
     >>
     \header { piece = "Bassoon 1, 2" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Horns-1-2"
  \score {
      \new StaffGroup <<
     \transpose c g \hornOneStaff
     \transpose c g \hornTwoStaff
     >>
     \header { piece = "Horn in F 1, 2" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Horns-3-4"
  \score {
      \new StaffGroup <<
     \transpose c g \hornThreeStaff
     \transpose c g \hornFourStaff
     >>
     \header { piece = "Horn in F 3, 4" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Trumpets"
  \score {
      \new StaffGroup <<
     \trumpetOneStaff
     \trumpetTwoStaff
     >>
     \header { piece = "Trumpet in C 1, 2" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Trombones"
  \score {
      \new StaffGroup <<
     \tromboneOneStaff
     \tromboneTwoStaff
     >>
     \header { piece = "Trombone 1, 2" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Clepsydra.Tuba"
  \score {
     \tubaStaff
     \header { piece = "Tuba" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}