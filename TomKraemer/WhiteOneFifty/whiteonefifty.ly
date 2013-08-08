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
#(set-global-staff-size 24)
% Header
\header {
  title = \markup { \smallCaps "White One Fifty" }
  composer = \markup { \smallCaps "Tom Kraemer" }
  poet = \markup \concat { \fontsize #-2 { C\sub{1} A\sub{2} C\sub{3} G\sub{3} C\sub{4} E\sub{4} } }
  copyright = \markup { \concat { \fontsize #-2 { "White One Fifty  " \fromproperty #'page:page-number-string /18
}}}  
  tagline = \markup { \concat { \fontsize #-2 { "White One Fifty  " \fromproperty #'page:page-number-string /18
}}  
}}
% Paper
\paper {
  #(set-paper-size "letter")

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
    \concat { "White One Fifty " 07/04/13 " " \fromproperty #'page:page-number-string /12
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
rhc = \markup { \fontsize #-5 \italic "c" }
rha = \markup { \fontsize #-5 { \italic "a" } }
rhm = \markup { \fontsize #-5 \italic "m" }
rhi = \markup { \fontsize #-5 \italic "i" }
rhp = \markup { \fontsize #-5 \italic "p" }
lhone = \markup { \fontsize #-5 \circle \pad-markup #0.2 "1" }
lhtwo = \markup { \fontsize #-5 \circle \pad-markup #0.2 "2" }
lhthree = \markup { \fontsize #-5 \circle \pad-markup #0.2 "3" }
lhfour = \markup { \fontsize #-5 \circle \pad-markup #0.2 "4" }
lhthumb = \markup { \fontsize #-5 \circle \pad-markup #0.2 "T" }
lhguideone = \markup { \fontsize #-5 \circle \pad-markup #0.2 "-1" }
lhguidetwo = \markup { \fontsize #-5 \circle \pad-markup #0.2 "-2" }
lhguidethree = \markup { \fontsize #-5 \circle \pad-markup #0.2 "-3" }
lhguidefour = \markup { \fontsize #-5 \circle \pad-markup #0.2 "-4" }
lhguidethumb = \markup { \fontsize #-5 \circle \pad-markup #0.2 "-T" }


snare = \markup {
  \center-column {
    \combine
    \draw-line #'(0 . 3)
    \halign #CENTER
    \override #'(box-padding . 0) 
    \rounded-box {
      \draw-line #'(1 . 0.5)
    }
  }
}

bass = \markup {
  \center-column {
    \combine
    \draw-line #'(0 . 3)
    \halign #CENTER
    \override #'(box-padding . 0)
    \rounded-box {
      \filled-box #'(0 . 0.5) #'(0 . 0.5) #0
    }
  }
}
bassSnare = \markup {
  \center-column {
    \combine
    \draw-line #'(0 . 3)
    \halign #CENTER
    \override #'(box-padding . 0) 
    \rounded-box {
      \draw-line #'(1 . 0.5)
      \filled-box #'(0 . 0.5) #'(0 . 0.5) #0 
    }
  }
}
hideFretNumber = {
  \once \override TabNoteHead #'transparent = ##t
  \once \override NoteHead #'transparent = ##t
  \once \override Stem #'transparent = ##t
  \once \override Flag #'transparent = ##t
  \once \override NoteHead #'no-ledgers = ##t
  \once \override Glissando #'(bound-details left padding) = #0.3
}
#(define (new-stil markup)
   ;; Creates a stencil
   (lambda (grob)
     (grob-interpret-markup grob markup)))

tweakTabNoteHead = 
#(define-music-function (parser location mrkp mus)(markup? ly:music?)
                        #{
                        \tweak #'stencil #(new-stil mrkp)
                        #mus
                        #})

newTabNoteHead =
#(define-music-function (parser location mrkp)(markup?)
                        ;; Uses @code{new-stil} in a music-function.
                        ;; Ofcourse it's possible to use:
                        ;; @samp{\\once \\override TabNoteHead #'stencil =
                        ;;         #(new-stil #{ \\markup { \musicglyph #"noteheads.s0la" } #})}
                        ;; directly.
                        #{
                        \once \override TabNoteHead #'stencil = #(new-stil mrkp)
                        #})

 % creating a variable as sort of schortcut.
tick = \newTabNoteHead \markup { \musicglyph #"noteheads.s0laThin" }
newTabHeadInChord = \markup { \musicglyph #"noteheads.s0laThin" }

stringSnare = \newTabNoteHead \markup { \override #'(box-padding . 0)
\rounded-box {
  \draw-line #'(1 . 0.5)
}
}
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
  c16~ <\tweak TabNoteHead #'transparent ##t c\4 f\4> g( b) c'8 e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'8 | 
  % Bar 2
  c16( f) g( b) c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 c' a, | 
  \break
  % Bar 3
  c16( f) g( a) c'8 a,16( c\5)~  c\5 f' c' a f\5 a\4 <e'\3 g'\2>8 |
  % Bar 4
  a,32 a,32( g16\5) c( b\4) c'8 g16\5 a,~ a, e'\2 c'\3 f\4 aes\4 d'\3 f'\2 <c,
  c' e'>
  \break
  % Bar 5
  c16( f) g( b) c' g e16\5 d16\5~ d\5[ e'~ e'16 g] b\4 d'\3 c'8 | 
  % Bar 6
  c16( g\4) g( d'\3) e'8 g16\5 e\5~ e\5 e' c' g \tick a,^\rhp \tick d^\rhi
  <b\4 g'\3> c\6 |
  % Bar 7
  c16( f) g( b) c'8 e16\5 d16\5~ d\5[ e' c' g] b\4 d'\3 b'\2 g\5 |
  % Bar 8
  r8. f16\5 <c, e\5 g\4 d'\3>8^\rhm a,8\6 <g,\6 f\4>16 g c'^\rha g'\2^\rhm b8\3
  <f\4 c'\3 e'\2>~ |
  \break
  % Bar 9
  <f\4 c'\3 e'\2>16 <c g c' e'> <c g c' e'> <e\5 g\4 d'\3 g'\2 b'\1>^\repeatTie
  <c, e\5 g\4 d'\3 g'\2 b'\1> f\5 a,8\6 <g,\6 f\4>16 g c' g'\2 r8[ <a, f c'\3
  e'\2>]~ |
  % Bar 10
  <a, f c'\3 e'\2> <e b>~ <e b> a~ a( g)~ g e |
  \break
  % Bar 11
  c,16 c, e <c'\3 g'\1> a,( c\5) c( d) d'8. b16~ b8 c' |
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
        \set Staff.stringTunings = \stringTuning <c, a, c g c' e'>
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


