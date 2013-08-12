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
    \context {
      \Score 
        \override StaffGrouper #'staffgroup-staff-spacing =
        #'((basic-distance . 8)
            (padding . -10)
            (stretchability . 0))
}       
  }
\score {
  <<
  \new GrandStaff 
    {
      \repeat unfold 4 { s1 \break }
    }
    {
      \repeat unfold 4 { s1 \break }
    }
  \new TabStaff
  {
    \repeat unfold 4 { s1 \break }
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
