\version "2.16.1"
%{ Declaration
=====================================================================
"White One-Fifty", by Tom Kraemer

Pro Bono Transcription
This transcription is based on a handwritten transcription
that the composer gave to me.  Tom owns the copyright. I do not think
that he has a publishing agency.  I have no permission to do anything
with this transcription.

This transcription is by Rachael Thomas Carlson for Sleep Limited
Publications.  07/15/13
 __..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
           |                        
  .__    .  .        ,                
  [__). .|_ |* _. _.-+-* _ ._  __     
  |   (_|[_)||(_.(_] | |(_)[ )_)      
                                    

====================================================================%}
\pointAndClickOff
#(set-global-staff-size 22.45)
% Header
\header {
  title = \markup { \smallCaps "White One-Fifty" }
  composer = \markup { \smallCaps "Tom Kraemer" }
  poet = \markup \concat { \fontsize #-2 { C\sub{1} A\sub{2} C\sub{3} G\sub{3} C\sub{4} E\sub{4} } }
  copyright = \markup { \concat { \fontsize #-2 { "White One-Fifty  " \fromproperty #'page:page-number-string /18
}}}  
  tagline = \markup { \concat { \fontsize #-2 { "White One-Fifty  " \fromproperty #'page:page-number-string /18
}}  
}}
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
    \concat { "White One-Fifty " 07/04/13 " " \fromproperty #'page:page-number-string /12
  } 
  % copyright on first page 
  \on-the-fly #first-page \fromproperty #'header:copyright 
  % tagline on last page 
  \on-the-fly #last-page \fromproperty #'header:tagline 
} 
  } 
  evenFooterMarkup = \oddFooterMarkup 
}

\layout {
     \context {
     \Score
       \override StaffGrouper #'staffgroup-staff-spacing =
       #'((basic-distance . 11)
          (padding . -10)
          (stretchability . 0))
   }
}
% Includes
\include "functions.ly"
% Standard Notation
%% Upper

  upper = {
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 70
  \key c \major
  \voiceOne
  \slurDown
  % Bar 1
  c16( f) g( b) c'4~ c'16 e'8 g16 b d' c'8 |
}
% Lower
  lower = {
  \numericTimeSignature
  \key c \major
  r4 r8 e16 d16~ d4 r4 |
}

% Tab
  tab = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series = #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  % Bar 1
  c16 f\4 g b c'8 e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'16 c, | 
  % Bar 2
  c16 f g b c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 c' c, | 
  % Bar 3
  c16 f\4 g b c'8 e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'16 c, | 
  % Bar 4
  c16 f g b c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 c' c, | 
  % Bar 5
  c16 f g a c'8 a,16 c\5~ c\5 <f' \parenthesize a> c' <g \parenthesize b,> \grace {
    \hideFretNumber e\5 \glissando s } f8\5 < a\4 e'\3 g'\2> |
  % Bar 6
  a,16 g\5 c\4 b\4 c'8 e16\5 a,~ < a, \parenthesize f\4 \parenthesize c'\3
  \parenthesize e'\2> e'\2 c'\3 f\4 aes\4 d'\3 f'\2 < e'\1 c,> |
  % Bar 7
  c16 f\4 g b c'8 e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'16 c, | 
  % Bar 8
  c16 f g b c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 c' c, | 
  % Bar 9
  c16 f g a c'8 a,16 c\5~ c\5 <f' \parenthesize a> c' <g \parenthesize b,> \grace {
    \hideFretNumber e\5 \glissando s } f8\5 < a\4 e'\3 g'\2> |
  % Bar 10
  a,16 g\5 c\4 b\4 c'8 e16\5 a,~ < a, \parenthesize f\4 \parenthesize c'\3
  \parenthesize e'\2> e'\2 c'\3 f\4 aes\4 d'\3 f'\2 < e'\1 c,> |
  % Bar 11
  c16 f\4 g b c'8 e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'16 c, | 
  % Bar 12
  c16 f g b c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 c' c, | 
  % Bar 13
  c16 g\4 g\3 d'\3 e'8 g16\5 e\5~ e\5 c'~ c' g < a, \parenthesize b\4
  \parenthesize g'\3> a, < b\4 g'\3> c\6 \glissando \grace { \hideFretNumber
  b,\6 } |
  % Bar 14
  c16 f g a c'8 a,16 c\5~ c\5 <f' \parenthesize a> c' <g \parenthesize b,> \grace {
    \hideFretNumber e\5 \glissando s } f8\5 < a\4 e'\3 g'\2> |
  % Bar 15
  a,16 g\5 c\4 b\4 c'8 e16\5 a,~ < a, \parenthesize f\4 \parenthesize c'\3
  \parenthesize e'\2> e'\2 c'\3 f\4 aes\4 d'\3 f'\2 < e'\1 c,> |
  % Bar 16
  c16 f\4 g b c'8 e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'16 c, | 
  % Bar 17
  c16 f g b c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 c' c, | 
  % Bar 18
  c16 f\4 g b c'8 e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'16 c, | 
  % Bar 19
  c16 f g b c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 c' c, | 
  % Bar 20
  \times 2/3 { a,8 < d\5 f\4 c'\3> < d\5 f\4 c'\3> } < d\5 f\4 c'\3 f'\2 a'\1>8
  f\5 < e\5 g\4 d'\3>4 aes,\6 |
  % Bar 21
  < f\4 c'\3 e'\2>16 \arpeggioArrowUp < c g c' e'>\arpeggio < c g c' e'> < e g
  d' g' b'> < e g d' g' b'>8 f16\5 a,\6 < g,\6 f\4>16 g c' g'\2 b g < a, f c'\3
  e'\2 >8 |
  % Bar 22
  < f\4 c'\3 e'\2>16 \arpeggioArrowUp < c g c' e'>\arpeggio < c g c' e'> < e g
  d' g' b'> < e g d' g' b'>8 f16\5 a,\6 < g,\6 f\4>16 g c' g'\2 b g < a, f c'\3
  e'\2 >8 |
  % Bar 23
  < f\4 c'\3 e'\2>16 \arpeggioArrowUp < c g c' e'>\arpeggio < c g c' e'> < e g
  d' g' b'> < e g d' g' b'>8 f16\5 a,\6 < g,\6 f\4>16 g c' g'\2 b g < a, f c'\3
  e'\2 >8~ |
  % Bar 24
  < a, f c'\3 e'\2 >8 < e b>~ < b e> \glissando a~ a g~ g \slashedGrace d
  \glissando e |
  % Bar 25
  c,8 e16 c'\3 a, c\5 c\4 d 
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
%% SixStr
sixstr = {
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
      >>
      \new Staff = "guitar traditional bass" <<
        \clef "bass_8"
        \context Voice = "lower" \lower
      >>
    >>
      \new TabStaff = "guitar tab" <<
        \set Staff.stringTunings = \stringTuning <c, a, c g c' e'>
        \new TabVoice = "dynamicsone" \dynamicsone
        \new TabVoice = "dynamicstwo" \dynamicstwo
        \new TabVoice = "dynamicsthree" \dynamicsthree
        \new TabVoice = "tab" \tab
        \new TabVoice = "dynamicsfour" \dynamicsfour
        \new TabVoice = "dynamicsfive" \dynamicsfive
        \new TabVoice = "dynamicssix" \dynamicssix
        \new TabVoice = "sixstr" \sixstr
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

