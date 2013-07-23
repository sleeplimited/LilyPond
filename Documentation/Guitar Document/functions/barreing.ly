upper = {
  \numericTimeSignature
  \time 4/4
  \voiceOne
  \tabFullNotation
  <c' e' a'>4.
}

lower = {
  \voiceTwo
  \tabFullNotation
  <a, d g>4.
}

tab = {
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  <a, d g c' e' a'>4.
}

dynamicsone = {
  }

dynamicstwo = {
  }

dynamicsthree = {


  }

dynamicsfour = {

  }

dynamicsfive = {

  }

dynamicssix = {
  \once \override TextScript #'extra-offset = #'(-0.9 . 7.5)
  s16^\markup { \fontsize #-5 \italic "p" }
  \once \override TextScript #'extra-offset = #'(-1.2 . 15.5)
  s16^\markup { \fontsize #0 {
    \general-align #Y #DOWN {
      \arrow-head #Y #UP ##f
      }
} }
    \once \override TextScript #'extra-offset = #'(-1.78 . 8.8)
  s16^\markup { \draw-line #'(0 . 8.5)
		}

  }

sixstrlhfinger = {

  }
		
lhstrfinger = {
\once  \override TextScript #'extra-offset = #'(3.0 . 17.45)
s8^\markup { \right-brace #40 }
\once  \override TextScript #'extra-offset = #'(2.25 . 20.73)
s8^\markup { \circle \fontsize#-8 "1" }
  }


    
\score {
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
	\context Voice = "upper" \upper
        \context Voice = "lower" \lower
      >>
      \new TabStaff = "guitar tab" <<
        \new TabVoice = "tab" \tab
	\new Dynamics = "dynamicsone" \dynamicsone
	\new Dynamics = "dynamicstwo" \dynamicstwo
	\new Dynamics = "dynamicsthree" \dynamicsthree
	\new Dynamics = "dynamicssix" \dynamicssix
	\new Dynamics = "sixstrlhfinger" \sixstrlhfinger
	\new Dynamics = "lhstrfinger" \lhstrfinger
      >>
    >>
  >>
  \header {
    piece = \markup { \bold "Barreing" }
    }
    \layout {
    \context { 
    }
    }
    \midi {}


}
  \markup {
\justify
      \italic  {
Barreing is notated through a brace and a left hand fingering.  One is to place the finger indicated across the strings inside the brace.
}

	    }

