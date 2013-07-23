\version "2.16.2"

\pointAndClickOff

\paper {
  indent = 0
}


\header {
  title = "Notation Explanation" }

upper = {
  \numericTimeSignature
  \time 4/4
  \key ees \major
  \voiceOne
  \tabFullNotation
  g8 ees' c' ees' g ees' c' ees'
}
lower = {
  \key ees \major
  \voiceTwo
  \tabFullNotation
  g,2 ees, 
}
tab = {
  \key ees \major
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  <g g,>8 ees' c' ees' <g ees,> ees' c' ees'
}

dynamicsone = {
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "ForestGreen")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.5)
\override TextScript #'extra-offset = #'(-1.0 . 13.0)
  s8\startTextSpan^\markup { \fontsize #-5 \italic "a" } s8\stopTextSpan 
  s8\startTextSpan s8\stopTextSpan s8\startTextSpan s8\stopTextSpan s8\startTextSpan s8\stopTextSpan
  }

dynamicstwo = {
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "ForestGreen")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.85)
\override TextScript #'extra-offset = #'(-1.0 . 13.4)
s4\startTextSpan^\markup { \fontsize #-5 \italic "m" } s8\stopTextSpan s4.\startTextSpan s4\stopTextSpan
  }

dynamicsthree = {
\override TextScript #'(extra-offset) = #'(-0.5 . 14.0)
s8^\markup { \fontsize #-5 \italic "i" }
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "ForestGreen")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.75)
s4.\startTextSpan s8\stopTextSpan
s8


  }

dynamicsfour = {

  }

dynamicsfive = {

  }

dynamicssix = {
\override TextScript #'extra-offset = #'(-0.7 . 9.5)
s2^\markup { \fontsize #-5 \italic "p" } s2^\markup { \fontsize #-5 \italic "p" } 
  }

sixstrlhfinger = {
\once  \override TextScript #'extra-offset = #'(1.3 . 10.0)
s8^\markup { \circle \fontsize #-8 "3" } s8
\once  \override TextScript #'extra-offset = #'(0.3 . 20.055)
s8^\markup { \circle \fontsize #-8 "1" }
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
	\set Staff.stringTunings = \stringTuning <ees, aes, d g bes ees'>
        \new TabVoice = "tab" \tab
	\new Dynamics = "dynamicsone" \dynamicsone
	\new Dynamics = "dynamicstwo" \dynamicstwo
	\new Dynamics = "dynamicsthree" \dynamicsthree
	\new Dynamics = "dynamicssix" \dynamicssix
	\new Dynamics = "sixstrlhfinger" \sixstrlhfinger
      >>
    >>
  >>
  \header {
    piece = \markup { \bold "String Stopping" }
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
The green line indicates a string that is being muffled/dampened by the placement of a right hand finger on the string indicated.  The notation of string muffling, or stopping, is the notation of silence. 
}

	    }

