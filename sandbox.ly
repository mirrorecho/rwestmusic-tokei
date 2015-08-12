
myBass = { \clef bass g8 g g4 g g }

\score {

    <<

    % score layout
    \new Staff <<
      \context Voice = "one" {}
    >>
    \new Staff <<
      \context Voice = "two" {}
    >>


    % musical content
    \context Voice = "two" {
      \relative c' {
        \myBass
      }
    }
    \context Voice = "one" {
      \relative c'' {
        c4 c c d
      }
    }

  >>

}