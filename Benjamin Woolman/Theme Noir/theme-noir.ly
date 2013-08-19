\version "2.16.1"
%{ Declaration
========================================================================
"Theme Noir", by Benjamin Woolman

Type of Transcription
Transcription by Tom Kraemer.
Where did you get the music?  Who owns the copyright to the music?

This Transcription is by Rachael Thomas Carlson for Sleep Limited
Publications.  08/13/13
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
  title = \markup { \smallCaps "Theme Noir" }
  composer = \markup { \smallCaps "Benjamin Woolman" }
  %{poet = \markup \concat { \fontsize #-2 { D\sub{2} A\sub{2} D\sub{3} G\sub{3} B\sub{3}
  D\sharp\sub{4} } } %}
  %{ copyright = \markup { \fontsize #-4 { \char ##x00a9 1999 Benjamin Woolman
  } %} 
  tagline = \markup { \concat { \fontsize #-2 { "Theme Noir  " \fromproperty
  #'page:page-number-string /18 }}}
}
% Paper
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  first-page-number = 4
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
    \concat { \fontsize #-2 { "Theme Noir  " \fromproperty #'page:page-number-string /18
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
% Standard Notation
%% Upper

upper = {
  \numericTimeSignature
  \override Score.MetronomeMark #'padding = #3
  \time 4/4
  \tempo 4 = 80
  \key d \minor
  \voiceOne
  % anacrusis
  \partial 4 f16~ < f b>~ < f b e'>~ < f b e' f'>~ |
  % Bar 1
  <f b e' f'>2. r8 < d' g' g'>8~ |
  % Bar 2
  < d' g' g'>2. f16~ < f b>~ < f b e'>~ < f b e' f'>~ |
  % Bar 3
  <f b e' f'>2. r8 < c' ges' ges'>~ |
  % Bar 4
  < c' ges' ges'>2.
}
%% Lower
lower = {
  \key d \minor
  \numericTimeSignature
  \voiceTwo
  % anacrusis
  \partial 4 s4 |
  % Bar 1
  d,4 d,8 d, d, d, d,4 |
  % Bar 2
  d,8 d, d, d, d, d,~ d,4 |
  % Bar 3
  d,8 d, d, d, d, d, d,4 |
}
% Tab
tab = {
  \key d \minor
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series =  #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \set Timing.beamExceptions = #'()
  % anacrusis
  \partial 4 f16 b\3 e'\2 f' |
  % Bar 1
  d,4 d,8 d, d, d, d, < d'\3 g'\2 g'> |
  % Bar 2
  d,8 d, d, d, d, d, f16 b\3 e'\2 f' |
  % Bar 3
  d,8 d, d,8 d, d, d, d, < c'\3 ges'\2 ges'\1 > |
  % Bar 4
  d,8 d, d, d, d, d, f16 b\3 e'\2 f' |
  % Bar 5
  d,8 d, d,8 d, d, d, d, < d'\3 g'\2 g'> |
  % Bar 6
  d,4 d,8 d, d, d, d, < e'\3 g'\2 a'> |
  % Bar 7
  a,8 a, a, a, a, < a, e'\3> < a, g'\2> < a, a'> |
  % Bar 8
  a,8 a, a, a, a, a, f16 b\3 e'\2 f' |
  % Bar 9
  d,4 <\invTNH d,>8 d, d, d, < b\3 e'\2 f'>8 < c'\3 ges'\2 ges'\1 > |
  % Bar 10
  d,8 d, d, d, d, d, f16 b\3 e'\2 f' |
  % Bar 11
  d,8 d, d,8 d, d, d, d, < d'\3 g'\2 g'> |
  % Bar 12
  d,8 d, d, d, d, d, f16 b\3 e'\2 f' |
  % Bar 13
  d,8 d, d,8 d, d, d, d, < d'\3 g'\2 g'> |
  % Bar 14
  d,8 d, d,8 d, d, d, d, < e'\3 g'\2 a'> |
  % Bar 15
  a,8 a, a, a, a, < a, e'\3> < a, g'\2> < a, a'> |




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
\book {
\score {
  <<
    \new GrandStaff = "tab with traditional" \with {
      systemStartDelimiter = #'SystemStartBar
      \override SystemStartBar #'thickness = #5
      \override SystemStartBar #'X-offset = #-1 
  } <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
        \context Voice = "lower" \lower
      >>
    >>
      \new TabStaff = "guitar tab" <<
        \set Staff.stringTunings = \stringTuning < d, a, d g b d'>
        \new TabVoice = "tab" \tab
        \new TabVoice = "dynamicsone" \dynamicsone
        \new TabVoice = "dynamicstwo" \dynamicstwo
        \new TabVoice = "dynamicsthree" \dynamicsthree
        \new TabVoice = "dynamicsfour" \dynamicssix
        \new TabVoice = "dynamicsfive" \dynamicssix
        \new TabVoice = "dynamicssix" \dynamicssix
        \new TabVoice = "sixstrlhfinger" \sixstrlhfinger
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
}

