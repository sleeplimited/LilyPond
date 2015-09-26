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
              "Transcription by Vittorio Albergamo. Typeset by Rachael Carlson."
            }
          }
        } 
        \line {
          \concat {
             \fontsize #-3 {
                "Madrid " #(strftime "%m/%d/%Y" (localtime
                (current-time))) " " \fromproperty #'page:page-number-string "/5" 
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
      \concat {  \fontsize #-3 { "Madrid " #(strftime "%m/%d/%Y" (localtime
                (current-time))) " "\fromproperty #'page:page-number-string /5
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
  startASlur = - #(make-music 'SlurEvent 'span-direction START 'spanner-id "A")
  startBSlur = - #(make-music 'SlurEvent 'span-direction START 'spanner-id "B")
  stopASlur = - #(make-music 'SlurEvent 'span-direction STOP 'spanner-id "A")
  stopBSlur = - #(make-music 'SlurEvent 'span-direction STOP 'spanner-id "B")
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
    \time 10/16
    % \set Score.tempoHideNote = ##t
    \tempo 16 = 300
    \key cis \minor
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #2.3
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    % \mark \markup  { \fontsize #-4 \concat { \note "16"  " ="
    % \fontsize #-4 \number " 90" }}
    \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
    % Bar 1
    << {
%%% VoiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(6 4 6 4)
    \set subdivideBeams = ##t
    \set Timing.beamExceptions = #'()
      % Bar 1
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 2
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 3
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis']
      % Bar 4
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 5
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 6
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 7
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis']
      % Bar 8
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 9
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 10
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 11
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis']
      % Bar 12
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 13
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 14
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 15
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis']
      % Bar 16
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 17
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 18
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 19
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 20
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 21
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis']
      % Bar 22
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 23
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 24
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 25
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis']
      % Bar 26
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 27
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 28
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 29
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis']
      % Bar 30
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 31
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
      % Bar 32
      fis'16[ fis'16 fis fis' fis]
      fis'16[ fis'16 fis fis' fis]
    \time 14/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 6 4 4)
      % Bar 33
      fis'16[ fis' fis' fis' fis' fis' fis]
      fis'16[ fis' fis' fis' fis' fis' fis]
      % Bar 34
      fis'16[ fis' fis' fis' fis' fis' fis]
      fis'16[ fis' fis' fis' fis' fis' fis]
      % Bar 35
      fis'16[ fis' fis' fis' fis' fis' fis]
      fis'16[ fis' fis' fis' fis' fis' fis]
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6)
      % Bar 36
      fis'16[ fis' fis' fis' fis' fis' fis]
      fis'16[ fis' fis' fis' fis' fis' fis]
      % Bar 37
      fis'[ b fis' b fis' b cis']
      fis'[ b fis' b fis' b cis']
      % Bar 38
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 6 4 4)
      fis'[ b fis' b fis' b cis']
      fis'[ b fis' b fis' b cis']
      % Bar 39
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6)
      fis'[ b fis' b fis' b cis']
      fis'[ b fis' b fis' b cis']
      % Bar 40
    \time 16/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6 4)
      fis'[ b fis' b fis' b cis']
      fis'[ b fis' b cis' b cis'] r8 |


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
    \time 10/16
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
    cis8. ~ cis8 cis8. r8 |
    % Bar 7
    < a d>2 ~ < a d>8 ~ |
    % Bar 8 
    < a d>8.[ ~ < a d>8] ~ < a d>8.[ ~ a8] |
    % Bar 9
    a8. cis8 ~ cis8. ~ cis8 |
    % Bar 10
    a,,8. e8 ~ e8. r8 |
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
    \time 14/16
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
    \time 10/16
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
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(6 4 6 4)
    \set subdivideBeams = ##t
    \set Timing.beamExceptions = #'()
    \override TabStaff.StaffSymbol #'thickness = #'0.75
    \override TabStaff.Beam #'beam-thickness = #'0.38
    \override LaissezVibrerTie.extra-offset = #'(-1.5 . 0)
    \override Voice.Beam.damping = #+inf.0
    \override Beam.details.damping-direction-penalty = #0
    \override Beam.details.round-to-zero-slope = #0
