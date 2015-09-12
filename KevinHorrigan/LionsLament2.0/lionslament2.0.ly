\version "2.18.2"
%{ Declaration
=============================================================================
"Lion's Lament", by Kevin Horrigan

Copyright Info
Pro Bono Transcription
The copyright of this transcription is not held by the transcriber.
Kevin Horrigan has not given permission for this transcription to be
sold by the transcriber.  Part of the agreement of this transcription is that 
Kevin Horrigan owns all parts of the transcription.  This means that 
permission needs to be obtained before any usage of this transcription.

This transcription is derived from Mark Grover's GuitarPro tab transcription
which was commissioned by Kevin Horrigan.  Use of Grover's transcription
was approved by Kevin Horrigan.

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
% Header
 % Header contains the composer information, Song title and copyright
 % information.  This includes Transcription copyright.
\header {
  title = \markup { \bold \fontsize #2 { \smallCaps "Lion's Lament"} }
  composer = \markup { \fontsize #-1 { \smallCaps  "Kevin Horrigan" } }
  poet = \markup { \concat { \fontsize #-3 { A\fontsize #-5 {1}" "A\fontsize
  #-5 {2}" "D\fontsize #-5 {3}" "G\fontsize #-5 {3}" "B\fontsize #-5 {3}" "E\fontsize #-5
  {4} }}}
  meter = \markup { " " }
  copyright = \markup { 
    \fill-line {
      \center-column { 
        \line { 
          \raise #-2.5
          \concat { 
            \fontsize #-3 { 
              "2013 " \char ##x00a9 " Kevin Horrigan Music"
            } 
          } 
        } 
        \line {
          \raise #-1.2
          \concat { 
            \fontsize #-3 { 
              Transcription " " \char ##x00a9 " 2015 Sleep Limited Publications"
            }
          }
        } 
        \line {
          \concat {
            \fontsize #-3 {
              "Lion's Lament 08/24/2015 " \fromproperty #'page:page-number-string "/3" 
            }
          }
        }
      } 
    }
  } 
  tagline = " "

}
% Paper
 % The Paper section contains the innformation regarding the placement
 % of the systems within the confines of the letter size document.
 % This is also where the choice of typeface is located.  The
 % "max-systems-per-page" is located here.  The paper includes also
 % contains the information for the copyright on pages after the first.
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.6\in
  right-margin = 0.6\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  max-systems-per-page = 4
  footnote-separator-markup = \markup \fill-line {  \override #'(span-factor . 1/2) \override #'(thickness . 0.01) \draw-hline }
  myStaffSize = #20
  #(define fonts
  (make-pango-font-tree "Tex Gyre Termes"
                        "Tex Gyre Heros"
                        "FreeMono"
                        (/ myStaffSize 20)))
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
      \concat { \fontsize #-3 { "Lion's Lament 08/24/2015 " \fromproperty #'page:page-number-string /3
    }  }
    % copyright on first page 
    \on-the-fly #first-page \fromproperty #'header:copyright 
    % tagline on last page 
    \on-the-fly #last-page \fromproperty #'header:tagline 
  } 
} 
evenFooterMarkup = \oddFooterMarkup 

} 
% Layout
 % The layout include is occasionaly commented out.  But it provides the
 % manner in which one can define placement of distance and padding.
\layout {
  \context {
    \Score
    \override StaffGrouper #'staffgroup-staff-spacing =
    #'((basic-distance . 15)
    (padding . -10)
    (stretchability . 0))
    }
  }
% Includes
 % The Sleep-Functions include contains the quick tweaks and overrides
 % that are frequently used within sleeplimited publications.
\include "sleep-functions.ly"
 % The Vibrato include contains the manner in which one can create
 % sine waves to be used with Neck, Vertical, and horizontal vibrato.
