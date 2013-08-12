\version "2.16.1"
 #(set-global-staff-size 22)
\header {
  tagline = ""
}

  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
\score {
  <<
  \new GrandStaff
  {
    \repeat unfold 5 { s1 \break }
  }
  \new TabStaff
  {
    \repeat unfold 5 { s1 \break }
  }
>>
}

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  bottom-margin = 0.5\in
  top-margin = 0.5\in
}