%% Music
  % Bar 1
  < fis'\1 \parenthesize fis'\2>16[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 2
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 3
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 4
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 5
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 6]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 7
  < fis'\1 a\4 d\5>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 8
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[fis'\2 fis fis'\1 fis]
  % Bar 9
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 10]
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 11
  % \once\override Slur.outside-staff-priority = ##f
  % \shape #'((0.0 . 0.0) (1.0 . -1.0) (1.0 . -1.0) (0 . 0.0)) Slur
  % \once\override Slur.extra-offset = #'(0 . -6)
  < fis'\1 d,\6 >16[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 12
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 13
  < fis'\1 a,,\6^\laissezVibrer>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 14
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 15
  < fis'\1 d,\6 >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 16
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 17
  < fis'\1 a,,\6^\laissezVibrer >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 18
  < a,, fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 19
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 20
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 21
  < fis'\1 a\4 d\5>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 22
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 23
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 24
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 25
  < fis'\1 d,\6 >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 26
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 27
  < fis'\1 a,,\6^\laissezVibrer >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 28
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 29
  < fis'\1 d,\6 >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 30
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 31
  < fis'\1 a,,\6^\laissezVibrer >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 32
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
    \time 14/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 6 4 4)
  % Bar 33
  < d\5 fis'\1>16[ fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,>] 
  < d\5 fis'\1>[ fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis] |
  % Bar 34
  < d\5 fis'\1>16[ fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,>]
  < d\5 fis'\1>[ fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis] |
  % Bar 35
  < d\5 fis'\1>16[ fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,>]
  < d\5 fis'\1>[ fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis] |
  % Bar 36
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6)
  < d\5 fis'\1>16[ fis'\2 < a,, fis'> fis'\2 < fis\4 fis'> fis'\2 < a,,
  fis\3>]
  < d\5 fis'>[ fis'\2 < a,, fis'> fis'\2 < fis\4 fis'> fis'\2 < fis
  a,,>] |
  % Bar 37
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  % Bar 38
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 6 4 4)
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  < fis' d\5>[ b < a,, fis'> < b cis\5> fis' < a,, b> cis'\3] 
  % Bar 39
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6)
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  % Bar 40
  \time 16/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6 4)
  < fis' d\5>[ b < fis' a,,> b < fis' cis\5> b < a,, cis'\3>]
  < fis' d\5>[ b < fis' a,,> b < cis'\1 cis\5 ~ > < b\2 cis\5
  eis\4>^glissando
  < fis\4 d\5 fis\3> r16 r] |
  % Bar 41
  \time 10/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(6 4 6 4)
    \once \tabSlur #`(0 -2 -2 -2.3 -2.6 0 -4 0)
    \chordSlurT #79 #1.2 #-1 < a' fis\4>16([ < fis'\2 d\5> < cis\4
    fis\3>) a' fis] a'[ fis'\2 < fis gis,> a' fis] |
  % Bar 42
  < a' cis cis,\laissezVibrer>[ fis'\2 fis a' fis]
  a'[ fis'\2 fis a' < fis cis cis,\laissezVibrer>] |
  % Bar 43
  a'[ fis'\2 \override Voice.LaissezVibrerTie.direction = #UP < fis
  d\5\laissezVibrer d,\6\laissezVibrer> a' fis] a'[ fis'\2 fis a'
  fis'\2] |
  % Bar 44
  \time 12/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 6 4 4)
  a'[ fis'\2 < fis d\5>32 fis\4\laissezVibrer a'16 fis]
  a'[ fis'\2 fis a' fis cis' fis'\2] |
  % Bar 45
  \time 10/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 6 4)
  \once \tabSlur #`(0 -2 -2 -2.3 -2.6 0 -4 0)
  \chordSlurT #79 #1.2 #-1 < a' fis\4>16([ < fis'\2 d\5> < cis\4
  fis\3>) a' fis] a'[ fis'\2 < fis gis,> a' fis] |
  % Bar 46
  < a,, a'>[ fis'\2 fis < a'\1 e\4> fis]
  a'[ fis'\2 fis cis' < fis cis\5>] |
  % Bar 47
  fis'\1[ fis'\2 < d\5 fis> fis'\1 fis]
  < a,, fis'\1>[ fis'\2 fis < cis\5 fis'\1> fis'\2] |
  % Bar 48
  \time 15/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 6 4 4 6)
  fis'\1[ < fis'\2 a,,> fis fis'\1 < fis d\5>]
  fis'\1[ fis'\2 < fis a,,> fis'\1 < fis cis\5>]
  fis'\1[ < fis'\2 a,,> cis' fis'\2^glissando < a'\2 fis>] |
  % Bar 49
  \time 10/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 4 6)
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 b\4 cis' a'\2] |
  % Bar 50
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 cis\4 cis' a'\2] |
  % Bar 51
  < cis fis,\6>[ d'\3 a'\2 < cis fis,\6> cis']
  < cis fis,\6>[ d'\3 cis cis' a'\2] |
  % Bar 52
  < cis fis,\6>[ d'\3 a'\2 < cis fis,\6> cis']
  < cis fis,\6>[ d'\3 cis cis' a'\2] |
  % Bar 53
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 b\4 cis' a'\2] |
  % Bar 54
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 cis\4 cis' a'\2] |
  % Bar 55
  a,,[ d'\3 a'\2 cis cis']
  a,,[ d'\3 cis cis' a'\2] |
  % Bar 56
  a,,[ d'\3 a'\2 cis cis']
  a,,[ d'\3 cis cis' d'\2] |
  % Bar 57
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' d'\2] |
  % Bar 58
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' a'\2] |
  % Bar 59
  fis,\6\laissezVibrer[ fis a'\2 < fis,\6\laissezVibrer cis> cis']
  < fis,\6\laissezVibrer cis>[ fis cis cis' a'\2] |
  % Bar 60
  fis,\6\laissezVibrer[ fis a'\2 < fis,\6\laissezVibrer cis> cis']
  < fis,\6\laissezVibrer cis>[ fis cis cis' d'\2] |
  % Bar 61
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' d'\2] |
  % Bar 62
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' < gis\3 d'\2>] |
  % Bar 63
  \time 15/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 6 6 6 6)
  cis cis' < gis\4 f'\2>
  fis cis' < b\4 gis'\2>
  \strpHarmTwelve < gis\5> cis' < fis a'\2>
  a\4 cis' a'\2
  \strpHarmTwelve < cis'\4> cis' a'\2 |
  % Bar 64
  \time 12/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 6 6 6) 
  b\4[ a'\2 fis b\4 a'\2 fis]
  b\4[ a'\2 fis b\4 a'\2 fis]
  % Bar 65
  b\4[ a'\2 fis b\4 a'\2 fis]
  b\4[ a'\2 fis b\4 a'\2 fis]
  % Bar 66
  b\4[ < a'\2 f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 fis> < b\4
  fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6 a'\2> < fis
  f\5\laissezVibrer \invTNH gis,\5>] ~
  < gis,\5 b\4> < a'\2 fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6
  fis> < b\4 f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 a'\2> < fis
  fis,\6\laissezVibrer \invTNH a,,\6>] ~ |
  % Bar 67
  < a,,\6 b\4> [ < a'\2 f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5
  fis> < b\4 fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6 a'\2> < fis
  f\5\laissezVibrer \invTNH gis,\5>] ~ 
  < gis,\5 b\4> < a'\2 fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6
  fis> < b\4 f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 a'\2> < fis
  fis,\6\laissezVibrer \invTNH a,,\6>] ~ |
  % Bar 68
  \time 16/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 6 6 6 8) 
  < a,,\6 b\4> [ < a'\2 f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5
  fis> < b\4 fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6 a'\2> < fis
  f\5\laissezVibrer \invTNH gis,\5>] ~ 
  < gis,\5 b\4> < a'\2 fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6
  fis> < b\4 f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 a'\2> < fis
  fis,\6\laissezVibrer \invTNH a,,\6>] ~ < a,,\6 b\4> < a'\2
  f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 fis> < b\4
  fis,\6\laissezVibrer> |
  % Bar 69
  \time 10/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(4 6 4 6) 
  < b'\1 f\5\laissezVibrer \invTNH gis,\5>[ ~ < gis,\5 b\4> < a'\2
  fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6 fis> < b\4
  f\5\laissezVibrer \invTNH gis,\5>] ~
  < gis,\5 b'\1>[ < b\4 fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6
  a'\2> < fis f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 b\4>] |
  % bar 70
  < b'\1 fis,\6\laissezVibrer \invTNH a,,\6>[ ~ < a,,\6 b\4> < a'\2
  f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 fis> < b\4
  fis,\6\laissezVibrer \invTNH a,,\6>] ~ 
  < a,,\6 a'\1>[ < b\4 f\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5
  a'\2> < fis fis,\6\laissezVibrer \invTNH a,,\6> ~ < a,,\6 cis>] |
  % Bar 71
  < b'\1 f\5\laissezVibrer \invTNH gis,\5>[ ~ < gis,\5 cis> < a'\2
  e\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 fis> < cis
  fis,\6\laissezVibrer>]
  < b'\1 fis\5\laissezVibrer>[ < cis e\5\laissezVibrer \invTNH gis,\5>
  ~ < gis,\5 a'\2> < fis,\6\laissezVibrer fis> cis] |
  % Bar 72
  < b'\1 e\5\laissezVibrer \invTNH gis,\5>[ ~ < gis,\5 cis> <
  fis,\6\laissezVibrer a'\2> < fis fis\5\laissezVibrer> < cis
  e\5\laissezVibrer \invTNH gis,\5>] ~
  < gis,\5 b'\1>[ < cis fis,\6\laissezVibrer> a'\2 < fis
  e\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 cis>] |
  % Bar 73
  < a'\1 fis,\6\laissezVibrer>[ < cis fis\5\laissezVibrer> < a'\2
  e\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 fis> < fis,\6 cis>]
  b'\1[ < cis e\5\laissezVibrer \invTNH gis,\5> ~ < gis,\5 a'\2> < cis
  fis,\6\laissezVibrer> < cis fis\5\laissezVibrer>] |
  % Bar 74




  
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
    % Bar 1
    \override TextScript.extra-offset = #'(-0.2 . -0.3)
    s8.^\rha s8 ^\rha s8.^\rha s8^\rha

  }
%% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -2.03)
    % Bar 1
    \override TextScript.extra-offset = #'(-0.3 . -1.3)
    s16 s8^\rhm s8 s16 s8^\rhm s8 |
    % Bar 2
    s8. s8 s8. s8 |
    % Bar 3
    s8. s8 s8. s16 s16^\rhm |

  }

%% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -3.03)
    % Bar 1
    \override TextScript.extra-offset = #'(-0.1 . -2.3)
    s8 s8^\rhi s8.^\rhi s8^\rhi s16^\rhi |

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
    % Bar 1 - 4
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    % Bar 5
    \override TextScript.extra-offset = #'(-0.2 . -4.1)
    s8.^\rhp s8 s8. s8 |
    % Bar 6
    s8. s8 s8. s8 |
    % Bar 7
    s8. s8 s8. s8 |
    % Bar 8
    s8. s8 s8. s8 |
    % Bar 9
    s8.^\rhp s8 s8. s8 |


  }
%% DynamicsFive
  dynamicsfive = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -5.03)
    % Bar 1 - 4
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    % Bar 5
    \override TextScript.extra-offset = #'(-0.2 . -5.1)
    s8. s8^\rhp s8. s8 |
    % Bar 6
    s8. s8 s8. s8 |
    % Bar 7
    s8.\mkTweak #-0.55 -4.7 ^\twostrdwnstrm \mkTweak #-0.25 -6.8 ^\rhp
    s8 s8. s8 |
    % Bar 8
    s8. s8 s8. s8 |
    % Bar 9
    s8. s8^\rhp s8. s8 |
    % Bar 10
    s8. s8^\rhp s8. s8 |
    % Bar 11
    s8. s8 s8. s8 |
    % Bar 12
    s8.^\rhp s8 s8. s8 |
    % Bar 13 - 20
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    % Bar 21
    s8.\mkTweak #-0.55 -4.7 ^\twostrdwnstrm s8 s8. s8 |
    
  }