\include "vibrato.ly"
% Standard Notation
%% Upper
upper = {
  \set Staff.midiInstrument = #"acoustic grand"
  \override TupletNumber.text = \markup { \sans "3" }
  \override TupletNumber.font-shape = upright
  \override TupletNumber.font-size = -1.0
  \override TupletBracket.thickness = 1.0
  \override TupletBracket.bracket-visibility = t
  \override Staff.StaffSymbol thickness = 0.5
  \override Staff.Beam beam-thickness = 0.38
  \numericTimeSignature
  \time 4/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 124
  \key g \major
  \override Score.RehearsalMark break-align-symbols = #'(key-signature)
  \once \override Score.KeySignature break-align-anchor = #2.3
  \once \override Score.RehearsalMark extra-offset = #'(0 . 2)
  \mark \markup  { \fontsize #-4 \concat {
    \fontsize #0 { \note #"4" #1 }" =" \fontsize #-4 \number " 124"
  }}
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  % Bar 1
  << {
    %%% VoiceOne
    \voiceOne
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    % Bar 1
 
  % Bar 1
  b2\rest
   b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 2
  b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 3
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 4
  b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 5
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 6
  b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 7
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 8
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote g16 a16~
  a8 |
  % Bar 9
  << { <b, fis b>1 } \\ { b1 } >>
  % Bar 10
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b b } \\ { s16 s8 <b fis>4 } >>
  % Bar 11
  \stemNeutral
  <a, e a>1
  % Bar 12
  b16( cis'8)( b16)~ b8 a8 b16( cis'8)( b16)~ b8 a8 |
  % Bar 13
  << { <b, fis b>1 } \\ { b1 } >>
  % Bar 14
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b8 b8 } \\ { s16 s8 <b fis>4 } >>
  % Bar 15
  <<  { a2 \slurDown b16( \tieDown cis'8.)~ cis'4 \tieNeutral } \\ { <a, e>1 }  >> |
  % Bar 16
  b16( cis'8)( b16)~ b8 a8 b16( cis'8)( b16)~ b8 a8 |
  % Bar 17
  << { <b, fis b>1 } \\ { b1 } >>
  % Bar 18
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b8 b8 } \\ { s16 s8 <b fis>4 } >>
  % Bar 19
  <a, e a>1
  % Bar 20
  b16( cis'8)( b16)~ b8 a8 b16( cis'8) e'16~ e'8 e8 |
  % Bar 21 
  } \\ {
    %%% VoiceFour
    \voiceFour
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    % Bar 1
  } \\ {
    %%% VoiceTwo
    \voiceTwo
    % Bar 1
  } >>
}
%% Lower
lower = {
  \set Staff.midiInstrument = #"acoustic grand"
  \override TupletNumber #'text = \markup { \sans "3" }
  \override TupletNumber #'font-shape = #'upright
  \override TupletNumber #'font-size = #'-1
  \override TupletBracket #'thickness = #'1
  \override TupletBracket #'bracket-visibility = ##t
  \override Staff.StaffSymbol #'thickness = #'0.5
  \override Staff.Beam #'beam-thickness = #'0.38
  \numericTimeSignature
  \time 4/4
  \key d \minor
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \once \override Score.KeySignature #'break-align-anchor = #2.3
  \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  % Bar 1
  << {
    %%% VoiceOne
    \voiceOne
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
  % Bar 1
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 2
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 3
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 4
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 5
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 6
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
 

  % Bar 7
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 8
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 9
  b,,4 d,16\rest b,,16 r8 b,,4 d,8\rest b,,8 |
  % Bar 10
  b,,4 d,16\rest b,,16 r8 b,,4 r4 |
  % Bar 11
  a,,4 d,16\rest a,,16 r8 a,,4 d,8\rest a,,8 |
  % Bar 12
  a,,4 d,8\rest a,,8 a,,4 d,8\rest a,,8 |
  % Bar 13
  b,,4 d,16\rest b,,16 r8 b,,4 d,8\rest b,,8 |
  % Bar 14
  b,,4 d,16\rest b,,16 s8 b,,4 r4 |
  % Bar 15
  a,,4 d,16\rest a,,16 r8 a,,4 d,8\rest a,,8 |
  % Bar 16
  a,,4 d,8\rest a,,8 a,,4 d,8\rest a,,8 |
  % Bar 17
  b,,4 d,16\rest b,,16 r8 b,,4 d,8\rest b,,8 |
  % Bar 18
  b,,4 d,16\rest b,,16 r8 b,,4 r4 |
  % Bar 19
  a,,4 d,16\rest a,,16 r8 a,,4 d,8\rest a,,8 |
  % Bar 20
  a,,4 d,8\rest a,,8 a,,4 d,4\rest |
  %%
  %% Bar 21
  %%
  a,,16( c,8.) d,8\rest c,4. d,4\rest |
  } \\ {
    %%% VoiceFour
    \voiceFour
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    % Bar 1
  } \\ {
    %%% VoiceTwo
    \voiceTwo
    % Bar 1
  } >>
}
% Tab
tab = {
  \set Staff.midiInstrument = #"vibraphone"
  \key g \major
  \numericTimeSignature
  \time 4/4
  \override Beam.damping = #100000
  \override TabNoteHead.whiteout = ##t
  \tabFullNotation
  \stemDown
  \override Rest.font-size = #2 
  \override TabStaff.TimeSignature #'X-offset = #-1
  \override TabStaff.TimeSignature #'font-size = #5
  \override TabStaff.TabNoteHead font-name = #"Tex Gyre Schola"
  \override Staff.Stem #'stemlet-length = #2.75
  \override BreathingSign.extra-offset = #'(0.5 . -2.0)
  \override TupletBracket.thickness = #'1
  \override TupletNumber.text = \markup { \sans "3" }
  \override TupletNumber.font-shape = #'upright
  \override TupletNumber.font-size = #'-1
  \override TupletBracket.edge-height = #'(0.5 . 0.5)
  \override TupletBracket.extra-offset = #'(0 . -0.1)
  \override Score.OttavaBracket thickness = 0.5
  % Bar 1

  < a,, a,>8 [ \leftBracketTwo < b,, b,> ] \tick < a,, a,>16 \tick < a,, a,>16
  < a,, a,>8 \leftBracketTwo < b,, b,> \tick d16 \slashedGrace f8
  \glissando fis16 \tick d16 d16 \tick a,16 b,16 |
  % Bar 2
  <a,, a,>8 [ \leftBracketTwo <b,, b,> ] \tick <a,, a,>16 \tick <a,, a,>16
  <a,, a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8
  \glissando cis16 \tick a,16 a,16 \tick a,16 b,16 |
  % Bar 3
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 4
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,, a,>8
  \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick a,16 a,16
  \tick a,16 b,16 |
  % Bar 5
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 6
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 7
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 | 
  % Bar 8
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick g16
  a16~ a8 | 

  
  %%
  %% Bar 9
  %%
  \override BreathingSign #'extra-offset = #'(1.25 . -2.0) \arpeggioArrowUp
  \leftBracketTwo <b,, b, fis b\3 b\2>4-\mkTweak #-1 #-8 ^\rhp\arpeggio^\mark
  \markup { \fontsize #-2 \musicglyph #"scripts.segno" }  <\invTNH
  b,,\6>16-\mkTweak #-0.5 #-8.8 ^\rhp b,,16 <\invTNH b,,\6>8-\mkTweak #-0.5
  #-8.8 ^\rhp  b,,4 <\invTNH b,,\6>8-\mkTweak #-0.5 #-8.8 ^\rhp[  b,,8] |
  % Bar 10
  <b,, e'>4-\mkTweak #-0.5 #-8 ^\rhp -\mkTweak #-0.5 #-2.9 ^\rha <\invTNH
  b,,\6>16-\mkTweak #-0.5 #-8.8 ^\rhp[ <b,, b\2>-\mkTweak #-0.7 #-3.9 ^\rhm ~ <
  \fakeSlur b\2  dis'\2>-\mkTweak #-0.5 #-8.5 ^\rhp e'-\mkTweak #-0.5 #-2.6
  ^\rha] b,, dis'-\mkTweak #-0.7 #-2.75 ^\rhm ~ < \fakeSlur dis'\2 b\2>8
  <\invTNH b,,\6 fis\4 b\3>8 b8-\mkTweak #-0.4 #-4.45 ^\rhi |
  
  % Bar 11
  \arpeggioArrowUp <e a a, a,,>4\4\3\5\6-\mkTweak #-1 #-8.6 ^\rhp\arpeggio
  <\invTNH a,,\6>16-\mkTweak #-0.5 #-9.4 ^\rhp a,,16 <\invTNH a,,>8-\mkTweak
  #-0.5 #-9.4 ^\rhp a,,4 <\invTNH a,,\6>8-\mkTweak #-0.5 #-9.4 ^\rhp[ a,,8] |
  % Bar 12
  <a,, b\2 \fakeSlur d'\2>16-\mkTweak #-0.5 #-8 ^\rhp -\mkTweak #-0.7 #-3.9
  ^\rhm ~ < \fakeSlur d'\2 cis'\2>8~ < \fakeSlur cis'\2 b\2>16 <\invTNH
  a,,\6>8-\mkTweak #-0.5 #-8.5 ^\rhp[ <a,, a>8-\mkTweak #-0.4 #-4.5 ^\rhi] <a,,
  b\2 \fakeSlur d'\2>16-\mkTweak #-0.7 #-1.35 ^\rhm -\mkTweak #-0.5 #-7.05
  ^\rhp ~ < \fakeSlur d'\2 cis'\2>8~ < \fakeSlur cis'\2 b\2>16 <\invTNH
  a,,\6>8-\mkTweak #-0.6 #-9.75 ^\rhp[ <a,, a>8-\mkTweak #-0.4 #-5.75 ^\rhi] |
  % Bar 13
  \override BreathingSign #'extra-offset = #'(1.25 . -2.0) \arpeggioArrowUp
  \leftBracketTwo <b,, b, fis b b>4\6\5\4\3\2\arpeggio
  \override TextScript #'extra-offset = #'(-0.5 . -6.3) 
  <\invTNH b,,\6>16 b,,16 <\invTNH b,,>8  b,,4 
  <\invTNH b,,\6>8[  b,,8] |
  % Bar 14
  <b,, e'>4 <\invTNH b,,\6>16[ <b,, b>~ <\fakeSlur
  b\2 dis'\2> \once \override TextScript #'extra-offset = #'(-0.4 . -0.6) e']
  b,, dis'~ <\fakeSlur dis'\2 b\2>8 <\invTNH b,,\6 fis\4 b\3>8 b8 |

  % Bar 15
  \arpeggioArrowUp \once \override TextScript #'extra-offset = #'(-1.0 . -6.3)
  <e a a, a,,>4\4\3\5\6\arpeggio <\invTNH a,,\6>16 a,,16 <\invTNH a,,>8 <a,,
  b>16-\mkTweak #-0.7 #-2.45 ^\rhm ~ <\fakeSlur b\2 \dotUp cis'\2>8. <\invTNH
  a,,\6>8[ a,,8] |
  % Bar 16
  <a,, b\2 \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2
  b\2>16 <\invTNH a,,\6>8[ <a,, a>8] <a,, b\2
  \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2 b\2>16 
  <\invTNH a,,\6>8[ <a,, a>8] |
  % Bar 17
  \override TextScript #'extra-offset = #'(-1.0 . -6.3)
  \override BreathingSign #'extra-offset = #'(1.25 . -2.0) \arpeggioArrowUp
  \leftBracketTwo <b,, b, fis b b>4\6\5\4\3\2\arpeggio
  \override TextScript #'extra-offset = #'(-0.5 . -6.3)
  <\invTNH b,,\6>16 b,,16 <\invTNH b,,>8  b,,4 
  <\invTNH b,,\6>8[  b,,8] |
  % Bar 18
  <b,, e'>4 <\invTNH b,,\6>16[ <b,, b>~ <\fakeSlur
  b\2 dis'\2> 
  \once \override TextScript #'extra-offset = #'(-0.4 . -0.6)
  e'] b,, dis'~ <\fakeSlur dis'\2 b\2>8 <\invTNH b,,\6 fis\4 b\3>8 b8 |
  % Bar 19
  \arpeggioArrowUp
  \once \override TextScript #'extra-offset = #'(-1.0 . -6.3) <e a a,
  a,,>4\4\3\5\6\arpeggio <\invTNH a,,\6>16 a,,16 <\invTNH a,,>8 a,,4 <\invTNH a,,\6>8[ a,,8] |
  % Bar 20
  <a,, b\2 \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2
  b\2>16 <\invTNH a,,\6>8[ <a,, a>8] <a,, b>16~ <\fakeSlur b\2 cis'\2>8
  e'16-\mkTweak #-0.5 #-0.55 ^\rha <\invTNH b,,\6>8-\mkTweak #-0.7 #-9 ^\rhp [
  e8-\mkTweak #-0.4 #-4.7 ^\rhi ] | 
  %%%%%%%%%
  %% Bar 21
  %%%%%%%%
  \revert TextScript #'extra-offset
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp~ <\fakeSlur a,,\6 c,\6>16 e16-\mkTweak #-0.4
  #-3.3 ^\rhi e16-\mkTweak #-0.8 #-3.3 ^\rhm  <\invTNH a,,\6>16-\mkTweak #-0.7
  #-8.2 ^\rhp -\mkTweak #-0.4 #-7.1 ^\rhi [ e c,8-\mkTweak #-0.5 #-6.3 ^\rhp]
  d'16-\mkTweak #-0.5 #-2.7 ^\rha ~ <\fakeSlur d'\2 b\2> <\fakeSlur a\3
  g\3>8-\mkTweak #-0.7 #-2.3 ^\rhm ~ <a\3 \invTNH a,,>-\mkTweak #-0.7 #-6.25
  ^\rhp -\mkTweak #-0.5 #-4.15 ^\rha b |
}
% Dynamics and Articulations
 % These are generally going to be used for Right Handing String
 % Damping as it is not possible to have two TextSpanner cohabiting the
 % same voice.
