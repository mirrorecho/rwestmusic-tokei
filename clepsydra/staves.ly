\version "2.18.2"
\language "english"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% winds staves:

fluteOneStaff = \new Staff \with {
  instrumentName = "Flute 1"
  shortInstrumentName = "Fl. 1"
  midiInstrument = "flute"
} \fluteOne

fluteTwoStaff = \new Staff \with {
  instrumentName = "Flute 2"
  shortInstrumentName = "Fl. 2"
  midiInstrument = "flute"
} \fluteTwo

oboeOneStaff = \new Staff \with {
  instrumentName = "Oboe 1"
  shortInstrumentName = "Ob. 1"
  midiInstrument = "oboe"
} \oboeOne

oboeTwoStaff = \new Staff \with {
  instrumentName = "Oboe 2"
  shortInstrumentName = "Ob. 2"
  midiInstrument = "oboe"
} \oboeTwo

oboeThreeStaff = \new Staff \with {
  instrumentName = "Oboe 3"
  shortInstrumentName = "Ob. 3"
  midiInstrument = "oboe"
} \oboeThree

clarinetOneStaff = \new Staff \with {
  instrumentName = "Clarinet in Bb 1"
  shortInstrumentName = "Cl. 1"
  midiInstrument = "clarinet"
} \clarinetOne

clarinetTwoStaff = \new Staff \with {
  instrumentName = "Clarinet in Bb 2"
  shortInstrumentName = "Cl. 2"
  midiInstrument = "clarinet"
} \clarinetTwo

bassoonOneStaff = \new Staff \with {
  instrumentName = "Bassoon 1"
  shortInstrumentName = "Bsn. 1"
  midiInstrument = "bassoon"
} {\clef bass \bassoonOne }

bassoonTwoStaff = \new Staff \with {
  instrumentName = "Bassoon 2"
  shortInstrumentName = "Bsn. 2"
  midiInstrument = "bassoon"
} {\clef bass \bassoonTwo }

windsStaves = \new StaffGroup 
<<
    \fluteOneStaff
    \fluteTwoStaff
    \oboeOneStaff
    \oboeTwoStaff
    \oboeThreeStaff
    \clarinetOneStaff
    \clarinetTwoStaff
    \bassoonOneStaff
    \bassoonTwoStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% brass staves:

hornOneStaff = \new Staff \with {
  instrumentName = "Horn in F 1"
  shortInstrumentName = "Hn. 1"
  midiInstrument = "horn"
} \hornOne

hornTwoStaff = \new Staff \with {
  instrumentName = "Horn in F 2"
  shortInstrumentName = "Hn. 2"
  midiInstrument = "horn"
} \hornTwo

hornThreeStaff = \new Staff \with {
  instrumentName = "Horn in F 3"
  shortInstrumentName = "Hn. 3"
  midiInstrument = "horn"
} \hornThree

hornFourStaff = \new Staff \with {
  instrumentName = "Horn in F 4"
  shortInstrumentName = "Hn. 4"
  midiInstrument = "horn"
} \hornFour

trumpetOneStaff = \new Staff \with {
  instrumentName = "Trumpet in C 1"
  shortInstrumentName = "Tpt. 1"
  midiInstrument = "trumpet"
} \trumpetOne

trumpetTwoStaff = \new Staff \with {
  instrumentName = "Trumpet in C 2"
  shortInstrumentName = "Tpt. 2"
  midiInstrument = "trumpet"
} \trumpetTwo

tromboneOneStaff = \new Staff \with {
  instrumentName = "Trombone 1"
  shortInstrumentName = "Tbn. 1"
  midiInstrument = "trombone"
} {\clef bass \tromboneOne }

tromboneTwoStaff = \new Staff \with {
  instrumentName = "Trombone 2"
  shortInstrumentName = "Tbn. 2"
  midiInstrument = "trombone"
} {\clef bass \tromboneTwo }

tubaStaff = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "Tba."
  midiInstrument = "tuba"
} {\clef bass \tuba }

brassStaves = \new StaffGroup  
<<
    \hornOneStaff
    \hornTwoStaff
    \hornThreeStaff
    \hornFourStaff
    \trumpetOneStaff
    \trumpetTwoStaff
    \tromboneOneStaff
    \tromboneTwoStaff
    \tubaStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% timpani, percussion, and harp staves:

crotalesStaff = \new Staff \with {
  instrumentName = ""
  midiInstrument = "piano"
} \crotales
percussionOneStaff = \new RhythmicStaff \with {
  midiInstrument = "percussion"
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.6
  %\override Staff.InstrumentName #'self-alignment-X = #RIGHT
  \percOne
}
percussionOneStaffGroup = \new StaffGroup \with  {
  instrumentName = "Percussion 1"
  shortInstrumentName = "Perc. 1"
  \override SystemStartBracket #'style = #'bar-line
} {
  %\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT 

  \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
  <<
  \crotalesStaff
  \percussionOneStaff
  >>
}