%% DynamicsSix
  dynamicssix = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(0.2 . -5.825)
    % Bar 1 - 9
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    % Bar 10
    \override TextScript.extra-offset = #'(-0.2 . -6.1)
    s8.^\rhp s8 s8. s8 |
    % Bar 11
    s8.^\rhp s8 s8. s8 |
    % Bar 12
    s8. s8 s8. s8 |
    % Bar 13 - 17
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    % Bar 18
    s8.^\rhp \strDamp s8^\rhp\startTextSpan s8. s16 s16\stopTextSpan |

  }
%% RH Fingering
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f

  }
%% lhOne AND BREAKS
lhOne = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override Score.TrillSpanner #'outside-staff-priority = ##f
    \override TextSpanner.extra-offset = #'(0 . 1.4)
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
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 12.5))
    % Bar 1
    \lhSpannerUp "1" { 
      s8. s8 s8. s8 |
    % Bar 2
    s8. s8 s8. s8 |
    % Bar 3
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 50))
    % Bar 4
    s8. s8 s8. s8 |
    % Bar 5
    s8. s8 s8. s8 |
    % Bar 6
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 95))
    % Bar 7
    s8. s8 s8. s8 |
    % Bar 8
    s8. s8 s8. s8 |
    % Bar 9
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 5))
    % Bar 10
    s8. s8 s8. s8 |
    % Bar 11
    s8. s8 s8. s8 |
    % Bar 12
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 50))
    % Bar 13
    s8. s8 s8. s8 |
    % Bar 14
    s8. s8 s8. s8 |
    % Bar 15
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 95))
    % Bar 16
    s8. s8 s8. s8 |
    % Bar 17
    s8. s8 s8. s8 |
    % Bar 18
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 5))
    % Bar 19
    s8. s8 s8. s8 |
    % Bar 20
    s8. s8 s8. s8 |
    % Bar 21
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 50))
    % Bar 22
    s8. s8 s8. s8 |
    % Bar 23
    s8. s8 s8. s8 |
    % Bar 24
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 95))
    % Bar 25
    s8. s8 s8. s8 |
    % Bar 26
    s8. s8 s8. s8 |
    % Bar 27
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 5))
    % Bar 28
    s8. s8 s8. s8 |
    % Bar 29
    s8. s8 s8. s8 |
    % Bar 30
    s8. s8 s8. s8 |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 50))
    % Bar 31
    s8. s8 s8. s8 |
    % Bar 32
    s8. s8 s8. s8 |
    % Bar 33
    % \time 7/8
    s2 s4. |
    \break
    \overrideProperty
    Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset
    . 95))
    % Bar 34
    s2 s4. |
    % Bar 35
    s2 s4. |
    % Bar 36
    s2 s4. |
    \break
    % Bar 37
    s2 s4. |
    % Bar 38
    s2 s4. |
    % Bar 39
    s2 s4. |
    \break
    % Bar 40
    % \time 8/8
    s8 s8 s8. s8 s16 s16 } 

  }
