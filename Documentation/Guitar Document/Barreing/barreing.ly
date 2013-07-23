\version "2.16.2"
\pointAndClickOff

\paper {
  indent = 0
  }
\header { title = "Notation Explanation" }

upper = {
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 70
  \key ees \major
  \voiceOne
  \tabFullNotation
  <c' ees' aes'>4.
}
lower = {
  \key ees \major
  \voiceTwo
  \tabFullNotation
  <aes, c aes>4.

 }

tab = {
  \key ees \major
  \numericTimeSignature
  \time 4/4
   \override Beam #'damping = #100000
  \tabFullNotation
  <aes, c aes c' ees' aes'>4.
  }

dynamicssix = {
  \once \override TextScript #'extra-offset = #'(-0.9 . 15.0)
  s16^\markup { \fontsize #-5 \italic "p" }
  \once \override TextScript #'extra-offset = #'(-1.2 . 23.4)
  s16^\markup { \fontsize #0 {
    \general-align #Y #DOWN {
      \arrow-head #Y #UP ##f
      }
    }
		}
  \once \override TextScript #'extra-offset = #'(-1.78 . 16.55)
  s16^\markup { \draw-line #'(0 . 8.5)
		}
}

lhstrfinger = {
\once  \override TextScript #'extra-offset = #'(3.0 . 8.85)
s8^\markup { \right-brace #40 }
\once  \override TextScript #'extra-offset = #'(2.25 . 12.17)
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
	\set Staff.stringTunings = \stringTuning <ees, g, ees g bes ees'>
	\new TabVoice = "tab" \tab
	\new Dynamics = "lhstrfinger" \lhstrfinger
	\new Dynamics = "dynamicssix" \dynamicssix
      >>
    >>
  >>
    \layout {    }
    \midi {}

  
}