%% DynamicsOne
  dynamicsone = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
    \tabFullNotation
    % examples:
    % s2.. \strDamp s8\startTextSpan |
    % s8 s8\stopTextSpan s2. |
  }
%% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
    \tabFullNotation
  }
%% DynamicsThree
dynamicsthree = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \override TextSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
  \tabFullNotation
  % examples:
  % s2.. \strDamp s8\startTextSpan |
  % s8 s8\stopTextSpan s2. |
}
%% DynamicsFour
dynamicsfour = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \override TextSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
  \tabFullNotation
  % examples:
  % s2.. \strDamp s8\startTextSpan |
  % s8 s8\stopTextSpan s2. |
}
%% DynamicsFive
dynamicsfive = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \override TextSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
  \tabFullNotation
  % examples:
  % s2.. \strDamp s8\startTextSpan |
  % s8 s8\stopTextSpan s2. |
}
%% DynamicsSix
dynamicssix = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \override TextSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
  \tabFullNotation
  % examples:
  % s2.. \strDamp s8\startTextSpan |
  % s8 s8\stopTextSpan s2. |
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  % Bar 1
  s8-\mkTweak #-0.8 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \revert TextScript #'extra-offset
  s16-\mkTweak #-0.8 #3 _\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \revert TextScript #'extra-offset
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 2
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.8 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 3
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 4
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.85 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 5
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 6
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.85 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 7
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 8
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16-\mkTweak #-0.8 #4 _\onestrdwnstrm s16-\mkTweak #-0.8 #4 _\onestrupstrm s8
  % Bar 9
  \revert TextScript #'extra-offset
  \textSpannerDown \tsMove #0 #-0.7 \lhSpannerDown "1" { s1  
  % Bar 10
  s2. s8 s8 
  % Bar 11
  s8 } s8 s2. 
  % Bar 12
  s1
  % Bar 13
  s1
  % Bar 14
  s2. s8-\mkTweak #-0.6 #4.07 _\twoStrFlick s8
  % Bar 15
  s1 
  % Bar 16
  s1
  % Bar 17
  s1
  % Bar 18
  s2. s8-\mkTweak #-0.6 #4.07 _\twoStrFlick s8
  % Bar 19
  s1 
  % Bar 20
  s1 
}
%% SixStr
 % SixStr is usually used for Right Hand Fingering.
