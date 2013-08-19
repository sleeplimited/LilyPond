\version "2.16.1"
%{ Declaration
========================================================================
"Eleven Leaves", by Rachael Thomas Carlson

Type of Transcription
Where did you get the music?  Who owns the copyright to the music?

This Transcription is by Rachael Thomas Carlson for Sleep Limited
Publications.  DATE
 __..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
           |                        
  .__    .  .        ,                
  [__). .|_ |* _. _.-+-* _ ._  __     
  |   (_|[_)||(_.(_] | |(_)[ )_)      
                                    
=====================================================================%}
\pointAndClickOff
#(set-global-staff-size 22.45)
% Header
\header {
  title = \markup { \smallCaps "Eleven Leaves" }
  composer = \markup { \smallCaps "Rachael Thomas" }
  %{poet = \markup \concat { \fontsize #-2 { B\sub{1} F\sharp\sub{2} D\sub{3} G\sub{3} B\sub{3}
  D\sharp\sub{4} } } %}
  copyright = \markup { \fontsize #-4 { \char ##x00a9 2011 Who's Music
  Publishing } }
  tagline = \markup { \fontsize #-4 \with-url #"http://www.sleeplimited.org"
  \line { Engraved with Lilypond by Rachael Thomas Carlson for
  Sleep Limited Publications <rtc@sleeplimited.org>. } }
}
% Paper
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  % see:  http://code.google.com/p/lilypond/issues/detail?id=2576

  #(define (not-last-page layout props arg) 
  (if (not (book-last-page? layout props)) 
    (interpret-markup layout props arg) 
    empty-stencil)) 

tocItemMarkup = \tocItemWithDotsMarkup 

oddHeaderMarkup = ""

evenHeaderMarkup = \oddHeaderMarkup 

oddFooterMarkup = 
\markup \fill-line { 
  % using \line removes empty-stencils 
  % produced by #not-first-page etc 
  \line { 
    % page-number not on first-page 
    \on-the-fly #not-first-page 
    % page-number not on last-page 
    \on-the-fly #not-last-page 
    \concat { \fontsize #-2 { Title " " Of " " Tune  " " 07/04/13 " " \fromproperty #'page:page-number-string /12
  }
  } 
  % copyright on first page 
  \on-the-fly #first-page \fromproperty #'header:copyright 
  % tagline on last page 
  \on-the-fly #last-page \fromproperty #'header:tagline 
} 
  } 
  evenFooterMarkup = \oddFooterMarkup 
} 
% Includes
\include "functions.ly"
% Lyrics
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
  % Bar 20
  R1*7/8 |
  % Bar 21
  ees'2 ees'8 ees'4 |
  % Bar 22
  R1*7/8 |
  % Bar 23
  R1*7/8 |
  % Bar 24 
  ees'8 des'4. des'4. |
  % Bar 25
  f2~ f4. |
  % Bar 26
  R1*7/8 |
  % Bar 27
  R1*7/8 |
  % Bar 28
  R1*7/8 |
  % Bar 29
  g2~ g4.~ |
  % Bar 30
  g2~ g4. |
  % Bar 31
  aes2~ aes4. |
  % Bar 32
  r2 aes4.~ |
  % Bar 33
  aes2 aes8 aes4 |
  % Bar 34
  g2~ g4. |
  
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
  rose pe tals |
  and a tree |
  limb |
  sleep |
  tight 
  little 
  bum ble |
  bee |
}
% Standard Notation
%% Upper

