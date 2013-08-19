\version "2.16.1"
\header {
  title = "Eleven Leaves"
  composer = "Rachael"
  poet = \markup \concat { { E\flat\sub{2} A\flat\sub{2} E\sub{3} G\sub{3} A\sub{3} E\flat\sub{4} } }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\include "rightHandFinger.ly"

BariMusic = {
  \time 7/8
  \key aes \major
  \tempo 4 = 118  
  R1*7/8 |
  R1*7/8 |
  R1*7/8 |
  R1*7/8 |
  R1*7/8 |
  % Bar 6
  ees'8 des'4. des'8 c'4 |
  % Bar 7
  aes2. r8 |
  % Bar 8
  R1*7/8 |
  % Bar 9
  ees'2 ees'4 aes8 |
  % Bar 10
  des'8 c'2. |
  % Bar 11
  R1*7/8 |
  % Bar 12
  ees'8 des'4. aes4. |
  % Bar 13
  aes2. r8 |
  % Bar 14
  R1*7/8 |
  % Bar 15
  ees'4 ees'4 c'8 c'4 |
  % Bar 16
  c'2. r8 |
  % Bar 17
  R1*7/8 |
  % Bar 18
  aes4 ees'8 c'2 |
  % bar 19
  aes8 aes2. |
  
}
BariLyrics = \lyricmode {
  in a crow ded |
  room |
  bees wax and |
  hon ey |
  but ter fly |
  stings |
  stum bled o ver |
  tones |
  and fish ing |
  wi re |
}

\layout { \override Voice.StringNumber #'stencil = ##f }
upper = {
  \time 7/8
  \key aes \major
  \voiceOne
  \tabFullNotation
  s2 s4. |
  s2 s4. |
  <ees'-\rightHandFinger #4 >2 <des'-\rightHandFinger #3 >4. |
  \break
  % Bar 4
  s2 s4. |
  s2 s4. |
  ees'2 des'4. |
\break
% Bar 7
  s2 s4. |
  s2 s4. |
  % Bar 9
  ees'2 des'4. |
  \break
  s2 s4. |
  s2 s4. |
  % Bar 12
  ees'2 des'4. |
  \break
  s2 s4. |
  s2 s4. |
  % bar 15
  ees'2 c'4. |
  \break
  s2 s4. |
  s2 s4. |
  % Bar 18
  ees'2 c'4. |
  \break
  s2 s4. |
  s2 s4. |
  % Bar 21
  ees'2 c'4. |
  \break 
  s2 s4. |
  s2 s4. |
  % Bar 24
  ees'2 c'4. |
  \break
  s2 s4. |
  s2 s4. |
  % bar 27
  ees'2 c'4. |
  \break

  % Bar 28
  r8 ees'4 bes4 g8[ bes] |
  r8 ees'4 bes4 g8[ bes] |
  r8 ees'4 bes4 g8[ bes] |
  \break
  % Bar 31
  r8 ees'4 bes4 aes8[ bes] |
  r8 ees'4 bes4 aes8[ bes] |
  r8 ees'4 bes4 aes8[ bes] |
  \break
}
lower = {
  \key aes \major
  \voiceTwo
  \tabFullNotation
  aes8\4[ <c'-3>\3] aes\4[ c'\3] aes\4[ c'\3 <des'-2>\2] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  r8[ des'\2 c'\3 aes8\4] r8[ c'8\3 aes\4] |
  % bar 4
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  % Bar 6
  r8[ des'\2 c'\3 aes\4] des'\2[ c'\3 aes\4] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  % Bar 9
  r8[ des'\2 c'\3 aes\4] des'\2[ c'\3 aes\4] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  % Bar 12
  r8[ des'\2 c'\3 aes\4] des'\2[ c'\3 aes\4] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  aes8\4[ c'\3] aes\4[ c'\3] aes\4[ c'\3 des'\2] |
  % Bar 15
  r8[ <c'-3>\2 <bes-2>\3 <aes-4>\4] c'\2[ bes\3 aes\4] |
  aes8\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  aes8\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 18
  r8[ <c'-3>\2 <bes-2>\3 <aes-4>\4] c'\2[ bes\3 aes\4] |
  aes8\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  aes8\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 21
  r8[ <c'>\2 <bes>\3 <aes>\4] c'\2[ bes\3 aes\4] |
  aes8\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  aes8\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 24
  r8[ \textSpannerDown
  \override TextSpanner #'(bound-details left text) = #"I "
  <c'-4>\2\startTextSpan <aes-1>\3 <f-1>\4] c'\2[ aes\3 f\4] |
  f\4[ aes\3] f\4[ aes\3] f\4[ aes\3 c'\2] |
  f\4[ aes\3] f\4[ aes\3] f\4[ aes\3 c'\2] |
  % Bar 27
  r8[ <c'>\2 <aes>\3 <f>\4] c'\2[ aes\3 f\4]\stopTextSpan |

  % Bar 28
  <ees,\staccato>4 bes,4 f4.\4 |
  <ees,\staccato>4 bes,4 f4.\4 |
  <ees,\staccato>4 bes,4 f4.\4 |
  % Bar 31
  <ees,\staccato>4 aes,4 f4.\4 |
  <ees,\staccato>4 aes,4 f4.\4 |
  <ees,\staccato>4 aes,4 f4.\4 |
}
\score {
  <<
    \new Staff <<
      \clef "bass"
      \new Voice = "BariMusic" {
	\BariMusic
	}
      \new Lyrics \lyricsto "BariMusic" {
	\BariLyrics
	}
      >>
    \new GrandStaff = "tab with traditional" <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
        \context Voice = "lower" \lower
      >>
      \new TabStaff = "guitar tab" <<
\set Staff.stringTunings = \stringTuning <ees, aes, e g a ees'>
        \new TabVoice = "upper" \upper
	\new TabVoice = "lower" \lower
      >>
    >>
  >>
    \layout {
    \context {
    \TabVoice \consists "New_fingering_engraver" 
    }
    }
    \midi {}

  
}
\paper {
indent = 0 
}
