\version "2.16.0"

\include "sleep-functions.ly"

tab = {
  c8 [ ~ c8]
}

\score {
  \new TabStaff = "guitar tab"
  <<
    \clef "tab"
    \set Staff.stringTunings = \stringTuning < cis, gis, e e b e'>
    \new TabVoice = "tab" \tab
  >>
}

