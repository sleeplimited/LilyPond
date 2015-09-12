\version "2.18.2"
%{ Declaration
===========================================================================
"Madrid", by Stefano Barone

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  Started on 09-11-2015.  This transcription is a
re-typesetting of The Transcription by Vittorio Albergamo (c) 2011.
__..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
|                        
.__    .  .        ,                
[__). .|_ |* _. _.-+-* _ ._  __     
|   (_|[_)||(_.(_] | |(_)[ )_)      

=========================================================================%} 
\pointAndClickOff
% header
\header {
  title = \markup { \fontsize #2 \smallCaps  "Madrid" }
  composer = \markup {\fontsize #-1 \smallCaps  "Stefano Barone"}
  poet = \markup { 
    \concat {  
      \fontsize #-3 { 
        A\fontsize #-5 {1} 
        G\raise #0.5 \fontsize #-5 \sharp\fontsize #-5 {2} 
        C\raise #0.5 \fontsize #-5 \sharp\fontsize #-5 {3}
        F\raise #0.5 \fontsize #-5 \sharp\fontsize #-5 {3}
        B\fontsize #-5 {3}
        C\raise #0.5 \fontsize #-5 \sharp\fontsize #-5 {4} 
      }
    }
  }
  meter = \markup { " " }
  copyright = \markup { 
    \fill-line {
      \center-column { 
        \line { 
          \raise #-2.5
          \concat { 
             \fontsize #-3 { 
              "Copyright " \char ##x00a9 " 2011 Stefano Barone. " 
              "All rights reserved.  Used without permission."
            } 
          } 
        } 
        \line {
          \raise #-1.2
          \concat { 
             \fontsize #-3 { 
              "Transcription by Vittorio Albergamo. Typeset by Sleep Limited Publications."
            }
          }
        } 
        \line {
          \concat {
             \fontsize #-3 {
                "Madrid 09/11/2015 " \fromproperty #'page:page-number-string "/3" 
             }
           }
         }
      } 
    }
  } 
  tagline = " "

}
% paper
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.6\in
  right-margin = 0.6\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  max-systems-per-page = 3
  footnote-separator-markup = \markup \fill-line {  \override #'(span-factor . 1/2) \override #'(thickness . 0.01) \draw-hline }
  myStaffSize = #20
  #(define fonts
  (make-pango-font-tree "Tex Gyre Schola"
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
      \concat {  \fontsize #-3 { "Madrid 09/11/2015 " \fromproperty #'page:page-number-string /3
    }  }
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
    #'((basic-distance . 15)
    (padding . -10)
    (stretchability . 0))
    }
  }

% Includes and functions
  \include "sleep-functions.ly"
  \include "vibrato.ly"
