\version "2.18.2"
%{ Declaration
=============================================================================
"The Ship", by Rachael Carlson

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  10/07/13
__..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
|                        
.__    .  .        ,                
[__). .|_ |* _. _.-+-* _ ._  __     
|   (_|[_)||(_.(_] | |(_)[ )_)      

============================================================================%} 
\pointAndClickOff
% header
\header {
  title = \markup { \fontsize #2 \smallCaps  "M.G." }
  composer = \markup {\fontsize #-1 \smallCaps  "Rachael Carlson"}
  poet = \markup { 
    \concat {  
      \fontsize #-3 { 
        B\fontsize #-5 {1} " "
        F\raise #0.5 \fontsize #-5 \sharp\fontsize #-5 {2} " "
        D\fontsize #-5 {3}" "
        F\raise #0.5 \fontsize #-5 \sharp\fontsize #-5 {3}" "
        B\fontsize #-5 {3}" "
        D\fontsize #-5 {4} " "
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
              "2015 " \char ##x00a9 " Rachael Carlson"
            } 
          } 
        } 
        \line {
          \raise #-1.2
          \concat { 
             \fontsize #-3 { 
              Transcription " " \char ##x00a9 " 2015 Sleep Limited"
              " Publications"
            }
          }
        } 
        \line {
          \concat {
             \fontsize #-3 {
                "M.G. " #(strftime "%m/%d/%Y" (localtime (current-time))) " " \fromproperty #'page:page-number-string "/3" 
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
      \concat {  \fontsize #-3 { "M.G. " #(strftime "%m/%d/%Y" (localtime
                (current-time))) " "\fromproperty #'page:page-number-string /9
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
  \include "../../sleep-functions.ily"
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
    \time 4/4
    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \key b \minor
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #2.3
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #-2 { \note #"4" #1 }" =" \fontsize #-4 \number " 60"
    }}
    \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
    % Bars 1-5
    s1*5 |
    % Bar 6
    r2 d'8 e' fis'4~ |
    % Bar 7
    fis'1~ |
    % Bar 8
    fis'1~ |
    % Bar 9
    fis'2 fis'8 e' d'4 |
    % Bar 10
    a'2 b'4 fis'4~ |
    % Bar 11
    fis'1~ |
    % Bar 12
    fis'2 e'8 d' e'4~ |
    % Bar 13
    e'1~ |
    % Bar 14
    e'1~ |
    % Bar 15
    e'2 d'8 cis' d'4~ |
    % Bar 16
    d'1~ |
    % Bar 17
    d'1~ |
    % Bar 18
    d'1 |
    % Bar 19
    r1 |
    % Bar 20
    r1 |
    % Bar 21
    r2 d'8 e' fis'4~ |
    % Bar 22
    fis'1~ |
    % Bar 23
    fis'1~ |
    % Bar 24
    fis'2 fis'8 e' d'4 |
    % Bar 25
    a'2 b'4 fis'4~ |
    % Bar 26
    fis'1~ |
    % Bar 27
    fis'2 e'8 d' e'4~ |
    % Bar 28
    e'1~ |
    % Bar 29
    e'1~ |
    % Bar 30
    e'2 d'8 cis' b4~ |
    % Bar 31
    b1~ |
    % Bar 32
    b1~ |
    % Bar 33
    b1 |
    % Bar 34
    r1 |
    % Bar 35
    r1 |
    % Bar 36


    
 }
