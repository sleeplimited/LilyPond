\version "2.16.1"
%{ Declaration
========================================================================
"Title", by Composer

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
#(set-global-staff-size 24)
% Header
\header {
  title = "Title"
  composer = "Composer"
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
  system-system-spacing = #'((basic-distance . 1) (padding . 2))
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
% Standard Notation
%% Upper

upper = {
  \numericTimeSignature
  \override Score.MetronomeMark #'padding = #3
  \time 4/4
  \tempo 4 = 70
  \key ees \major
  % Bar 1

}
%% Lower
lower = {
  \key ees \major
  \numericTimeSignature
  % Bar 1
}
% Tab
tab = {
  \key ees \major
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series =  #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  \override LaissezVibrerTie #'extra-offset = #'(-1.5 . 0)
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \set Timing.beamExceptions = #'()
  % Bar 1

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
    \new GrandStaff = "tab with traditional" \with {
      systemStartDelimiter = #'SystemStartBar
      \override SystemStartBar #'thickness = #5
      \override SystemStartBar #'X-offset = #-1 
  } <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
      >>
      \new Staff = "guitar traditional bass" <<
        \clef "bass_8"
        \context Voice = "lower" \lower
      >>
    >>
      \new TabStaff = "guitar tab" <<
        \set Staff.stringTunings = \stringTuning <b,, fis, d g b dis'>
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


