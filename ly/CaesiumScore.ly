% 2015-08-17 21:03

\version "2.18.2"
\language "english"

#(set-global-staff-size 12)

\header {
    composer = \markup { Randall West }
    title = \markup {}
}

\layout {
    \context {
        \override VerticalAxisGroup #'remove-first = ##t
    }
    \context {
        \override VerticalAxisGroup #'remove-first = ##t
    }
}

\paper {
    bottom-margin = 0.5\in
    left-margin = 0.75\in
    paper-height = 17\in
    paper-width = 11\in
    right-margin = 0.5\in
    system-separator-markup = \slashSeparator
    system-system-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 20) (stretchability . 0))
    top-margin = 0.5\in
}

\score {
    \new Score <<
        \new StaffGroup <<
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \set Staff.instrumentName = \markup { Flute 1 }
                    \set Staff.shortInstrumentName = \markup { Fl.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Flute 2 }
                    \set Staff.shortInstrumentName = \markup { Fl.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \set Staff.instrumentName = \markup { Oboe 1 }
                    \set Staff.shortInstrumentName = \markup { Ob.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Oboe 2 }
                    \set Staff.shortInstrumentName = \markup { Ob.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \set Staff.instrumentName = \markup { Clarinet 1 }
                    \set Staff.shortInstrumentName = \markup { Cl.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Clarinet 2 }
                    \set Staff.shortInstrumentName = \markup { Cl.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \clef "bass"
                    \set Staff.instrumentName = \markup { Bassoon 1 }
                    \set Staff.shortInstrumentName = \markup { Bsn.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \clef "bass"
                    \set Staff.instrumentName = \markup { Bassoon 2 }
                    \set Staff.shortInstrumentName = \markup { Bsn.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
        >>
        \new StaffGroup <<
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \set Staff.instrumentName = \markup { Horn in F 1 }
                    \set Staff.shortInstrumentName = \markup { Hn.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Horn in F 2 }
                    \set Staff.shortInstrumentName = \markup { Hn.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Horn in F 3 }
                    \set Staff.shortInstrumentName = \markup { Hn.3 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Horn in F 4 }
                    \set Staff.shortInstrumentName = \markup { Hn.4 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \set Staff.instrumentName = \markup { Trumpet in C 1 }
                    \set Staff.shortInstrumentName = \markup { Tpt.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Trumpet in C 2 }
                    \set Staff.shortInstrumentName = \markup { Tpt.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \clef "bass"
                    \set Staff.instrumentName = \markup { Tenor Trombone 1 }
                    \set Staff.shortInstrumentName = \markup { Tbn.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \clef "bass"
                    \set Staff.instrumentName = \markup { Tenor Trombone 2 }
                    \set Staff.shortInstrumentName = \markup { Tbn.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new Staff {
                \clef "bass"
                \set Staff.instrumentName = \markup { Tuba }
                \set Staff.shortInstrumentName = \markup { Tba }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                }
            }
        >>
        \new StaffGroup <<
            \new Staff {
                \set Staff.instrumentName = \markup { Crotales }
                \set Staff.shortInstrumentName = \markup { Cro. }
            }
            \new RhythmicStaff {
                \clef "percussion"
                \set Staff.instrumentName = \markup { Percussion 1 }
                \set Staff.shortInstrumentName = \markup { Perc.1 }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                }
            }
            \new RhythmicStaff {
                \clef "percussion"
                \set Staff.instrumentName = \markup { Percussion 2 }
                \set Staff.shortInstrumentName = \markup { Perc.2 }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                }
            }
            \new Staff {
                \clef "bass"
                \set Staff.instrumentName = \markup { Timpani }
                \set Staff.shortInstrumentName = \markup { Timp }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            {
                                <a, bf,>4 -\accent
                            }
                            r4
                            r2
                            R1
                            R1
                        }
                        {
                            {
                                <a, bf,>4 -\accent
                            }
                            r4
                            r2
                            R1
                            R1
                        }
                        {
                            {
                                <a, bf,>4 -\accent
                            }
                            r4
                            r2
                            R1
                            R1
                        }
                        {
                            {
                                <a, bf,>4 -\accent
                            }
                            r4
                            r2
                            R1
                            R1
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                }
            }
        >>
        \new StaffGroup <<
            \new RhythmicStaff {
                \clef "percussion"
                \set Staff.instrumentName = \markup { Shime }
                \set Staff.shortInstrumentName = \markup { Sh. }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                }
            }
            \new RhythmicStaff {
                \clef "percussion"
                \set Staff.instrumentName = \markup { Odaiko }
                \set Staff.shortInstrumentName = \markup { O.d. }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                }
            }
            \new RhythmicStaff {
                \clef "percussion"
                \set Staff.instrumentName = \markup { Taiko 1 }
                \set Staff.shortInstrumentName = \markup { T.1 }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        } 
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        } 
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                } 
            }
            \new RhythmicStaff {
                \clef "percussion"
                \set Staff.instrumentName = \markup { Taiko 2 }
                \set Staff.shortInstrumentName = \markup { T.2. }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                        {
                            \time 4/4
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                            b8
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                    }
                }
            }
        >>
        \new StaffGroup <<
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \set Staff.instrumentName = \markup { Violin I Div 1 }
                    \set Staff.shortInstrumentName = \markup { Vln.I.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Violin I Div 2 }
                    \set Staff.shortInstrumentName = \markup { Vln.I.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \set Staff.instrumentName = \markup { Violin II Div 1 }
                    \set Staff.shortInstrumentName = \markup { Vln.II.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \set Staff.instrumentName = \markup { Violin II Div 2 }
                    \set Staff.shortInstrumentName = \markup { Vln.II.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \clef "alto"
                    \set Staff.instrumentName = \markup { Viola Div 1 }
                    \set Staff.shortInstrumentName = \markup { Vla.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \clef "alto"
                    \set Staff.instrumentName = \markup { Viola Div 2 }
                    \set Staff.shortInstrumentName = \markup { Vla.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new StaffGroup \with {
                systemStartDelimiter = #'SystemStartSquare
            } <<
                \new Staff {
                    \clef "bass"
                    \set Staff.instrumentName = \markup { Cello Div 1 }
                    \set Staff.shortInstrumentName = \markup { Vc.1 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
                \new Staff {
                    \clef "bass"
                    \set Staff.instrumentName = \markup { Cello Div 2 }
                    \set Staff.shortInstrumentName = \markup { Vc.2 }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \numericTimeSignature
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                        }
                        {
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                            {
                                \time 4/4
                                R1
                                R1
                                R1
                            }
                        }
                        {
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                            {
                                \time 24/8
                                r4.
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4.
                                r4
                                r4
                                \bar "!"
                                r4
                                r4
                                r4.
                            }
                        }
                        {
                            \once \override Staff.TimeSignature.stencil = ##f
                            {
                                \time 2/4
                                s8
                                r4 -\fermata
                                s8
                            }
                        }
                    }
                }
            >>
            \new Staff {
                \clef "bass"
                \set Staff.instrumentName = \markup { Bass }
                \set Staff.shortInstrumentName = \markup { Cb }
                {
                    \once \override Staff.TimeSignature.stencil = ##f
                    {
                        \numericTimeSignature
                        \time 2/4
                        s8
                        r4 -\fermata
                        s8
                    }
                    {
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                        {
                            \time 4/4
                            R1
                            R1
                            R1
                        }
                    }
                    {
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                        {
                            \time 24/8
                            r4.
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4.
                            r4
                            r4
                            \bar "!"
                            r4
                            r4
                            r4.
                        }
                    }
                    {
                        \once \override Staff.TimeSignature.stencil = ##f
                        {
                            \time 2/4
                            s8
                            r4 -\fermata
                            s8
                            \bar "|."
                        }
                    }
                }
            }
        >>
    >>
}