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
  title = "Caesium"
  %instrument = "Orchestra"
  composer = "Randall West"
  tagline = "Copyright 2015 Randall West."
}


\include "music/bubbles.ly"
\include "staves.ly"

%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Caesium.Flutes"
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
  \bookOutputName "RandallWest-Caesium.Oboes"
  \score {
      \new StaffGroup <<
     \oboeOneStaff
     \oboeTwoStaff
     \oboeThreeStaff
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
  \bookOutputName "RandallWest-Caesium.Clarinets"
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
  \bookOutputName "RandallWest-Caesium.Bassoons"
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
  \bookOutputName "RandallWest-Caesium.Horns-1-2"
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
  \bookOutputName "RandallWest-Caesium.Horns-3-4"
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
  \bookOutputName "RandallWest-Caesium.Trumpets"
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
  \bookOutputName "RandallWest-Caesium.Trombones"
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
  \bookOutputName "RandallWest-Caesium.Tuba"
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
\book {
  \bookOutputName "RandallWest-Caesium.Percussion"
  \score {
      \percStaves
     \header { piece = "Percussion" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff %{\RemoveEmptyStaves %}
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
}
%%{---------------------------------------------------------------------------
% \book {
%         \paper {
%           %#(set-paper-size "10x13")
%           left-margin = 20\mm  % FOR PERCUSSION ONLY????
%           system-system-spacing #'basic-distance = #14
%           system-system-spacing #'padding = #12
%         }
%   \bookOutputName "RandallWest-Caesium.Percussion"
%   \score {
%       \new StaffGroup <<
%       {
%         \new StaffGroup \with  {
%           instrumentName = "1"
%           shortInstrumentName = "1"
%         } {
%           \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
%           \new RhythmicStaff 
%           {
%             \override Staff.InstrumentName #'self-alignment-Y = #1.6
%             \percussionOne
%           }
%         }
%       }
%       {
%         \new StaffGroup \with  {
%           instrumentName = "2"
%           shortInstrumentName = "2"
%         } {
%           \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
%           \new RhythmicStaff 
%           {
%             \override Staff.InstrumentName #'self-alignment-Y = #1.6
%             \percussionTwo
%           }
%         }
%       }
%       >>
%      \header { piece = "Percussion" }
%       \layout {
%         \context {\Voice \remove "Instrument_switch_engraver" }
%         \context {\Staff \remove "Instrument_switch_engraver" }
%         \context {
%           \Score
%           \override MultiMeasureRest #'expand-limit = #1
%           \override BarNumber #'font-size = #1.4
%           \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
%         }
%         \context {
%           \Staff
%           \override Hairpin #'minimum-length = #6
%         }
%         \context {
%           \RhythmicStaff
%           \override Hairpin #'minimum-length = #6
%         }
%       }
%     }
%   }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Caesium.ViolinI"
  \score {
      \violinIStaves
     \header { piece = "Violin I" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff %{\RemoveEmptyStaves %}
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Caesium.ViolinII"
  \score {
      \violinIIStaves
     \header { piece = "Violin II" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff %{\RemoveEmptyStaves %}
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Caesium.Viola"
  \score {
      \violaStaves
     \header { piece = "Viola" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff %{\RemoveEmptyStaves %}
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Caesium.Cello"
  \score {
      \celloStaves
     \header { piece = "Cello" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff %{\RemoveEmptyStaves %}
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Caesium.Bass"
  \score {
      \bassStaff
     \header { piece = "Bass" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff %{\RemoveEmptyStaves %}
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}


%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Caesium.TAIKO"
  \score {
      \taikoStaves
     \header { piece = "Taiko" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff %{\RemoveEmptyStaves %}
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}