%% Lower
  lower = {
    \set Staff.midiInstrument = #"acoustic grand"
    \override TupletNumber #'text = \markup {  "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'thickness = #'1
    \override TupletBracket #'bracket-visibility = ##t
    \override Staff.StaffSymbol #'thickness = #'0.5
    \override Staff.Beam #'beam-thickness = #'0.38
    \numericTimeSignature
    \key b \minor
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #2.3
    \override Staff.ClefModifier.extra-offset = #'(-0.75 . 0.75)
    \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
    << { 
      \voiceTwo
      % Bar 1
      b,,1~ |
      % Bar 2
      b,,1~ |
      % Bar 3
      b,,1 |
      % Bar 4
      b,,1~ |
      % Bar 5
      b,,1~ |
      % Bar 6
      b,,1 |
      % Bar 7
      b,,1~ |
      % Bar 8
      b,,1~ |
      % Bar 9
      b,,1 |
      % Bar 10
      b,,1~ |
      % Bar 11
      b,,1~ |
      % Bar 12
      b,,1 |
      % Bar 13
      b,,1~ |
      % Bar 14
      b,,1~ |
      % Bar 15
      b,,1 |
      % Bar 16
      b,,1~ |
      % Bar 17
      b,,1~ |
      % Bar 18
      b,,1 |
      % Bar 19
      b,,1~ |
      % Bar 20
      b,,1~ |
      % Bar 21
      b,,1 |
      % Bar 22
      b,,1~ |
      % Bar 23
      b,,1~ |
      % Bar 24
      b,,1 |
      % Bar 25
      b,,1~ |
      % Bar 26
      b,,1~ |
      % Bar 27
      b,,1 |
      % Bar 28
      b,,1~ |
      % Bar 29
      b,,1~ |
      % Bar 30
      b,,1 |
      % Bar 31
      b,,1~ |
      % Bar 32
      b,,1~ |
      % Bar 33
      b,,1 |
      % Bar 34
      b,,1~ |
      % Bar 35
      b,,1~ |
      % Bar 36
      b,,2
    } \\ {
      \voiceFour
      \tieUp
      % Bar 1
      g,4.\rest fis,8 fis d cis4~ |
      % Bar 2
      cis1~ |
      % Bar 3
      cis1 |
      % Bar 4
      g,4.\rest fis,8 fis d cis4~ |
      % Bar 5
      cis1~ |
      % Bar 6
      cis2 f,2\rest |
    } >>
 }
