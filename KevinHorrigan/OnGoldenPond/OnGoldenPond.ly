\version "2.16.2"
%{ Declaration
=============================================================================
"On Golden Pond", by Kevin Horrigan

Pro Bono Transcription
The copyright of this transcription is not held by the transcriber.
Kevin Horrigan has not given permission for this transcription to be
sold by the transcriber.  Part of the agreement of this transcription is that 
Kevin Horrigan owns all parts of the transcription.  This means that 
permission needs to be obtained before any usage of this transcription by 
individuals other than Kevin Horrigan.

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  07/10/13
 __..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
           |                        
  .__    .  .        ,                
  [__). .|_ |* _. _.-+-* _ ._  __     
  |   (_|[_)||(_.(_] | |(_)[ )_)      
============================================================================%} 

\pointAndClickOff
#(set-global-staff-size 24)
% Header 
\header {
  title = \markup { \smallCaps "On Golden Pond" }
  composer = \markup { "Kevin Horrigan" }
  copyright = \markup { \fontsize #-4 { \char ##x00a9 2011 Kevin Horrigan Music
  Publishing } }
  tagline = \markup { \fontsize #-4 { \with-url #"http://www.sleeplimited.org"
  \line { Engraved with Lilypond by Rachael Thomas Carlson for
  Sleep Limited Publications <rtc@sleeplimited.org>. } } }
}
% Paper 
\paper { 
  #(set-paper-size "letter")
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.75\in
  right-margin = 0.75\in
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
    \concat { \fontsize #-2 { On " " Golden " " Pond  " " 07/04/13 " " \fromproperty #'page:page-number-string /12
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
%% upper
upper = {
  \numericTimeSignature
  \override Score.MetronomeMark #'padding = #5
  \time 4/4
  \tempo 2 = 66
  \key b \major
  % Bar 1
  \ottava #1 dis'''2\harmonic b''2\harmonic |
  % Bar 2
  gis''\harmonic \times 2/3 {b''4\harmonic b''\harmonic b''\harmonic } |
  % Bar 3
  dis'''2\harmonic b''2\harmonic |
  % Bar 4
  fis'''\harmonic \times 2/3 {b''4\harmonic b''\harmonic b''\harmonic } |
  % Bar 5
  dis'''2\harmonic b''2\harmonic |
  % Bar 6
  gis''\harmonic \times 2/3 {b''4\harmonic b''\harmonic b''\harmonic } |
  % Bar 7
  dis'''2\harmonic b''2\harmonic |
  % Bar 8
  ais''1\harmonic |
  % Bar 9
  fis''1\harmonic | 


}

%% lower
lower = {
  \key b \major
  \numericTimeSignature
  % Bar 1
  << {
  % Bar 1
  e1~ |
  % Bar 2
  e2 fis2 |
  % Bar 3
  e1~ |
  % Bar 4
  e2 fis2 |
  % Bar 5
  e1~ |
  % Bar 6
  e2 fis2 |
  % Bar 7
  gis1 |
  % Bar 8
  \times 2/3 { ais4 ais ais }
  \times 2/3 { ais4 ais ais }
  % Bar 9
  \times 2/3 { ais4 ais ais } ais4
} \\ {  
  % Bar 1
  cis,1~ |
  % Bar 2
  cis,2 dis,2 |
  % Bar 3
  cis,1~ |
  % Bar 4
  cis,2 dis,2 |
  % Bar 5
  cis,1~ |
  % Bar 6
  cis,2 dis,2 |
  % Bar 7
  e,1 |
  % Bar 8
  \times 2/3 { fis,4 fis, fis, } \times 2/3 { fis,4 fis, fis, } | } >>
}

% Tab
tab = {
  \key b \major
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
  <cis,\6^\laissezVibrer e\4^\laissezVibrer dis'''\1\harmonic>2 <b''\2\harmonic>2 |
  % Bar 2
  <\tweak TabNoteHead #'X-offset #'-1.2 gis\3 \tweak TabNoteHead #'X-offset #'0.6 gis''\3\harmonic>2  \times 2/3 { <dis,\6^\laissezVibrer fis\4^\laissezVibrer b''\2\harmonic>4 b''\2\harmonic b''\2\harmonic } |
  \break
  % Bar 3
  <cis,\6^\laissezVibrer e\4^\laissezVibrer dis'''\1\harmonic>2 <b''\2\harmonic>2  |
  % Bar 4
  <\tweak TabNoteHead #'X-offset #'-1.2 fis'\1 \tweak TabNoteHead #'X-offset #'0.6 fis'''\1\harmonic>2 \times 2/3 { <dis,\6^\laissezVibrer fis\4^\laissezVibrer b''\2\harmonic>4 b''\2\harmonic b''\2\harmonic } |
  \break
  % Bar 5
  <cis,\6^\laissezVibrer e\4^\laissezVibrer dis'''\1\harmonic>2 <b''\2\harmonic>2 |
  % Bar 6
  <\tweak TabNoteHead #'X-offset #'-1.2 gis\3 \tweak TabNoteHead #'X-offset #'0.6 gis''\3\harmonic>2  \times 2/3 { <dis,\6^\laissezVibrer fis\4^\laissezVibrer b''\2\harmonic>4 b''\2\harmonic b''\2\harmonic } |
  \break
  % Bar 7
  <e,\6^\laissezVibrer gis\4^\laissezVibrer dis'''\1\harmonic>2 <b''\2\harmonic>2 |
  % Bar 8
  \times 2/3 { <fis,\6^\laissezVibrer ais\4^\laissezVibrer ais''\1\harmonic>4
  <fis,\6^\laissezVibrer ais\4^\laissezVibrer> <fis,\6^\laissezVibrer
  ais\4^\laissezVibrer> } \times 2/3 { <fis,\6^\laissezVibrer
  ais\4^\laissezVibrer>  <fis,\6^\laissezVibrer ais\4^\laissezVibrer>
  <fis,\6^\laissezVibrer ais\4^\laissezVibrer> } |
  \break
  % Bar 9
  \times 2/3 { <fis,\6^\laissezVibrer ais\4^\laissezVibrer fis''\2\harmonic>4
  <fis,\6^\laissezVibrer ais\4^\laissezVibrer> <fis,\6^\laissezVibrer
  ais\4^\laissezVibrer> } <fis,\6^\laissezVibrer ais\4^\laissezVibrer>4 fis,16(
  b,8.) |
  % Bar 10
  b,,4 \override Rest #'transparent = ##t r8[ b,,8] fis,4 
  r8[ fis,8] |
  \break
  % Bar 11
  b,4 r8[ b,8] fis,4 
  r8[ fis,8] |
  % Bar 12
  b,,8 \arpeggioArrowUp <dis'\3 fis'\2 b'\1>8\arpeggio( <ais'\1 \tweak
  TabNoteHead #'transparent ##t b,,>8) <b,,\6 gis'\1> <fis,\5 e'\2 cis'\3>4
  < \tweak TabNoteHead #'transparent ##t b,, ais'\1>8 <fis, fis'> |
  \break
  % Bar 13
  <b,, b\3> \grace gis'8\1 \glissando ais'8~ <\tweak TabNoteHead #'transparent
  ##t b,, ais'> <b,, gis'>8 <fis, fis'\2>8 cis'\3 <\tweak TabNoteHead #'transparent
  ##t b,, cis'\3>
  \grace cis'8\3 \glissando dis'\3 |
  % Bar 14
  b,,8 \arpeggioArrowUp <dis'\3 fis'\2 b'\1>8\arpeggio( <ais'\1 \tweak
  TabNoteHead #'transparent ##t b,,>8) <b,,\6 \parenthesize
  cis'\3 gis'\1>8 <fis, fis'\2>4 <\tweak TabNoteHead #'transparent ##t b,, cis'\2>8 \grace
  cis'8\2 \glissando <dis'\2 dis'\1>8 |
  \break
  % Bar 15
  b,,8 b\3 \override Rest #'transparent = ##t r8[ <ais\3 cis'\2>] fis, d' fis'
  \grace { \hideFretNumber cis'8\3 \glissando s } dis'\3 |
  % Bar 16
  b,,8 \arpeggioArrowUp <dis'\3 fis'\2 b'\1>8\arpeggio( <ais'\1 \tweak
  TabNoteHead #'transparent ##t b,,>8) <b,,\6 gis'\1> <fis,\5 e'\2 cis'\3>4
  < \tweak TabNoteHead #'transparent ##t b,, ais'\1>8 <fis, fis'> |
  \break
  % Bar 17
  <b,, b\3> \grace gis'8\1 \glissando ais'8~ <\tweak TabNoteHead #'transparent
  ##t b,, ais'> <b,, gis'>8 <fis, fis'\2>8 cis'\3 <\tweak TabNoteHead #'transparent
  ##t b,, cis'\3>
  \grace cis'8\3 \glissando dis'\3 |
  % Bar 18
  b,,8 \arpeggioArrowUp <dis'\3 fis'\2 b'\1>8\arpeggio( <ais'\1 \tweak
  TabNoteHead #'transparent ##t b,,>8) <b,,\6 \parenthesize
  cis'\3 gis'\1>8 <fis, fis'\2>4 <\tweak TabNoteHead #'transparent ##t b,, cis'\2>8 \grace
  cis'8\2 \glissando <dis'\2 dis'\1>8 |
  \break
  % Bar 19
  b,,8 b\3 r8[ <b\3 cis'\2>] fis, ais\3 r8[ b\3] \glissando |
  % Bar 20
  <fis'\3 b,,>8 <b'\2 dis''\1>( <cis''\1 \tweak TabNoteHead #'transparent ##t
  b,,>) b'\2 \grace { \hideFretNumber <e'\3 gis'\2> \glissando s} <fis'\3
  ais'\2 fis,>4 < \tweak TabNoteHead #'transparent ##t b,, \parenthesize dis'\4 b'\2>8 fis'\3 | 
  \break
  % Bar 21
  b,,8 \arpeggioArrowUp <dis'\4 fis'\3 b'\2>\arpeggio r8[ <cis'\4 fis'\3 ais'\2>] fis, <b\4 e'\3 gis'\2>
  r8[ <b\4 dis'\3 fis'\2>]
  % Bar 22
  b,,8  <b'\2 dis''\1>( <cis''\1 \tweak TabNoteHead #'transparent ##t
  b,,>) b'\2 \grace { \hideFretNumber <e'\3 gis'\2> \glissando s} <fis'\3
  ais'\2 fis,>4 < \tweak TabNoteHead #'transparent ##t b,, \parenthesize dis'\4 b'\2>8 fis'\3 |  
  \break
  % Bar 23
  b,,8 \times 2/3 { dis'16\4 fis'16\3 b'\2 } r8[ d] fis, ais\4 <fis, d'\3> fis'\2 |
  % Bar 24
  b,,8  <b'\2 dis''\1>( <cis''\1 \tweak TabNoteHead #'transparent ##t
  b,,>) b'\2 \grace { \hideFretNumber <e'\3 gis'\2> \glissando s} <fis'\3
  ais'\2 fis,>4 < \tweak TabNoteHead #'transparent ##t b,, \parenthesize dis'\4 b'\2>8 fis'\3 |  
  \break
  % Bar 25
  b,,8 \arpeggioArrowUp <dis'\4 fis'\3 b'\2>\arpeggio r8[ <cis'\4 fis'\3 ais'\2>] fis, <b\4 e'\3 gis'\2>
  r8[ <b\4 dis'\3 fis'\2>]
  % Bar 26
  b,,8 \arpeggioArrowUp <dis'\3 fis'\2 b'\1>8\arpeggio( <ais'\1 \tweak
  TabNoteHead #'transparent ##t b,,>8) <b,,\6 \parenthesize
  cis'\3 gis'\1>8 <fis, fis'\2>4 <\tweak TabNoteHead #'transparent ##t b,, cis'\2>8 \grace
  cis'8\2 \glissando <dis'\2 dis'\1>8 |
  \break
  % Bar 27
  b,,8 b\3 r8[ b\2] fis, b,, \times 2/3 { r8[ c,8~ c,8] } | 
  %%
  %% Bar 28
  %%
  \arpeggioArrowUp <cis, \deadNote fis, e gis b dis'>4\arpeggio r8[ cis,] b4
  r8[ cis,] |
  \break
  % Bar 29
  \stemDown \tabFullNotation gis4 <\tweak TabNoteHead #'transparent ##t
  cis, e>  \arpeggioArrowUp <dis, fis ais dis' cis'>8\arpeggio~ < \tweak
  TabNoteHead #'transparent ##t cis'\2 b\2> < \tweak TabNoteHead #'transparent
  ##t cis, ais> dis' |
  % Bar 30
  \arpeggioArrowUp <cis, \deadNote fis, e gis b dis'>4\arpeggio r8[ cis,] <cis,
  b>4 r16[ cis,8.] |
  \break
  % Bar 31
  gis4 < \tweak TabNoteHead #'transparent ##t cis, e>4 \arpeggioArrowUp <dis, fis
  ais dis' cis'>8\arpeggio~ < \tweak TabNoteHead #'transparent ##t cis'\2 b\2>
  ~ <cis'\2 ais\3 \tweak TabNoteHead #'transparent ##t cis,> dis' |
  % Bar 32
  \arpeggioArrowUp <cis, \deadNote fis, e gis b dis'>4\arpeggio r8[ cis,] <cis,
  b>4 r16[ cis,8.] |
  \break
  % Bar 33
  gis4 < \tweak TabNoteHead #'transparent ##t cis, e>4 \arpeggioArrowUp <dis, fis
  ais dis' cis'>8\arpeggio~ < \tweak TabNoteHead #'transparent ##t cis'\2 b\2>
  ~ <cis'\2 ais\3 \tweak TabNoteHead #'transparent ##t cis,> dis' |
  % Bar 34
  \times 2/3 {<fis, e gis>4 <e gis>8[ r8] <fis, e gis>4 } \times 2/3 { \grace {
  \hideFretNumber <e gis> \glissando s } <fis ais fis,>4 <fis ais>8[ r8]
  <fis, ais fis>4 }
  \break
  % Bar 35
  \times 2/3 {<fis, e gis b>4 <e gis b>8[ r8] <fis, e gis b>4 } <fis, fis ais
  cis'>4\staccato fis,16( b,8.) | 
}
% Dynamics
%% dynamicsone
dynamicsone = {
  \override TextSpanner #'style = #'line
  \override TextSpanner #'thickness = #8
  \override TextSpanner #'color = #(x11-color "plum")
  \override TextSpanner #'layer = #-1
  \override TextSpanner #'extra-offset = #'(0.0 . 13.5)
  \override TextScript #'extra-offset = #'(-1.0 . 13.0)

}
%% dynamicstwo
dynamicstwo = {
  \override TextSpanner #'style = #'line
  \override TextSpanner #'thickness = #8
  \override TextSpanner #'color = #(x11-color "plum")
  \override TextSpanner #'layer = #-1
  \override TextSpanner #'extra-offset = #'(0.0 . 13.85)
  \override TextScript #'extra-offset = #'(-1.0 . 13.4)

}
%% dynamicsthree
dynamicsthree = {
  \override TextScript #'(extra-offset) = #'(-0.5 . 14.0)
  \override TextSpanner #'style = #'line
  \override TextSpanner #'thickness = #8
  \override TextSpanner #'color = #(x11-color "plum")
  \override TextSpanner #'layer = #-1
  \override TextSpanner #'extra-offset = #'(0.0 . 13.75)
}
%% dynamicsfour
dynamicsfour = {

}
%% dynamicsfive
dynamicsfive = {

}
%% dynamicssix
dynamicssix = {
  \override TextScript #'extra-offset = #'(-0.7 . 9.5)
}
%% sixstrlhfinger
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


