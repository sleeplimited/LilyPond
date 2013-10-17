\version "2.16.2"
%{ Declaration
=============================================================================
"Piccolo Tema", by Pino Forastiere

The copyright of this transcription is not held by the transcriber.
Pino Forastiere has not given permission for this transcription to be
sold by the transcriber.  This transcription is derived from a hand-written
transcription by Pino Forastiere.

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
  title = \markup { \fontsize #3 { \smallCaps  "Piccolo Tema" } }
  composer = \markup { \fontsize #-1 { \smallCaps  "Pino Forastiere" } }
  poet = \markup { \concat { \fontsize #-2 { C\sharp\fontsize #-5 {2}" "G\sharp\fontsize
  #-5 {2}" "E\fontsize #-5 {3}" "E\fontsize #-5 {3}" "B\fontsize #-5 {3}" "E\fontsize #-5
  {4} }}}
  meter = \markup { " " }
  copyright = \markup { 
    \fill-line {
      \center-column { 
        \line { 
          \raise #-2.5
          \concat { 
            \fontsize #-3 { 
              \char ##x00a9 " Associazione Culturale Accordature Aperte 2003"
            } 
          } 
        } 
        \line {
          \raise #-1.2
          \concat { 
            \fontsize #-3 { 
              Transcription " " \char ##x00a9 " 2013 Sleep Limited"
              " Publications"
            }
          }
        } 
        \line {
          \concat {
            \fontsize #-3 {
                "Piccolo Tema 10/07/13 " \fromproperty #'page:page-number-string
                "/3" 
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
  (make-pango-font-tree "FreeSerif"
                        "FreeSans"
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
      \concat { \fontsize #-3 { "Piccolo Tema 10/07/13 " \fromproperty #'page:page-number-string /3
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
    \set Staff.midiInstrument = #"vibraphone"
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'thickness = #'1
    \override TupletBracket #'bracket-visibility = ##t
    \numericTimeSignature
    \time 4/4
    \set Score.tempoHideNote = ##t
    \tempo 4 = 69
    \key e \major
    \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
    \once \override Score.KeySignature #'break-align-anchor = #2.3
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark \markup  { \fontsize #-4 \concat {
      \fontsize #0 { \note #"4" #1 }" =" \fontsize #-4 \number " 69"
    }}
    << { 
    % Bar 1
    gis'4 gis'8 e' fis'4. b'8 |
    % Bar 2
    gis'4 gis'8 e' fis'2 |
    % Bar 3
    gis'4 gis'8 e' fis'4. b'8 |
    % Bar 4
    gis'4 gis'8 e' fis'2 |
    % Bar 5
      gis'4. e'8 b4. e'8 |
  % Bar 6
  gis'4 b' fis'2 |
  % Bar 7
  a'4. b'8 gis'4 e'4 |
  % Bar 8
  cis'4. e'8 b4 e'8 dis' |
  % Bar 9
  cis'4. e'8 b2 |
  % Bar 10
  cis'4. e'8 b4 e'4 |
  % Bar 11
  R1 |
  % Bar 12
  r4 r8 b8~ b2 |
  % Bar 13
  gis'4 gis'8 e' fis'4. b'8 |
  % Bar 14
  gis'4 gis'8 e'8 fis'2 |
  % Bar 15
  cis''4. e''8 b'4 b |
  % Bar 16
} \\ {
  % Bar 1
  cis,8 gis, e4 dis8 b b4 |
  % Bar 2
  cis,8 gis, e4 dis8 b b b |
  % Bar 3
  cis,8 gis, e4 dis8 b b4 |
  % Bar 4
  cis,8 gis, e4 dis8 b b b |
  % Bar 5
  r8 a,8 e4 gis,2 |
  % Bar 6
  a,8 e~ e e gis, b b b |
  % Bar 7
  c8 e e4 cis8 a~ a e |
  % Bar 8
  a,8 e e4 gis,8 e8~ e4 |
  % Bar 9
  a,8 e e4 gis,8 e16 e16 e8 e8 |
  % Bar 10
  a,8 e e4 gis,8 e8~ e4 |
  % Bar 11
  d,8 a, fis fis d, a, fis e~ |
  % Bar 12
  < e d, > fis a,4 d,8 a, fis e |
  % Bar 13
  cis,8 gis, e4 dis8 b b4 |
  % Bar 14
  cis,8 gis, e4 dis8 b b b |
  % Bar 15
  a,8 e e4 gis,8 b~ b b |
  % Bar 16

} \\ { 
  % Bar 1-4
  s1*4 |
      s2 e8\rest e8 e8 e8\rest |
    } >>


 }
% Tab
  tab = {
    \textLengthOff
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextScript #'outside-staff-priority = ##f
    \set Staff.midiInstrument = #"vibraphone"
    \key e \major
    \numericTimeSignature
    \time 4/4
    \override Beam #'damping = #100000
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'X-offset = #-1
    \override TabStaff.TimeSignature #'font-size = #5
    \override TabStaff.TabNoteHead #'font-name = #"FreeSans"
    \override TabStaff.Glissando #'thickness = #0.5
    \override Staff.Stem #'stemlet-length = #2.75
    \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
    \override TupletBracket #'thickness = #'1
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'edge-height = #'(0.5 . 0.5)
    \override TupletBracket #'extra-offset = #'(0 . -0.1)
    \override Score.BarNumber #'font-size = #'-6
    \override Score.OttavaBracket #'thickness = #'0.5
    \set Timing.baseMoment = #(ly:make-moment 1 8)
    \set Timing.beatStructure = #'(2 2 2 2)
    \set Timing.beamExceptions = #'()
  % Bar 1
  < cis, gis'\2>8 gis, < e\4 gis'\2> e' < dis\5 fis'\2> b\4 b\3 b'\1 |
  % Bar 2
  < cis, gis'\2>8 gis, < e\4 gis'\2> e' < dis\5 fis'\2> b\4 b\3 b\4 |
  % Bar 3
  < cis, gis'\2>8 gis, < e\4 gis'\2> e' < dis\5 fis'\2> b\4 b\3 b'\1 |
  % Bar 4
  < cis, gis'\2>8 gis, < e\4 gis'\2> e' < dis\5 fis'\2> b\4 b\3 b\4 |
  % Bar 5
  gis'\2 a,\6 e\4 e' < gis,\6 b\2> e\4 e\3 e' |
  % Bar 6
  < a,\6 gis'\2> e\4 b' e\4 < dis\5 fis'\2> b\4 b\3 b\4 |
  % Bar 7
  < a' c> e\4 e\3 b' < cis gis'> a\3 e' e\3 |
  % Bar 8
  < a, cis'> e\4 e\3 e' < gis, b> e\4 e' dis' |
  % Bar 9
  < a, cis'> e\4 e\3 e' < gis, b> e16\4 e\3 e8\4 e\3 |
  % Bar 10
  < a, cis'> e\4 e\3 e' < gis, b> e\4 e' e\4 |
  % Bar 11
  d, a, fis\4 fis\3 d, a, fis\4 e\3 |
  % Bar 12
  d, fis\4 a, b d, a, fis\4 e\3 |
  % Bar 13
  < cis, gis'\2>8 gis, < e\4 gis'\2> e' < dis\5 fis'\2> b\4 b\3 b'\1 |
  % Bar 14
  < cis, gis'\2>8 gis, < e\4 gis'\2> e' < dis\5 fis'\2> b\4 b\3 b\4 |
  % Bar 15
  < a,\6 a'> e\4 e\3 e'' < gis,\6 b'> b\4 b\3 b\4 |




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
  }

%% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
  }

%% DynamicsFour
  dynamicsfour = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
  }
%% DynamicsFive
  dynamicsfive = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
  }
%% DynamicsSix
  dynamicssix = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
  }
%% SixStr
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
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
        >>
        \new TabStaff = "guitar tab" 
        <<
          \clef "moderntabII"
          \set Staff.stringTunings = \stringTuning < cis, gis, e e b e'>
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
