\version "2.18.2"

 #(set-global-staff-size 26)
\score {
  \new PianoStaff <<
      \new Staff { \clef "treble_8"
        \repeat unfold 3 { s1 \break } }
      \new Staff { \override Staff.ClefModifier.extra-offset =
      #'(-1.25 . 1.25) \clef "bass_8" \repeat unfold 3 { s1 \break } }
      \new TabStaff { 
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 8))
        s1 \break 
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 45))
        s1 \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 80))
        s1 \break
      } 
    >>
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      %\remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  line-width = 7.5\in
  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
}
