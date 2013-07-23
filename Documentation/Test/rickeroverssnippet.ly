\version "2.16.2"
\pointAndClickOff
\paper {
indent = 0 
}
\header {
  title = "Rickover's Dream"
  composer = "Michael Hedges"
  poet = \markup \concat { { C\sub{1} G\sub{2} D\sub{3} G\sub{3} B\sub{3} C\sub{4} } }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  }

  upper = {
  \numericTimeSignature
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \tempo 4 = 176
  \key c \major
  \voiceOne
  \tabFullNotation

  <c' e>8[ <b d>] <d' a> <c' g> <c' e>[ <b d>] <d' a> <c' g> |
  <c' e>8[ <b d>] <d' a> <c' g> <c' e>[ <b d>] <d' a> <c' g> |
					\break
R1  
}

  lower = {
  \key c \major
  \voiceThree
  \tabFullNotation
% Bar 1
% Bar 2
  <c f,>1~ |
% Bar 3
  <c f,>2 r8 <d g,>4 r8 |
  \break
}
  
  tab = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \stemDown
  \override Beam #'damping = #100000
  \tabFullNotation
  \override LaissezVibrerTie #'extra-offset = #'(-1.65 . 0.0)
  \once \override Score.Beam #'padding = #3
  % Bar 1
% Bar 2
  <c'^\laissezVibrer e^\laissezVibrer c^\laissezVibrer f,^\laissezVibrer>8\2\4\5\6 <b d>\2\4 <d'^\laissezVibrer a^\laissezVibrer>\1\3 <c' g>\1\3 <c'^\laissezVibrer e^\laissezVibrer>\2\4 <b d>\2\4 <d'^\laissezVibrer a^\laissezVibrer>\1\3 <c' g>\1\3

  % Bar 3
  <c'^\laissezVibrer e^\laissezVibrer>\2\4( <b d>\2\4) <d'^\laissezVibrer a^\laissezVibrer>\1\3 <c' g>\1\3 <c'^\laissezVibrer e^\laissezVibrer>\2\4 <b d d^\laissezVibrer g,^\laissezVibrer>\2\4\5\6 <d'^\laissezVibrer a^\laissezVibrer>\1\3 <c' g>\1\3
  \break

 
}
  
dynamicsone = {
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "ForestGreen")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.5)
\override TextScript #'extra-offset = #'(-1.0 . 13.0)

  }

dynamicstwo = {
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "ForestGreen")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.85)
\override TextScript #'extra-offset = #'(-1.0 . 13.4)
s8^\markup { \override #'(font-encoding . fetaTies) { \lookup #"tie100" } }
  }

dynamicsthree = {
\override TextScript #'(extra-offset) = #'(-0.5 . 14.0)

\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "ForestGreen")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.75)
  }

dynamicsfour = {

  }

dynamicsfive = {

  }

dynamicssix = {
\override TextScript #'extra-offset = #'(-0.7 . 9.5)

  }

  sixstrlhfinger = {
    }
  \score {
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar traditional" <<	
        \clef "treble_8"
        \context Voice = "upper" \upper
	>>
      \new Staff = "guitar Traditional" <<
	\clef "bass_8"
        \context Voice = "lower" \lower
      >>
      \new TabStaff = "guitar tab" <<
	\set Staff.stringTunings = \stringTuning <c, g, d g b c'>
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

}

	    }