% Tab
  tab = {
%% stuff
    \textLengthOff
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextScript #'outside-staff-priority = ##f
    \set Staff.midiInstrument = #"acoustic grand"
    \override TabStaff.StaffSymbol #'thickness = #'1
    \key b \minor
    \numericTimeSignature
    \time 4/4
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
    \set Timing.baseMoment = #(ly:make-moment 1 8)
    \set Timing.beatStructure = #'(2 2 2 2)
    \set Timing.beamExceptions = #'()
    \override TabStaff.StaffSymbol #'thickness = #'0.75
    \override TabStaff.Beam #'beam-thickness = #'0.38
    \override LaissezVibrerTie.extra-offset = #'(-1.5 . 0)
%% Music
  % Bar 1
  b,,4. fis,8 fis d cis4~ |
  % Bar 2
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 3
  cis4~ cis4~ cis4~ cis4 |
  % Bar 4
  b,,4. fis,8 fis d cis4~ |
  % Bar 5
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 6
  cis4~ cis4 d'8\1~ < \invTNH d'\1 e'\1> \glissando fis'4\1 |
  % Bar 7
  b,,4. fis,8 fis d cis4~ |
  % Bar 8
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 9
  cis4~ cis4 fis'8\1 \glissando e'\1~ < \invTNH e'\1 d'\1>4 |
  % Bar 10
  < b,, a'\1>4. fis,8 < b'\1 fis> d 
  \tieUp
  < cis fis'\2>4~ |
  % Bar 11
  < cis fis'\2>4~ < cis fis'\2>4~ < cis fis'\2>4~ < cis fis'\2>4~ |
  % Bar 12
  < cis fis'\2>4~ < cis fis'\2>4 e'8\2 \glissando d'\2 e'4\2 |
  % Bar 13
  b,,4. fis,8 fis d cis4~ |
  % Bar 14
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 15
  cis4~ cis4 d'8\2~ < \invTNH d'\2 cis'\2> d'4\1 |
  % Bar 16
  b,,4. fis,8 fis d cis4~ |
  % Bar 17
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 18
  cis4~ cis4~ cis4~ cis4 |
  % Bar 19
  b,,4. fis,8 fis d cis4~ |
  % Bar 20
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 21
  cis4~ cis4 d'8\1~ < \invTNH d'\1 e'\1> \glissando fis'4\1 |
  % Bar 22
  b,,4. fis,8 fis d cis4~ |
  % Bar 23
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 24
  cis4~ cis4 fis'8\1 \glissando e'\1~ < \invTNH e'\1 d'\1>4 |
  % Bar 25
  < b,, a'\1>4. fis,8 < b'\1 fis> d < cis fis'\2>4~ |
  % Bar 26
  < cis fis'\2>4~ < cis fis'\2>4~ < cis fis'\2>4~ < cis fis'\2>4~ |
  % Bar 27
  < cis fis'\2>4~ < cis fis'\2>4 e'8\2 \glissando d'\2 e'4\2 |
  % Bar 28
  b,,4. fis,8 fis d cis4~ |
  % Bar 29
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 30
  cis4~ cis4 d'8\2~ < \invTNH d'\2 cis'\2> b4 |
  % Bar 31
  b,,4. fis,8 fis d cis4~ |
  % Bar 32
  cis4~ cis4~ cis4~ cis4~ |
  % Bar 33
  cis4~ cis4~ cis4~ cis4 |
  % Bar 34
  b,,4. fis,8 fis d cis4~ |
  % Bar 35
  cis4~ cis4~ cis4~ cis4~ |
  %%%%%%%%
  % Bar 36 
  %%%%%%%%
  cis4~ cis4 \stemDown \slashedGrace { < d' b fis d fis, b,,>8 } d8\4~ < \invTNH
  d\4 e\4> \glissando fis\4 d' |
  % Bar 37
  b,,4. < d' b>8 < \invTNH b,,\6> fis\4\laissezVibrer b,,4~ |
  % Bar 38
  b,,4~ b,,4 \stemDown \slashedGrace { < d' b fis d fis, b,,>8 }
  fis8\4 \glissando e\4~ < \invTNH e\4 d\4> b |
  % Bar 39
  \grace { \hideFretNumber < b,, fis,>8 \glissando s } < e, b,>4. < d'
  b>8 < \invTNH b,,>8 < \tweakTabNoteHead \parenInChordSeven \tweak
  #'X-offset #0.6 fis,\6 \tweakTabNoteHead \parenInChordSeven \tweak
  #'X-offset #0.6 cis\5>\laissezVibrer < fis,\6 cis\5>8 r8 |
  % Bar 40
  < b,, fis,>4. \strpHarmTwelve fis8\5 \strpHarmTwelve fis'\3
  \strpHarmTwelve d'\4 \strpHarmSeven cis'4\5~ | 
  % Bar 41
  \strpHarmSeven cis'4\5~ \strpHarmSeven cis'4\5~ \strpHarmSeven
  cis'4\5~ \strpHarmSeven cis'4\5 |
  % Bar 42
}

% Dynamics
%% DynamicsOne

  dynamicsone = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f

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
%% Rhythm
  rhythm = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    % Bars 1-35
    s1*35 |
    % Bar 36
    s4 s4 s4-\bassSnare s4 |
    % Bar 37
    s4 s4 s4-\snare s4 |
    % Bar 38
    s4 s4 s4-\bassSnare s4 |
    % Bar 39
    s4 s4 s4-\snare s4 |

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
          \set Staff.stringTunings = \stringTuning < b,, fis, d fis b d'>
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
          \new TabVoice = "rhythm" \rhythm
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
          % \Staff \override TimeSignature #'space-alist #'first-note = #'(extra-space .
          % 4.9) 
          }
        \context {
      \TabStaff
      \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
    }
      }
      \midi {}


    }
  }
