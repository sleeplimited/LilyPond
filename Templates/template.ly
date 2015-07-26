\version "2.18.2"
%{ Declaration
=============================================================================
"TITLE", by COMPOSER

Copyright Info

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  DATE
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
  title = \markup { \bold \fontsize #2 { \smallCaps "Title"} }
  composer = \markup { \fontsize #-1 { \smallCaps  "Composer" } }
  poet = \markup { \concat { \fontsize #-3 { D\fontsize #-5 {2}" "A\fontsize
  #-5 {2}" "D\fontsize #-5 {3}" "G\fontsize #-5 {3}" "A\fontsize #-5 {3}" "D\fontsize #-5
  {4} }}}
  meter = \markup { " " }
  copyright = \markup { 
    \fill-line {
      \center-column { 
        \line { 
          \raise #-2.5
          \concat { 
            \fontsize #-3 { 
              "2013 " \char ##x00a9 " Sleep Limited Music"
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
              "Title 11/30/13 " \fromproperty #'page:page-number-string "/3" 
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
      \concat { \fontsize #-3 { "Title 11/30/13 " \fromproperty #'page:page-number-string /3
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
  \override TupletNumber.font-shape = #'upright
  \override TupletNumber.font-size = -1.0
  \override TupletBracket.thickness = 1.0
  \override TupletBracket.bracket-visibility = ##t
  \override Staff.StaffSymbol thickness = 0.5
  \override Staff.Beam beam-thickness = 0.38
  \numericTimeSignature
  \time 4/4
  \set Score.tempoHideNote = ##t
  \tempo 8 = 90
  \key d \minor
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \once \override Score.KeySignature #'break-align-anchor = #2.3
  \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
  \mark \markup  { \fontsize #-4 \concat {
    \fontsize #0 { \note #"8" #1 }" =" \fontsize #-4 \number " 90"
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
    d4 a4 d4 a4 |

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
    d,4 fis,4 a,4 d,4 |

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
  < d, d>4 < fis, a>4 < a, d> < d, a> |
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
        \set Staff.stringTunings = \stringTuning < d, a, d g a d'>
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