sixstr = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  % Examples: 
  % s4 s4\mkTweak #-0.10 #-1.9 _\tomTom s4 s4\mkTweak #0.12 #-2.3 _\bass |
  % Bar 2
  % s2 s4 s4\mkTweak #0.12 #-2.3 _\bass |
}
%% To fix the issue with TextSpanners.  The following are generally
 % going to be used for barres, vibrati, and other text spanners which
 % may be used.
%% lhOne
lhOne = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  \override TextSpanner #'outside-staff-priority = ##f
  \override Score.TrillSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(0 . 0.5)
  \override TabStaff.BreathingSign #'outside-staff-priority = ##f
  \override BreathingSign #'outside-staff-priority = ##f
  \override TextSpanner #'(bound-details left-broken text) = ##f 
  \override TextSpanner #'(bound-details right-broken text) = ##f 
  % Examples:
  % \tsMove #0 #0.25 \lhSpannerUp "4" {s8 s8 s4 s8} \bsMove #-1 #1
  % \leftBracketThree \tsMove #0 #0.25 \lhSpannerUp "4" { s8 s8 s8 |
  % s4 s4 s8 s8 s8 } s8 |

}
%% lhTwo
lhTwo = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  \override TextSpanner #'outside-staff-priority = ##f
  \override Score.TrillSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(0 . 0.5)
  \override TabStaff.BreathingSign #'outside-staff-priority = ##f
  \override BreathingSign #'outside-staff-priority = ##f
  \override TextSpanner #'(bound-details left-broken text) = ##f 
  \override TextSpanner #'(bound-details right-broken text) = ##f 
  % Examples:
  % \tsMove #0 #0.25 \lhSpannerUp "4" {s8 s8 s4 s8} \bsMove #-1 #1
  % \leftBracketThree \tsMove #0 #0.25 \lhSpannerUp "4" { s8 s8 s8 |
  % s4 s4 s8 s8 s8 } s8 |

}
%% lhThree
lhThree = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  \override TextSpanner #'outside-staff-priority = ##f
  \override Score.TrillSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(0 . 0.5)
  \override TabStaff.BreathingSign #'outside-staff-priority = ##f
  \override BreathingSign #'outside-staff-priority = ##f
  \override TextSpanner #'(bound-details left-broken text) = ##f 
  \override TextSpanner #'(bound-details right-broken text) = ##f 
  % Examples:
  % \tsMove #0 #0.25 \lhSpannerUp "4" {s8 s8 s4 s8} \bsMove #-1 #1
  % \leftBracketThree \tsMove #0 #0.25 \lhSpannerUp "4" { s8 s8 s8 |
  % s4 s4 s8 s8 s8 } s8 |

}
%% lhFour
lhFour = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  \override TextSpanner #'outside-staff-priority = ##f
  \override Score.TrillSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(0 . 0.5)
  \override TabStaff.BreathingSign #'outside-staff-priority = ##f
  \override BreathingSign #'outside-staff-priority = ##f
  \override TextSpanner #'(bound-details left-broken text) = ##f 
  \override TextSpanner #'(bound-details right-broken text) = ##f 
  % Examples:
  % \tsMove #0 #0.25 \lhSpannerUp "4" {s8 s8 s4 s8} \bsMove #-1 #1
  % \leftBracketThree \tsMove #0 #0.25 \lhSpannerUp "4" { s8 s8 s8 |
  % s4 s4 s8 s8 s8 } s8 |

}

