\language "english"

\numericTimeSignature

\context Score = "full-score" <<
    \context Staff = "flute1" {
        \set Staff.instrumentName = \markup { Flute 1 }
        \set Staff.shortInstrumentName = \markup { Fl.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "flute2" {
        \set Staff.instrumentName = \markup { Flute 2 }
        \set Staff.shortInstrumentName = \markup { Fl.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            {
                s8
                \grace {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                \afterGrace
                a'2. \f )
                {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
            }
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            {
                s8
                \grace {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                \afterGrace
                a'2. \f )
                {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
            }
        }
        {
            \time 10/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            \time 7/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            \bar "||"
        }
        {
            \time 10/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            \time 7/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            {
                s8
                \grace {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                \afterGrace
                a'2. \f )
                {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
            }
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "oboe1" {
        \set Staff.instrumentName = \markup { Oboe 1 }
        \set Staff.shortInstrumentName = \markup { Ob.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "oboe2" {
        \set Staff.instrumentName = \markup { Oboe 2 }
        \set Staff.shortInstrumentName = \markup { Ob.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            {
                s8
                \grace {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                \afterGrace
                a'2. \f )
                {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
            }
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            {
                s8
                \grace {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                \afterGrace
                a'2. \f )
                {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
            }
        }
        {
            \time 10/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            \time 7/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            \bar "||"
        }
        {
            \time 10/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            \time 7/8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
        }
        {
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            b''8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            {
                s8
                \grace {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                a'2. \f )
                b'1 \p \< (
                \afterGrace
                a'2. \f )
                {
                    \hideNotes
                    r32
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'(-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4)
                    \startStaff
                    \hideNotes
                    r16
                    \unHideNotes
                    \stopStaff
                    \override Staff.StaffSymbol #'line-positions = #'()
                    \startStaff
                }
            }
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "oboe3" {
        \set Staff.instrumentName = \markup { Oboe 3 }
        \set Staff.shortInstrumentName = \markup { Ob.3 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "clarinet1" {
        \set Staff.instrumentName = \markup { Clarinet 1 in Bb }
        \set Staff.shortInstrumentName = \markup { Cl.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
        }
        {
            \time 7/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
        }
        {
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            \bar "||"
        }
        {
            \time 10/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
        }
        {
            \time 7/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
        }
        {
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "clarinet2" {
        \set Staff.instrumentName = \markup { Clarinet 2 in Bb }
        \set Staff.shortInstrumentName = \markup { Cl.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
        }
        {
            \time 7/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
        }
        {
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            \bar "||"
        }
        {
            \time 10/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
        }
        {
            \time 7/8
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
        }
        {
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            b''8 \f (
            b'8 )
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "bassoon1" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Bassoon 1 }
        \set Staff.shortInstrumentName = \markup { Bsn.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "bassoon2" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Bassoon 2 }
        \set Staff.shortInstrumentName = \markup { Bsn.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "horn1" {
        \set Staff.instrumentName = \markup { Horn in F 1 }
        \set Staff.shortInstrumentName = \markup { Hn.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "horn2" {
        \set Staff.instrumentName = \markup { Horn in F 2 }
        \set Staff.shortInstrumentName = \markup { Hn.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "horn3" {
        \set Staff.instrumentName = \markup { Horn in F 3 }
        \set Staff.shortInstrumentName = \markup { Hn.3 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "horn4" {
        \set Staff.instrumentName = \markup { Horn in F 4 }
        \set Staff.shortInstrumentName = \markup { Hn.4 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "trumpet1" {
        \set Staff.instrumentName = \markup { Trumpet in C 1 }
        \set Staff.shortInstrumentName = \markup { Tpt.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "trumpet2" {
        \set Staff.instrumentName = \markup { Trumpet in C 2 }
        \set Staff.shortInstrumentName = \markup { Tpt.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "trombone1" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Tenor Trombone 1 }
        \set Staff.shortInstrumentName = \markup { Tbn.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "trombone2" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Tenor Trombone 2 }
        \set Staff.shortInstrumentName = \markup { Tbn.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "tuba" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Tuba }
        \set Staff.shortInstrumentName = \markup { Tba }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context RhythmicStaff = "perc1" {
        \set Staff.instrumentName = \markup { Percussion 1 }
        \set Staff.shortInstrumentName = \markup { Perc.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context RhythmicStaff = "perc2" {
        \set Staff.instrumentName = \markup { Percussion 2 }
        \set Staff.shortInstrumentName = \markup { Perc.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "timpani" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Timpani }
        \set Staff.shortInstrumentName = \markup { Timp }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context RhythmicStaff = "shime" {
        \set Staff.instrumentName = \markup { Shime }
        \set Staff.shortInstrumentName = \markup { Sh. }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context RhythmicStaff = "odaiko" {
        \set Staff.instrumentName = \markup { Odaiko }
        \set Staff.shortInstrumentName = \markup { O.d. }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        \textLengthOn
        \dynamicUp
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context RhythmicStaff = "taiko1" {
        \set Staff.instrumentName = \markup { Taiko 1 }
        \set Staff.shortInstrumentName = \markup { T.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        \textLengthOn
        \dynamicUp
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context RhythmicStaff = "taiko2" {
        \set Staff.instrumentName = \markup { Taiko 2 }
        \set Staff.shortInstrumentName = \markup { T.2. }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        \textLengthOn
        \dynamicUp
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "violinI" {
        \set Staff.instrumentName = \markup { Violin I }
        \set Staff.shortInstrumentName = \markup { Vln.I }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        \bar "||"
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        \bar "||"
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "violinII" {
        \set Staff.instrumentName = \markup { Violin II }
        \set Staff.shortInstrumentName = \markup { Vln.II }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        \bar "||"
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        a4 \mp
        \bar "||"
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "viola" {
        \set Staff.instrumentName = \markup { Viola }
        \set Staff.shortInstrumentName = \markup { Vla }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "cello" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Cello }
        \set Staff.shortInstrumentName = \markup { Vc. }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "bass" {
        \set Staff.instrumentName = \markup { Bass }
        \set Staff.shortInstrumentName = \markup { Cb. }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "line_1" {
        \set Staff.instrumentName = \markup { Line 1 }
        \set Staff.shortInstrumentName = \markup { Ln.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "harmony_1" {
        \set Staff.instrumentName = \markup { Harmony 1 }
        \set Staff.shortInstrumentName = \markup { Har.1 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context Staff = "harmony_2" {
        \clef "bass"
        \set Staff.instrumentName = \markup { Harmony 3 }
        \set Staff.shortInstrumentName = \markup { Har.2 }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
    \context RhythmicStaff = "dummy" {
        \set Staff.instrumentName = \markup { . }
        \set Staff.shortInstrumentName = \markup { . }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        \once \remove "TimeSignatureEngraver"
        {
            \time 43/8
            s1 * 43/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 10/8
            s1 * 5/4
        }
        {
            \time 7/8
            s1 * 7/8
        }
        {
            s1 * 7/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
            \bar "||"
        }
        \once \override 
                                    Staff.TimeSignature #'stencil = #(lambda (grob)
                                    (parenthesize-stencil (grob-interpret-markup grob 
                                    (markup #:override '(baseline-skip . 0.5) #:column ("X" "X"))
                                    ) 0.1 0.4 0.4 0.1 ))
        {
            \time 85/8
            s1 * 85/8
            \bar "||"
        }
        {
            \time 4/4
            s1 * 1
        }
        {
            s1 * 1
        }
        {
            s1 * 1
        }
    }
>>