upper = {
  \numericTimeSignature
  \override Score.MetronomeMark #'padding = #3
  \time 7/8
  \key aes \major
  \voiceOne
  % Bar 1
  s2 s4. |
  s2 s4. |
  \mergeDifferentlyHeadedOn
  ees'2 \mergeDifferentlyDottedOn des'4. |
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
  r8 ees'4 bes8 f8[ g8 bes] |
  r8 ees'4 bes8 f8[ g8 bes] |
  r8 ees'4 bes8 f8[ g8 bes] |
  \break
  % Bar 31
  r8 ees'4 bes8 f8[ aes8 bes] |
  r8 ees'4 bes8 f8[ aes8 bes] |
  r8 ees'4 bes8 f8[ aes8 bes] |
  \break
  % Bar 34
  r8 ees'4 bes8 f8[ g8 bes] |
  r8 ees'4 bes8 f8[ g8 bes] |
  r8 ees'4 bes8 f8[ g8 bes] |
  \break
  % Bar 37
  r8 ees'4 bes8 f8[ aes8 bes] |
  r8 ees'4 bes8 f8[ aes8 bes] |
  r8 ees'4 bes8 f8[ aes8 bes] |
  \break
  % Bar 40
  ees'8[ bes] aes4 bes8[ aes f] |
  % Bar 41
  r8 aes4 aes4 aes8[ bes] |
  % Bar 42
  r8 aes4 aes4 aes8[ bes] |
  \break
  % Bar 43
  ees'8[ bes] aes4 bes8[ aes g] |
  % Bar 44
  r8 aes4 aes4 aes8[ bes] |
  % Bar 45
  r8 aes4 aes4 aes8[ bes] |
  \break
  % Bar 46
  ees'8[ bes] aes4 bes8[ aes aes] |
  % Bar 47
  r8 bes4 bes4 bes8[ ees'] |
  % Bar 48
  r8 bes4 bes4 bes8[ ees'] |
  \break
  % Bar 49
  ees'8[ c' bes aes] c'[ bes aes] |
  % Bar 50
  aes8[ c'] aes8[ c'] aes8[ c' des'] |
  % Bar 51
  aes8[ c'] aes8[ c'] aes8[ c' des'] |
  \break
  % Bar 52
  << { ees'2 des'4. } \\ { ees'8[ des' c' aes] des'[ c' aes] } >>
  % Bar 53
  aes8[ c'] aes8[ c'] aes8[ c' des'] |
  % Bar 54
  aes8[ c'] aes8[ c'] aes8[ c' des'] |
  \break
  % Bar 55
  << { ees'2 des'4. } \\ { ees'8[ des' c' aes] des'[ c' aes] } >>
  % Bar 56
  aes8[ c'] aes8[ c'] aes8[ c' des'] |
  % Bar 57
  aes8[ c'] aes8[ c'] aes8[ c' des'] |
  \break




}
%% Lower
lower = {
  \key aes \major
  \numericTimeSignature
  \voiceTwo
  % Bar 1
  aes8[ <c'-3>] aes[ c'] aes[ c' <des'-2>] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  \mergeDifferentlyHeadedOn
  ees'8[ des' c' aes8] \mergeDifferentlyHeadedOn des'8[ c'8 aes] |
  % bar 4
  aes8[ c'] aes[ c'] aes[ c' des'] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  % Bar 6
  ees'8[ des' c' aes] des'[ c' aes] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  % Bar 9
  ees'8[ des' c' aes] des'[ c' aes] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  % Bar 12
  ees'8[ des' c' aes] des'[ c' aes] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  aes8[ c'] aes[ c'] aes[ c' des'] |
  % Bar 15
  ees'8[ <c'-3> <bes-2> <aes-4>] c'[ bes aes] |
  aes8[ bes] aes[ bes] aes[ bes c'] |
  aes8[ bes] aes[ bes] aes[ bes c'] |
  % Bar 18
  ees'8[ <c'-3> <bes-2> <aes-4>] c'[ bes aes] |
  aes8[ bes] aes[ bes] aes[ bes c'] |
  aes8[ bes] aes[ bes] aes[ bes c'] |
  % Bar 21
  ees'8[ <c'> <bes> <aes>] c'[ bes aes] |
  aes8[ bes] aes[ bes] aes[ bes c'] |
  aes8[ bes] aes[ bes] aes[ bes c'] |
  % Bar 24
  ees'8[ 
  <c'-4> <aes-1> <f-1>] c'[ aes f] |
  f[ aes] f[ aes] f[ aes c'] |
  f[ aes] f[ aes] f[ aes c'] |
  % Bar 27
  ees'8[ <c'> <aes> <f>] c'[ aes f] |

  % Bar 28
  ees,4\staccato bes,4 f4. |
  ees,4\staccato bes,4 f4. |
  ees,4\staccato bes,4 f4. |
  % Bar 31
  ees,4\staccato aes,4 f4. |
  ees,4\staccato aes,4 f4. |
  ees,4\staccato aes,4 f4. |
  % Bar 34
  ees,4\staccato bes,4 f4. |
  ees,4\staccato bes,4 f4. |
  ees,4\staccato bes,4 f4. |
  % Bar 37
  ees,4\staccato aes,4 f4. |
  ees,4\staccato aes,4 f4. |
  ees,4\staccato aes,4 f4. |
  % Bar 40
  ees,4. aes,8 f4 f8 |
  % Bar 41
  g4 g4 g4. |
  % Bar 42
  g4 g4 g4. |
  % Bar 43 
  ees,4. aes,8 g4 g8 |
  % Bar 44
  aes4 aes4 aes4. |
  % Bar 45
  aes4 aes4 aes4. |
  % Bar 46
  ees,4. aes,8 aes4 aes8 |
  % Bar 47
  bes4 bes4 bes4. |
  % Bar 48
  bes4 bes4 bes4. |
  % Bar 49
  aes,2 bes,4. |
  % Bar 50
  c2.. |
  % Bar 51
  bes,2.. |
  % Bar 52
  ees,2 f,4. |
  % Bar 53
  aes,2.. |
  % Bar 54
  bes,2.. |
  % Bar 55
  ees,2 f,4. |
  % Bar 56
  g,2.. |
  % Bar 57
  aes,2.. |

}
% Tab
tab = {
  \key aes \major
  \numericTimeSignature
  \time 7/8
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series =  #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  % Bar 1
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 2
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 3 
  ees'\1[ des'\2 c'\3 aes\4] des'\2[ c'\3 aes\4] |
  % Bar 4
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 5
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 6 
  ees'\1[ des'\2 c'\3 aes\4] des'\2[ c'\3 aes\4] |
  % Bar 7
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 8
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 9 
  ees'\1[ des'\2 c'\3 aes\4] des'\2[ c'\3 aes\4] |
  % Bar 10
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 11
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 12 
  ees'\1[ des'\2 c'\3 aes\4] des'\2[ c'\3 aes\4] |
  % Bar 13
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 14
  aes8\4[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 15
  ees'\1[ c'\2 bes\3 aes\4] c'\2[ bes\3 aes\4] |
  % Bar 16
  aes\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 17
  aes\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 18
  ees'\1[ c'\2 bes\3 aes\4] c'\2[ bes\3 aes\4] |
  % Bar 19
  aes\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 20
  aes\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 21
  ees'\1[ c'\2 bes\3 aes\4] c'\2[ bes\3 aes\4] |
  % Bar 22
  aes\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 23
  aes\4[ bes\3] aes\4[ bes\3] aes\4[ bes\3 c'\2] |
  % Bar 24
  ees'\1[ c'\2 aes f] c'\2[ aes f] |
  % Bar 25
  f[ aes] f[ aes] f[ aes c'\2] |
  % Bar 26
  f[ aes] f[ aes] f[ aes c'\2] |
  % Bar 27
  ees'\1[ c'\2 aes f] c'\2[ aes f] |
  % Bar 28
  ees,\staccato[ ees'] bes,[ bes] f[ g bes] |
  % Bar 29
  ees,\staccato[ ees'] bes,[ bes] f[ g bes] |
  % Bar 30
  ees,\staccato[ ees'] bes,[ bes] f[ g bes] |
  % Bar 31
  ees,\staccato[ ees'] aes,[ bes] f[ aes bes] |
  % Bar 32
  ees,\staccato[ ees'] aes,[ bes] f[ aes bes] |
  % Bar 33
  ees,\staccato[ ees'] aes,[ bes] f[ aes bes] |
  % Bar 34
  ees,\staccato[ ees'] bes,[ bes] f[ g bes] |
  % Bar 35
  ees,\staccato[ ees'] bes,[ bes] f[ g bes] |
  % Bar 36
  ees,\staccato[ ees'] bes,[ bes] f[ g bes] |
  % Bar 37
  ees,\staccato[ ees'] aes,[ bes] f[ aes bes] |
  % Bar 38
  ees,\staccato[ ees'] aes,[ bes] f[ aes bes] |
  % Bar 39
  ees,\staccato[ ees'] aes,[ bes] f[ aes bes] |
  % Bar 40
  < ees, ees'>8[ bes aes aes,] < f bes>[ aes f] |
  % Bar 41
  g8\4[ aes8] g8\4[ aes8] g8\4[ aes8 bes8] |
  % Bar 42
  g8\4[ aes8] g8\4[ aes8] g8\4[ aes8 bes8] |
  % Bar 43
  < ees, ees'>[ bes aes aes,] < g\4 bes>[ aes g\4] |
  % Bar 44
  aes\4[ aes\3] aes\4[ aes\3] aes\4[ aes\3 bes] |
  % Bar 45
  aes\4[ aes\3] aes\4[ aes\3] aes\4[ aes\3 bes] |
  % Bar 46
  < ees, ees'>[ bes aes aes,] < aes\4 bes>[ aes\3 aes\4] |
  % Bar 47
  bes\3[ bes\2] bes\3[ bes\2] bes\3[ bes\2 ees'] |
  % Bar 48
  bes\3[ bes\2] bes\3[ bes\2] bes\3[ bes\2 ees'] |
  % Bar 49
  < aes, ees'>[ c'\2 bes\3 aes\4] < bes, c'\2>[ bes\3 aes\4] |
  % Bar 50
  < c aes\4>8[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 51
  < bes, aes\4>8[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 52
  < ees, ees'\1>[ des'\2 c'\3 aes\4] < f, des'\2>[ c'\3 aes\4] |
  % Bar 53
  < aes, aes\4>8[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 54
  < bes, aes\4>8[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 55
  < ees, ees'\1>[ des'\2 c'\3 aes\4] < f, des'\2>[ c'\3 aes\4] |
  % Bar 56
  < g, aes\4>8[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |
  % Bar 57
  < aes, aes\4>8[ c'\3] aes8\4[ c'\3] aes8\4[ c'\3 des'\2] |

}
% Dynamics
%% Dynamics One
dynamicsone = {
  \override TextSpanner #'style = #'line
  \override TextSpanner #'thickness = #8
  \override TextSpanner #'color = #(x11-color "plum")
  \override TextSpanner #'layer = #-1
  \override TextSpanner #'extra-offset = #'(0.0 . 13.5)
  \override TextScript #'extra-offset = #'(-1.0 . 13.0)

}

%% Dynamics Two
dynamicstwo = {
  \override TextSpanner #'style = #'line
  \override TextSpanner #'thickness = #8
  \override TextSpanner #'color = #(x11-color "plum")
  \override TextSpanner #'layer = #-1
  \override TextSpanner #'extra-offset = #'(0.0 . 13.85)
  \override TextScript #'extra-offset = #'(-1.0 . 13.4)

}
%% Dynamics Three
dynamicsthree = {
  \override TextScript #'(extra-offset) = #'(-0.5 . 14.0)
  \override TextSpanner #'style = #'line
  \override TextSpanner #'thickness = #8
  \override TextSpanner #'color = #(x11-color "plum")
  \override TextSpanner #'layer = #-1
  \override TextSpanner #'extra-offset = #'(0.0 . 13.75)
}

%% Dynamics Four
dynamicsfour = {

}

%% Dynamics Five
dynamicsfive = {

}

%% Dynamics Six
dynamicssix = {
  \override TextScript #'extra-offset = #'(-0.7 . 9.5)
}
%% SixStrLHFinger
sixstrlhfinger = {
}

% Score
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
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
        \context Voice = "lower" \lower
      >>
      \new TabStaff = "guitar tab" <<
        \set Staff.stringTunings = \stringTuning <ees, aes, e g a ees'>
        \new TabVoice = "tab" \tab
        \new Dynamics = "dynamicsone" \dynamicsone
        \new Dynamics = "dynamicstwo" \dynamicstwo
        \new Dynamics = "dynamicsthree" \dynamicsthree
        \new Dynamics = "dynamicssix" \dynamicssix
        \new Dynamics = "sixstrlhfinger" \sixstrlhfinger
      >>
    >>
%% Layout
  \layout {
    indent = 0\mm
    \context { 
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
      % \override TimeSignature #'space-alist #'first-note = #'extra-space . 0.0)
    }
  }
  \midi {}
}