% Standard Notation
%% Upper
  upper = {
    \set Staff.midiInstrument = #"acoustic grand"
    \override TupletNumber #'text = \markup {  "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'thickness = #'1
    \override TupletBracket #'bracket-visibility = ##t
    \override Staff.StaffSymbol #'thickness = #'0.5
    \override Staff.Beam #'beam-thickness = #'0.38
    \numericTimeSignature
    \time 5/8
    \set Score.tempoHideNote = ##t
    \tempo 4 = 90
    \key cis \minor
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #2.3
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #0 { \note #"4" #1 }" =" \fontsize #-4 \number " 90"
    }}
    \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
    % Bar 1
    << {
%%% VoiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      % Bar 1
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 2
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 3
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis'
      % Bar 4
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 5
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 6
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 7
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis'
      % Bar 8
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 9
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 10
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 11
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis'
      % Bar 12
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 13
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 14
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 15
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis'
      % Bar 16
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 17
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 18
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 19
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 20
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 21
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis'
      % Bar 22
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 23
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 24
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 25
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis'
      % Bar 26
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 27
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 28
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 29
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis'
      % Bar 30
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 31
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
      % Bar 32
      fis'16 fis'16 fis fis' fis
      fis'16 fis'16 fis fis' fis
    \time 7/8
    \set Timing.baseMoment = #(ly:make-moment 1 16)
    \set Timing.beatStructure = #'(2 2 3 2 2 3)
      % Bar 33
      fis'16 fis' fis' fis' fis' fis' fis
      fis'16 fis' fis' fis' fis' fis' fis
      % Bar 34
      fis'16 fis' fis' fis' fis' fis' fis
      fis'16 fis' fis' fis' fis' fis' fis
      % Bar 35
      fis'16 fis' fis' fis' fis' fis' fis
      fis'16 fis' fis' fis' fis' fis' fis
      % Bar 36
      fis'16 fis' fis' fis' fis' fis' fis
      fis'16 fis' fis' fis' fis' fis' fis
      % Bar 37
      fis' b fis' b fis' b cis'
      fis' b fis' b fis' b cis'
      % Bar 38
      fis' b fis' b fis' b cis'
      fis' b fis' b fis' b cis'
      % Bar 39
      fis' b fis' b fis' b cis'
      fis' b fis' b fis' b cis'
      % Bar 40
    \time 8/8
    \set Timing.baseMoment = #(ly:make-moment 1 16)
    \set Timing.beatStructure = #'(2 2 3 2 2 3 2)
      fis' b fis' b fis' b cis'
      fis' b fis' b fis' b cis'
      r8 |


    } >>


 }