%% lhTwo
lhTwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override Score.TrillSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(0 . -9.9)
    \override TabStaff.BreathingSign #'outside-staff-priority = ##f
    \override BreathingSign #'outside-staff-priority = ##f
    \override TextSpanner #'(bound-details left-broken text) = ##f 
    \override TextSpanner #'(bound-details right-broken text) = ##f 
    % \lhSpannerUp "2" { }
    % Bar 1 - 4
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    % Bar 5
    s8. \lhSpannerDown "2" {s8 s8. s8 |
    % Bar 6
    s8. s8 s8 s16 } s8 |
    % Bar 7
    \lhSpannerDown "2" {s8. s8 s8. s8 |
    % Bar 8
    s8. s8 s8 s16 } s8 |
    % Bar 9
    s8. \lhSpannerDown "2" {s8 s8. s16 s16} |
    % Bar 10
    s8. s8 s8. s8 |
    % Bar 11
    \override TextSpanner.extra-offset = #'(0 . -10.6)
    \lhSpannerDown "2" {s8. s8 s8. s8 |
    % Bar 12
    s8. s8 s8. s16 s16} |


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
    % Bar 1
    \lhSpannerUp "3" {s8. s8 s8. s8 |
    % Bar 2
    s8. s8 s8. s8 |
    % Bar 3
    s8. s8 s8. s8 |
    % Bar 4
    s8. s8 s8. s8 | 
    % Bar 5
    s8. s8 s8. s8 |
    % Bar 6
    s8. s8 s8. s8 |
    % Bar 7
    s8. s8 s8. s8 |
    % Bar 8
    s8. s8 s8. s8 |
    % Bar 9
    s8. s8 s8. s8 |
    % Bar 10
    s8. s8 s8. s16 s16 |}
    % Bar 11
    s8. s8 s8. s8 |
    % Bar 12
    \override TextSpanner.extra-offset = #'(0 . -9.9)
    \lhSpannerDown "3" {s8. s8 s8. s8 |
    % Bar 13
    s8. s8 s8 s16} s8 |

  }
%% lhFour
lhFour = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override Score.TrillSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(0 . -9)
    \override TabStaff.BreathingSign #'outside-staff-priority = ##f
    \override BreathingSign #'outside-staff-priority = ##f
    \override TextSpanner #'(bound-details left-broken text) = ##f 
    \override TextSpanner #'(bound-details right-broken text) = ##f 
    % Bar 1 - 4
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    s8. s8 s8. s8 |
    % Bar 5
    \lhSpannerDown "4" {s8. s8 s8. s8 |
    % Bar 6
    s8. s8 s8. s8 |
    % Bar 7
    s8. s8 s8. s8 |
    % Bar 8
    s8. s8 s8. s8 |
    % Bar 9
    s8. s8 s8. s16 s16} |
    % Bar 10
    \override TextSpanner.extra-offset = #'(0 . -9.8)
    s8. \lhSpannerDown "4" {s8 s8 s16} s8 |
    % Bar 11
    \override TextSpanner.extra-offset = #'(0 . 0.5)
    s16 \lhSpannerUp "4" {s8 s8 s8. s8 |
    % Bar 12
    s8. s8 s8. s8 |
    % Bar 13
    s8. s8 s8 s16} s8 |
    % Bar 14


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
