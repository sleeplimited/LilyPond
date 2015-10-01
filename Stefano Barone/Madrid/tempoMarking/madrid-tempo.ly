\version "2.18.2"
\include "lilypond-book-preamble.ly"
\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}
\relative c'' {
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(6 4 6 4)
    \set subdivideBeams = ##t
    \set Timing.beamExceptions = #'()
    \stemUp
    \omit Score.BarLine
    \omit Score.Clef
    \omit Score.StaffSymbol
    \omit Score.TimeSignature
    b16[ b b b b]
  }