%% Lower
lower = {
    \set Staff.midiInstrument = #"xylophone"
    \override TupletNumber #'text = \markup {  "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'thickness = #'1
    \override TupletBracket #'bracket-visibility = ##t
    \override Staff.StaffSymbol #'thickness = #'0.5
    \override Staff.Beam #'beam-thickness = #'0.38
    \numericTimeSignature
    \time 5/8
    \key cis \minor
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #2.3
    \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
%%% VoiceTwo
    % Bar 1 - 4
    s4*10 |
    % Bar 5
    a8. cis8 ~ cis8. ~ cis8 ~ |
    % Bar 6
    cis8. ~ cis8 r8. r8 |
    % Bar 7
    < a d>2 ~ < a d>8 ~ |
    % Bar 8 
    < a d>2 ~ < a d>8 |
    % Bar 9
    a8. cis8 ~ cis8. ~ cis8 |
    % Bar 10
    a,,8. e8 ~ e8. ~ e8 |
    % Bar 11
    d,2 ~ d,8 | 
    % Bar 12
    d2 ~ d8 |
    % Bar 13
    a,,2 ~ a,,8 |
    % Bar 14
    a,,8. e8 ~ e8. ~ e8 |
    % Bar 15
    d,2 ~ d,8 | 
    % Bar 16
    d2 ~ d8 |
    % Bar 17
    a,,2 ~ a,,8 |
    % Bar 18
    a,,8. r8 r8. r8 |
    % Bar 19
    a8. cis8 ~ cis8. ~ cis8 ~ |
    % Bar 20
    cis8. ~ cis8 r8. r8 |
    % Bar 21
    < a d>2 ~ < a d>8 ~ |
    % Bar 22 
    < a d>2 ~ < a d>8 |
    % Bar 23
    a8. cis8 ~ cis8. ~ cis8 |
    % Bar 24
    a,,8. e8 ~ e8. ~ e8 |
    % Bar 25
    d,2 ~ d,8 | 
    % Bar 26
    d2 ~ d8 |
    % Bar 27
    a,,2 ~ a,,8 |
    % Bar 28
    a,,8. e8 ~ e8. ~ e8 |
    % Bar 29
    d,2 ~ d,8 | 
    % Bar 30
    d2 ~ d8 |
    % Bar 31
    a,,2 ~ a,,8 |
    % Bar 32
    a,,8. e8 ~ e8. r8 |
    \time 7/8
    % Bar 33
    d8 a,, cis a,,16 d8 a,,16 cis8 a,,8 |
    % Bar 34
    d8 a,, cis a,,16 d8 a,,16 cis8 a,,8 |
    % Bar 35
    d8 a,, cis a,,16 d8 a,,16 cis8 a,,8 |
    % Bar 36
    d8 a,, fis16 r16 a,,16
    d8 a,, fis16 r16 a,,16 |
    % Bar 37
    d8 a,, fis16 r16 a,,16
    d8 a,, fis16 r16 a,,16 |
    % Bar 38
    d8 a,, fis16 r16 a,,16
    d8 a,,16 cis8 a,, |
    % Bar 39
    d8 a,, fis16 r16 a,,16
    d8 a,, fis16 r16 a,,16 |
    % Bar 40
    \time 8/8
    d8 a,, cis a,,16
    d8 a,, cis16 ~ < cis eis> < d fis> r8 |



}
% Tab
  tab = {
%% stuff
    \textLengthOff
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextScript #'outside-staff-priority = ##f
    \set Staff.midiInstrument = #"acoustic grand"
    \override TabStaff.StaffSymbol #'thickness = #'1
    \key cis \minor
    \numericTimeSignature
    \time 5/8
    \override Beam #'damping = #100000
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'X-offset = #-1
    \override TabStaff.TimeSignature #'font-size = #5
    \override TabStaff.TabNoteHead #'font-name = #"Tex Gyre Schola"
    \override TabStaff.Glissando #'thickness = #0.5
    \override Staff.Stem #'stemlet-length = #2.75
    \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
    \override TupletBracket #'thickness = #'1
    \override TupletNumber #'text = \markup {  "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'edge-height = #'(0.5 . 0.5)
    \override TupletBracket #'extra-offset = #'(0 . -0.1)
    \override Score.BarNumber #'font-size = #'-6
    \override Score.OttavaBracket #'thickness = #'0.5
    \set Timing.baseMoment = #(ly:make-moment 1 16)
    \set Timing.beatStructure = #'(3 2 3 2)
    \set Timing.beamExceptions = #'()
    \override TabStaff.StaffSymbol #'thickness = #'0.75
    \override TabStaff.Beam #'beam-thickness = #'0.38
    \override LaissezVibrerTie.extra-offset = #'(-1.5 . 0)
%% Music
  % Bar 1
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 2
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 3
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis'\2
  % Bar 4
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 5
  < fis'\1 a\4> fis'\2 fis < fis'\1 cis\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 6
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 7
  < fis'\1 a\4 d\5> fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis'\2
  % Bar 8
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 9
  < fis'\1 a\4> fis'\2 fis < fis'\1 cis\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 10
  < fis'\1 a,,> fis'\2 fis < fis'\1 e\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 11
  < fis'\1 d,\6 > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis'\2
  % Bar 12
  < d\5 fis'\1> fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 13
  < fis'\1 a,,\6^\laissezVibrer > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis |
  % Bar 14
  < fis'\1 a,,> fis'\2 fis < fis'\1 e\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 15
  < fis'\1 d,\6 > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis'\2
  % Bar 16
  < d\5 fis'\1> fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 17
  < fis'\1 a,,\6^\laissezVibrer > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis |
  % Bar 18
  < a,, fis'\1> fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 19
  < fis'\1 a\4> fis'\2 fis < fis'\1 cis\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 20
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 21
  < fis'\1 a\4 d\5> fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis'\2
  % Bar 22
  fis'16\1 fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 23
  < fis'\1 a\4> fis'\2 fis < fis'\1 cis\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 24
  < fis'\1 a,,> fis'\2 fis < fis'\1 e\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 25
  < fis'\1 d,\6 > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis'\2
  % Bar 26
  < d\5 fis'\1> fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 27
  < fis'\1 a,,\6^\laissezVibrer > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis |
  % Bar 28
  < fis'\1 a,,> fis'\2 fis < fis'\1 e\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 29
  < fis'\1 d,\6 > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis'\2
  % Bar 30
  < d\5 fis'\1> fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis
  % Bar 31
  < fis'\1 a,,\6^\laissezVibrer > fis'\2 fis fis'\1 fis
  fis'16\1 fis'\2 fis fis'\1 fis |
  % Bar 32
  < fis'\1 a,,> fis'\2 fis < fis'\1 e\5> fis
  fis'16\1 fis'\2 fis fis'\1 fis
    \time 7/8
    \set Timing.baseMoment = #(ly:make-moment 1 16)
    \set Timing.beatStructure = #'(2 2 3 2 2 3)
  % Bar 33
  < d\5 fis'\1>16 fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,> 
  < d\5 fis'\1> fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis |
  % Bar 34
  < d\5 fis'\1>16 fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,> 
  < d\5 fis'\1> fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis |
  % Bar 35
  < d\5 fis'\1>16 fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,> 
  < d\5 fis'\1> fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis |
  % Bar 36
  < d\5 fis'\1>16 fis'\2 < a,, fis'> fis'\2 < fis\4 fis'> fis'\2 < a,,
  fis\3>
  < d\5 fis'> fis'\2 < a,, fis'> fis'\2 < fis\4 fis'> fis'\2 < fis
  a,,> |
  % Bar 37
  < fis' d\5> b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>
  < fis' d\5> b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>
  % Bar 38
  < fis' d\5> b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>
  < fis' d\5> b < a,, fis'> < b cis\4> fis' < a,, b> cis'\3 |
  % Bar 39
  < fis' d\5> b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>
  < fis' d\5> b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>
  % Bar 40
  \time 8/8
    \set Timing.baseMoment = #(ly:make-moment 1 16)
    \set Timing.beatStructure = #'(2 2 3 2 2 3 2)
  < fis' d\5> b < fis' a,,> b < fis' cis\5> b < a,, cis'\3>
  < fis' d\5> b < fis' a,,> b < fis' cis\5 ~ > < b\2 cis\5
  eis\4>^glissando
  < fis\4 d\5 fis\3> r8 |

}