percussionTwoStaff = \new RhythmicStaff \with {
  midiInstrument = "percussion"
  \override SystemStartBracket #'style = #'bar-line
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.6
  %\override Staff.InstrumentName #'self-alignment-X = #RIGHT
  \percTwo
}
timpaniStaff = \new Staff \with {
  instrumentName = "Timpani"
  shortInstrumentName = "Timp."
  midiInstrument = "timpani"
} {\clef bass \timpani }

percussionTwoStaffGroup = \new StaffGroup \with  {
  instrumentName = "Percussion 2"
  shortInstrumentName = "Perc. 2"
  \override SystemStartBracket #'style = #'bar-line
} {
  %\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT 
  \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
  <<
  \percussionTwoStaff
  \timpaniStaff
  >>
}

percussionStaves = \new StaffGroup 
<<
    \percussionOneStaffGroup
    \percussionTwoStaffGroup
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% taiko staves:


shimeStaff = \new RhythmicStaff \with {
  instrumentName = "Shime"
  shortInstrumentName = "Sh."
  midiInstrument = "percussion"
} \shime
% NO ODAIKO STAFF IN CLEPSYDRA....
% odaikoStaff = \new RhythmicStaff \with {
%   instrumentName = "Odaiko"
%   shortInstrumentName = "O."
%   midiInstrument = "percussion"
% } \odaiko
taikoOneStaff = \new RhythmicStaff \with {
  instrumentName = "Taiko A"
  shortInstrumentName = "T.A"
  midiInstrument = "percussion"
} \taikoOne
taikoTwoStaff = \new RhythmicStaff \with {
  instrumentName = "Taiko B"
  shortInstrumentName = "T.B"
  midiInstrument = "percussion"
} \taikoTwo


taikoStaves = \new StaffGroup 
<<
    \shimeStaff
    % \odaikoStaff
    \taikoOneStaff
    \taikoOneStaff
>>



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% string staves:

violinIDivOneStaff = \new Staff \with {
  instrumentName = "div 1"
  shortInstrumentName = "1"
  midiInstrument = "violin"
} \violinIDivOne

violinIDivTwoStaff = \new Staff \with {
  instrumentName = "div 2"
  shortInstrumentName = "2"
  midiInstrument = "violin"
} \violinIDivTwo

violinIStaves = \new StaffGroup = violinIStaves \with {
  instrumentName ="Violin I"
  shortInstrumentName = "Vln.I"
  \override SystemStartBracket #'style = #'bar-line
} <<
  \violinIDivOneStaff
  \violinIDivTwoStaff
>>

violinIIDivOneStaff = \new Staff \with {
  instrumentName = "div 1"
  shortInstrumentName = "1"
  midiInstrument = "violin"
} \violinIIDivOne

violinIIDivTwoStaff = \new Staff \with {
  instrumentName = "div 2"
  shortInstrumentName = "2"
  midiInstrument = "violin"
} \violinIIDivTwo

violinIIStaves = \new StaffGroup = violinIIStaves \with {
  instrumentName ="Violin II"
  shortInstrumentName = "Vln.II"
  \override SystemStartBracket #'style = #'bar-line
} <<
  \violinIIDivOneStaff
  \violinIIDivTwoStaff
>>

violaDivOneStaff = \new Staff \with {
  instrumentName = "div 1"
  shortInstrumentName = "1"
  midiInstrument = "viola"
} {\clef alto  \violaDivOne}

violaDivTwoStaff = \new Staff \with {
  instrumentName = "div 2"
  shortInstrumentName = "2"
  midiInstrument = "viola"
}  {\clef alto \violaDivTwo }

violaStaves = \new StaffGroup = violaStaves \with {
  instrumentName ="Viola"
  shortInstrumentName = "viola"
  \override SystemStartBracket #'style = #'bar-line
} <<
  \violaDivOneStaff
  \violaDivTwoStaff
>>

celloDivOneStaff = \new Staff \with {
  instrumentName = "div 1"
  shortInstrumentName = "1"
  midiInstrument = "cello"
} {\clef bass \celloDivOne }

celloDivTwoStaff = \new Staff \with {
  instrumentName = "div 2"
  shortInstrumentName = "2"
  midiInstrument = "cello"
} {\clef bass \celloDivTwo }

celloStaves = \new StaffGroup = violaStaves \with {
  instrumentName ="Cello"
  shortInstrumentName = "Vc."
  \override SystemStartBracket #'style = #'bar-line
} <<
  \celloDivOneStaff
  \celloDivTwoStaff
>>

bassDivOneStaff = \new Staff \with {
  instrumentName = "div 1"
  shortInstrumentName = "1"
  midiInstrument = "bass"
} {\clef bass \bassDivOne }

bassDivTwoStaff = \new Staff \with {
  instrumentName = "div 2"
  shortInstrumentName = "2"
  midiInstrument = "bass"
} {\clef bass \bassDivTwo }

bassStaves = \new StaffGroup = violaStaves \with {
  instrumentName ="Bass"
  shortInstrumentName = "Cb."
  \override SystemStartBracket #'style = #'bar-line
} <<
  \bassDivOneStaff
  \bassDivTwoStaff
>>

stringStaves = \new StaffGroup 
<<
    \violinIStaves
    \violinIIStaves
    \violaStaves
    \celloStaves
    \bassStaves
>>