% Score
 % The Score include contains the information for the system bar.  The
 % Staff symbols, the voices, the clefs, and staff sizes.
\book {
  \score {
    <<
      \new GrandStaff = "tab with traditional" \with {
        systemStartDelimiter = #'SystemStartBar
        \override SystemStartBar #'thickness = #5
        \override SystemStartBar #'X-offset = #-1
        \override StaffSymbol #'staff-space = #(magstep -2)
        fontSize = #-2
      }  <<
        \new Staff = "guitar traditional" <<
          \clef "treble_8"
          \context Voice = "upper" \upper
        >>
        \new Staff = "guitar Traditional bass" <<
          \clef "bass_8"
          \context Voice = "lower" \lower
        >>
      >>
      \new TabStaff = "guitar tab" 
      <<
        \clef "moderntabII"
        \set Staff.stringTunings = \stringTuning < a,, a, d g b e'>
        \new TabVoice = "dynamicsone" \dynamicsone
        \new TabVoice = "dynamicstwo" \dynamicstwo
        \new TabVoice = "dynamicsthree" \dynamicsthree
        \new TabVoice = "tab" \tab
        \new TabVoice = "dynamicsfour" \dynamicsfour 
        \new TabVoice = "dynamicsfive" \dynamicsfive  
        \new TabVoice = "dynamicssix" \dynamicssix
        \new TabVoice = "lhOne" \lhOne
        \new TabVoice = "lhTwo" \lhTwo
        \new TabVoice = "lhThree" \lhThree
        \new TabVoice = "lhFour" \lhFour
        \new TabVoice = "sixstr" \sixstr
      >>
    >>
    %% Layout
    \layout {
      indent = 0\cm
      \context { 
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      }
      \context {
        \Staff
        \override TimeSignature #'space-alist #'first-note = #'(extra-space .
        4.9) }
\context {
  \TabStaff
  \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
}
      }
      \midi {}


    }
  }
