\version "2.18.0"

% -------------------------------------------------------------------------
% include kappa tools:
kappaRoot = "c:/Ran/Code/Kappa/"
\include #(string-append kappaRoot "Kappa.ly")

% -------------------------------------------------------------------------

\paper {
  #(set-paper-size "tabloid")
  left-margin = 24\mm
  right-margin = 8\mm
  indent = 0\mm
  %system-separator-markup = \slashSeparator
  system-system-spacing #'basic-distance = #11
  system-system-spacing #'padding = #11
}

#(set-global-staff-size 16)


\include "_functions.ly"

partOverrides = {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/17)
  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \override Score.SpacingSpanner.uniform-stretching = ##t
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \numericTimeSignature
  %\overrideProperty NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 12) (alignment-distances . (12)))
}