\version "2.16.2"
\pointAndClickOff
\paper{
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}

  upper = {
  \numericTimeSignature
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \key c \major

  <c' e>8[ <b d>] <d' a> <c' g> <c' e>[ <b d>] <d' a> <c' g> |
}

  lower = {
    \numericTimeSignature
  \key c \major
  <c f,>1 |


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
   <c'^\laissezVibrer e^\laissezVibrer c^\laissezVibrer f,^\laissezVibrer>8\2\4\5\6-\withMusicProperty #'spanner-id #"g" \tweak #'extra-offset #'(0 . -2.5) (( <b d>-\withMusicProperty #'spanner-id #"g" ))
  <d'^\laissezVibrer a^\laissezVibrer>\1\3-\withMusicProperty #'spanner-id #"g" \tweak #'extra-offset #'(0 . -2.4) (( <c' g>\1\3-\withMusicProperty #'spanner-id #"g" ))
  <c'^\laissezVibrer e^\laissezVibrer>\2\4-\withMusicProperty #'spanner-id #"g" \tweak #'extra-offset #'(0 . -2.5) (( <b d>-\withMusicProperty #'spanner-id #"g" )) <d'^\laissezVibrer a^\laissezVibrer>\1\3-\withMusicProperty #'spanner-id #"g" \tweak #'extra-offset #'(0 . -2.4) (( <c' g>\1\3-\withMusicProperty #'spanner-id #"g" ))
}
  
dynamicsone = {
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "plum")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.5)
s4
\once \override TextScript #'extra-offset = #'(-0.25 . 12.4)
s8_\markup { \fontsize #-8 \circle "3" } s8 s2
}

dynamicstwo = {
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "plum")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.85)
\once \override TextScript #'extra-offset = #'(.25 . 15.5)
s8_\markup { \fontsize #-8 \circle "1" } s8 s2.
  }

dynamicsthree = {
\override TextScript #'(extra-offset) = #'(-0.5 . 14.0)
\override TextSpanner #'style = #'line
\override TextSpanner #'thickness = #8
\override TextSpanner #'color = #(x11-color "plum")
\override TextSpanner #'layer = #-1
\override TextSpanner #'extra-offset = #'(0.0 . 13.75)
s4
\once \override TextScript #'extra-offset = #'(-0.25 . 15.8)
s8-\markup { \fontsize #-8 \circle "2" } s8 s2
}

dynamicsfour = {
\once \override TextScript #'extra-offset = #'(.25 . 16.5)
s8^\markup { \fontsize #-8 \circle "2" }
s8 s2.

}

dynamicsfive = {
\once \override TextScript #'extra-offset = #'(1.9 . 9.7)
s8^\markup { \fontsize #-5 \italic "i" } s8 s2.
  }

dynamicssix = {
\once \override TextScript #'extra-offset = #'(1.7 . 11.6)
s8^\markup { \right-brace #15 } s8 s2.
} 
sixstrlhfinger = {}  
  \score {
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
	>>
      \new Staff = "guitar Traditional bass" <<
	\clef "bass_8"
        \context Voice = "lower" \lower
      >>
      \new TabStaff = "guitar tab" <<
	\set Staff.stringTunings = \stringTuning <c, g, d g b c'>
        \new TabVoice = "tab" \tab
	\new Dynamics = "dynamicsone" \dynamicsone
	\new Dynamics = "dynamicstwo" \dynamicstwo
	\new Dynamics = "dynamicsthree" \dynamicsthree
	\new Dynamics = "dynamicsfour" \dynamicsfour
	\new Dynamics = "dynamicsfive" \dynamicsfive	
	\new Dynamics = "dynamicssix" \dynamicssix
	\new Dynamics = "sixstrlhfinger" \sixstrlhfinger
      >>
    >>
  >>
    \layout {
    \context { 
    }
    }
}
