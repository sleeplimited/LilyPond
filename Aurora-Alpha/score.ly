\book {
  \score {
    <<
      \new GrandStaff = "tab with traditional" \with {
        systemStartDelimiter = #'SystemStartBar
        \override SystemStartBar #'thickness = #5
        \override SystemStartBar #'X-offset = #-1
        \override StaffSymbol #'staff-space = #(magstep -2)
        fontSize = #-2
      }  <<
        \new Staff = "guitar traditional" <<
          \clef "treble_8"
          \context Voice = "upper" \upper
        >>
        \new Staff = "guitar Traditional bass" <<
          \clef "bass"
          \context Voice = "lower" \lower
        >>
      >>
      \new TabStaff = "guitar tab" 
      <<
        \clef "moderntabII"
        \set Staff.stringTunings = \stringTuning <cis, gis, e e b e'>
        \new TabVoice = "dynamicsone" \dynamicsone
        \new TabVoice = "dynamicstwo" \dynamicstwo
        \new TabVoice = "dynamicsthree" \dynamicsthree
        \new TabVoice = "tab" \tab
        \new TabVoice = "dynamicsfour" \dynamicsfour 
        \new TabVoice = "dynamicsfive" \dynamicsfive  
        \new TabVoice = "dynamicssix" \dynamicssix
        \new TabVoice = "lhOne" \lhOne
        \new TabVoice = "lhTwo" \lhTwo
        \new TabVoice = "lhThree" \lhThree
        \new TabVoice = "lhFour" \lhFour
        \new TabVoice = "sixstr" \sixstr
      >>
    >>
    %% Layout
    \layout {
      indent = 0\cm
      \context { 
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      }
      \context {
        \Staff
        \override TimeSignature #'space-alist #'first-note = #'(extra-space .
        4.9) }
\context {
  \TabStaff
  \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
}
      }
      \midi {}


    }
  }