% Dynamics
%% DynamicsOne

  dynamicsone = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
    %{ Example
     \strDamp s8\startTextSpan |
    \once\override Staff.BarLine #'transparent = ##t
    % Bar 1
    s4 s4 s8 s8\stopTextSpan s4 | %}

  }
%% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -2.03)

  }

%% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -3.03)

  }

%% DynamicsFour
  dynamicsfour = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -4.03)
    %{ Example
    %Bar 8
    \trMove #0.1 #0.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.4
    ^\markup {  \fontsize #-1 n } \sVib s8 s4 s16 s16 \eVib s8 s8
    s8 | %}

  }
%% DynamicsFive
  dynamicsfive = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -5.03)
  }
%% DynamicsSix
  dynamicssix = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -6.03)

  }
%% RH Fingering
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f

  }
%% lhOne
lhOne = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override Score.TrillSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(0 . 0.25)
    \override TabStaff.BreathingSign #'outside-staff-priority = ##f
    \override BreathingSign #'outside-staff-priority = ##f
    \override TextSpanner #'(bound-details left-broken text) = ##f 
    \override TextSpanner #'(bound-details right-broken text) = ##f 
    %{Example:
    % Bar 1
    \lhSpannerUp "1" {  s8 \bsMove #-3.2 #1 \leftBracketTwo s8 s4 s8 }
    s8 \lhSpannerUp "1" { \bsMove #0.5 #1 \leftBracketTwo s8 s8 |
    % Bar 2 
    s4 s4 s4 s8 } s8  | %}

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


  }
% Score
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
          \new Staff = "guitar traditional" <<
            \clef "bass_8"
            \context Voice = "lower" \lower
          >>
        >>
        \new TabStaff = "guitar tab" 
        <<
          \clef "moderntabII"
          \set Staff.stringTunings = \stringTuning < a,, gis, cis fis b cis'>
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