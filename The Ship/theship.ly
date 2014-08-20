\version "2.16.2"
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
  title = \markup { \sans \bold \fontsize #2 "A Docked Ship Awakens to the Foggy Dawn" }
  composer = \markup { \fontsize #-1 { \sans  "Rachael Carlson" } }
  poet = \markup { \concat { \sans \fontsize #-3 { D\fontsize #-5 {2}" "A\fontsize
  #-5 {2}" "D\fontsize #-5 {3}" "G\fontsize #-5 {3}" "A\fontsize #-5 {3}" "D\fontsize #-5
  {4} }}}
  meter = \markup { " " }
  copyright = \markup { 
    \fill-line {
      \center-column { 
        \line { 
          \raise #-2.5
          \concat { 
            \sans \fontsize #-3 { 
              "2013 " \char ##x00a9 " Sleep Limited Music"
            } 
          } 
        } 
        \line {
          \raise #-1.2
          \concat { 
            \sans \fontsize #-3 { 
              Transcription " " \char ##x00a9 " 2013 Sleep Limited"
              " Publications"
            }
          }
        } 
        \line {
          \concat {
            \sans \fontsize #-3 {
                "A Docked Ship Awakens to the Foggy Dawn 11/30/13 " \fromproperty #'page:page-number-string "/3" 
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
      \concat { \sans \fontsize #-3 { "A Docked Ship Awakens to the Foggy Dawn 11/30/13 " \fromproperty #'page:page-number-string /3
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
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'thickness = #'1
    \override TupletBracket #'bracket-visibility = ##t
    \override Staff.StaffSymbol #'thickness = #'0.5
    \override Staff.Beam #'beam-thickness = #'0.38
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
      \partial 8
      s8
      \once\override Staff.BarLine #'transparent = ##t
      % Bar 1
      r8 g'2 bes'4.~ |
      % Bar 2
      bes'1 |
      % Bar 3
      r8 g'2 a'4.~ |
      % Bar 4
      a'1 |
      % Bar 5
      r8 g'2 bes'4.~ |
      % Bar 6
      bes'1 |
      % Bar 8
      r8 g'2 a'4.~ |
      % Bar 8
      a'1 |
      % Bar 9
      r8 d'2 g'4.~ |
      % Bar 10
      g'1 |
      % Bar 11
      r8 a2 d'4.~ |
      % Bar 12
      d'1 |

      % Bar 9
      r8 d'2 g'4.~ |
      % Bar 10
      g'1 |
      % Bar 11
      r8 a2 d'4.~ |
      % Bar 12
      d'1 |

      % Bar 13
      e'4. a'8 g'4 c'8 e'8~ |
      % Bar 14
      e'2.. fis'8~ |
      % Bar 15
      fis'2.. e'8~ |
      % Bar 16
      e'2.. fis'8~ |
      % Bar 17
      fis'2.. e'8~ |
      % Bar 18
      e'2. r4 |
      % Bar 19
      e'4. a'8 gis'4 cis'8 e'8~ |
      % Bar 20
      e'2.. f'8~ |
      % Bar 21
      f'2.. e'8~ |
      % Bar 22
      e'2.. f'8~ |
      % Bar 23
      f'2.. e'8~ |
      % Bar 24
      e'2. r4 |

    } \\ {
%%% VoiceFour
      \voiceFour
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \partial 8
      s8
      % Bar 1
      f'2~ f'8 b8\rest \tieUp e'8~ \tieNeutral < e' d'>8~ |
      % Bar 2
      < e' d'>1 |
      % Bar 3
      \tieDown f'2~ f'8 b8\rest \tieUp e'8~ \tieNeutral < e' d'>8~ |
      % Bar 4
      < e' d'>1 |
      % Bar 5
      \tieDown f'2~ f'8 b8\rest \tieUp e'8~ \tieNeutral < e' d'>8~ |
      % Bar 6
      < e' d'>1 |
      % Bar 7
      \tieDown f'2~ f'8 b8\rest \tieUp e'8~ \tieNeutral < e' d'>8~ |
      % Bar 8
      < e' d'>1 |
      % Bar 9
      \tieDown c'2~ c'8 b8\rest \tieUp c'8~ \tieNeutral < c' b>8~ |
      % Bar 10
      < c' b>1 |
      % Bar 11
      \tieDown g2~ g8 g8\rest \tieUp g8~ \tieNeutral < g fis>8~ |
      % Bar 12
      < g fis>1 |

      % Bar 9
      \tieDown c'2~ c'8 b8\rest \tieUp c'8~ \tieNeutral < c' b>8~ |
      % Bar 10
      < c' b>1 |
      % Bar 11
      \tieDown g2~ g8 g8\rest \tieUp g8~ \tieNeutral < g fis>8~ |
      % Bar 12
      < g fis>1 |

      % Bar 13
      < a d'>2. e4\rest |
      % Bar 14
      < c' a>2. g4\rest |
      % Bar 15
      < d' a>2. g4\rest |
      % Bar 16
      < c' a>2. g4\rest |
      % Bar 17
      < d' a>2. g4\rest |
      % Bar 18
      g16\rest b,16~ < b, e>16~ < b, e gis>~ < b, e gis a>4~ < b, e gis a>4~ a4 |
      % Bar 19
      < a d'>2 b8\rest < e' cis'> e4\rest |
      % Bar 20
      < cis' a>2. e4\rest |
      % Bar 21
      < d' a>2. e4\rest |
      % Bar 22
      < cis' a>2. e4\rest |
      % Bar 23
      < d' a>2. e4\rest |
      % Bar 24
      g16\rest b,16~ < b, e>16~ < b, e gis>~ < b, e gis a>4~ < b, e
      gis a>4~ a4~ |
      % Bar 25
      a1 |
      



      

    } \\ {
%%% VoiceTwo
      \voiceTwo
      \partial 8
      s8
      % Bar 1
      s1 |
      % Bar 2
      bes,2.. a,8~ |
      % Bar 3
      a,1 |
      % Bar 4
      g,2~ g,8 f,4 d,8~ |
      % Bar 5
      d,1 |
      % Bar 6
      bes,2.. a,8~ |
      % Bar 7
      a,1 |
      % Bar 8
      g,2~ g,8 f,4 d,8~ |
      % Bar 9
      d,1 |
      % Bar 10
      g,2.. a,8~ |
      % Bar 11
      a,1 |
      % Bar 12
      d,1~ |
      % Bar 9
      d,1 |
      % Bar 10
      g,2.. a,8~ |
      % Bar 11
      a,1 |
      % Bar 12
      d,2. a,8 bes,8~  |

      % Bar 13
      bes,2. s4 |
      % Bar 14
      r8 a,2.. |
      % Bar 15
      r8 < d, fis>2.. |
      % Bar 16
      r8 a,2.. |
      % Bar 17
      r8 < d, fis>2.. |
      % Bar 18
      e,2. a,8 bes,~ |
      % Bar 19
      bes,2. s4 |
      % Bar 20
      r8 a,2.. |
      % Bar 21
      r8 < d, f>2.. |
      % Bar 22
      r8 a,2.. |
      % Bar 23
      r8 < d, f>2.. |
      % Bar 24
      e,2. r4 |




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
    \key d \minor
    \numericTimeSignature
    \time 4/4
    \override Beam #'damping = #100000
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'X-offset = #-1
    \override TabStaff.TimeSignature #'font-size = #5
    \override TabStaff.TabNoteHead #'font-name = #"Tex Gyre Heros"
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
    \override TabStaff.StaffSymbol #'thickness = #'0.75
    \override TabStaff.Beam #'beam-thickness = #'0.38
%% Music
      \partial 8
      s8
  % Bar 1
  f'8\3~ \tieUp < f'\3 g'\2>8\2~ < f'\3 g'\2>4. bes'8 e'8\2 d'8\3 |
  % Bar 2
  bes,4\6~ bes,4\6~ bes,4\6~  bes,8\6 a,8 |
  % Bar 3
  f'8\2~ < f'\2 g'\1>8~ < f'\2 g'\1>4. a'8 e'\2 d'\3 |
  \break
  % Bar 4
  g,4~ g,4~ g,8 f,8~ f,8 d,8 |
  % Bar 5
  f'8\3~ < f'\3 g'\2>8~ < f'\3 g'\2>4. bes'8 e'8\2 d'8\3 |
  % Bar 6
  bes,4\6~ bes,4\6~ bes,4\6~  bes,8\6 a,8 |
  \break
  % Bar 7
  f'8\2~ < f'\2 g'\1>8~ < f'\2 g'\1>4. a'8 e'\2 d'\3 |
  % Bar 8
  g,4~ g,4~ g,8 f,8~ f,8 d,8 |
  % Bar 9
  c'8\3~ < c'\3 d'\2>8~ < c'\3 d'\2>4. g'8 c'\2 b\3 |
  \break
  % Bar 10
  g,4~ g,4~ g,4~ g,8 a,8 |
  % Bar 11
  g8\4~ < g\4 a\3>8~ < g\4 a\3>4. d'8\2 g8 fis8 |
  % Bar 12
  d,4~ d,4~ d,4~ d,4 |
  \break

  % Bar 13
  c'8\3~ < c'\3 d'\2>8~ < c'\3 d'\2>4. g'8 c'\2 b\3 |
  % Bar 14
  g,4~ g,4~ g,4~ g,8 a,8 |
  % Bar 15
  g8\4~ < g\4 a\3>8~ < g\4 a\3>4. d'8\2 g8 fis8 |
  \break
  % Bar 16
  d,4~ d,4~ d,4 a,8 bes,\6^\repeatTie  |

  % Bar 17
  < a\4 d'\3 e'\2>4.\arpeggio a'8 g'4\2 \once\override Stem #'(details
  beamed-lengths) = #'(4) c'8\3 e'8\2 | 
  % Bar 18
  < c'\3 a\4>8 a,8~ a,4~ a,4~ a,8 fis'8\1 |
  \break
  % Bar 19
  < d'\2 a\3 >8 < d, fis>8~ < d, fis>4~ < d, fis>4~ < d, fis>8 e'8\2 |
  % Bar 20
  < c'\3 a\4>8 a,8~ a,4~ a,4~ a,8 fis'8\1 |
  % Bar 21
  < d'\2 a\3 >8 < d, fis>8~ < d, fis>4~ < d, fis>4~ < d, fis>8 e'8\1 |
  \break
  % Bar 22
  e,16 b, e gis a4~ a4 a,8 bes,\6^\repeatTie |
  % Bar 23
  < a\4 d'\3 e'\2>4.\arpeggio a'8 gis'8\2 < e'\3 cis'\4>8 \once\override Stem #'(details
  beamed-lengths) = #'(4)cis'8\3 e'8\2 | 
  % Bar 24
  < cis'\3 a\4>8 a,8~ a,4~ a,4~ a,8 f'8 |
  \break
  % Bar 25
  < d'\2 a\3>8 < d, f>8~ < d, f>4~ < d, f>4~ < d, f>8 e'8\2 |
  % Bar 26
  < cis'\3 a\4>8 a,8~ a,4~ a,4~ a,8 f'8 |
  % Bar 27
  < d'\2 a\3>8 < d, f>8~ < d, f>4~ < d, f>4~ < d, f>8 e'8\1 |
  \break
  % Bar 28
  e,16 b, e gis a4~ a4~ a4~ | 
  % Bar 29
  a4~ a4~ a4~ a4 \bar "|."



}

% Dynamics
%% DynamicsOne

  dynamicsone = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \partial 8
    \tsMove #0 #-1.03 \strDamp s8\startTextSpan |
    \once\override Staff.BarLine #'transparent = ##t
    % Bar 1
    s4 s4 s8 s8\stopTextSpan s4 |
    % Bar 2
    s2.. \tsMove #-0 #-1.03 \strDamp s8\startTextSpan |
    % Bar 3
    s8 s8\stopTextSpan s2. |
    % Bar 4
    s2.. \tsMove #-0 #-1.03 \strDamp s8\startTextSpan |
    % Bar 5
    s2 s8 s8\stopTextSpan s4 |
    % Bar 6
    s2.. \tsMove #-0 #-1.03 \strDamp s8\startTextSpan |
    % Bar 7
    s8 s8\stopTextSpan s2. |
    % Bar 8
    s2..  \tsMove #-0 #-1.03 \strDamp s8\startTextSpan |
    % Bar 9
    s2 s8 s8\stopTextSpan s4 |
    % Bar 10
    s2..  \tsMove #-0 #-1.03 \strDamp s8\startTextSpan |
    % Bar 11
    s1 |
    % Bar 12
    s1 |
    % Bar 13
    s2 s8 s8\stopTextSpan s4 |
    % Bar 14
    s2..  \tsMove #-0 #-1.03 \strDamp s8\startTextSpan |
    % Bar 15
    s1 |
    % Bar 16
    s2 s8 s8\stopTextSpan s4 |
    % Bar 17
    s8  \tsMove #-0 #-1.03 \strDamp s8\startTextSpan s8 s8\stopTextSpan s2 |
    % Bar 18
    s1 |
    % Bar 19
    s1 |
    % Bar 20
    s1 |
    % Bar 21
    s1 |
    % Bar 22
    s1 |
    % Bar 23
    s8  \tsMove #-0 #-1.03 \strDamp s8\startTextSpan s8 s8\stopTextSpan s2 |


  }
%% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    % Anacrusis
    \partial 8
    \tsMove #0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 1
    s8 s8\stopTextSpan s4 s8 \tsMove #-0 #-2.03 \strDamp
    s8\startTextSpan s8\stopTextSpan s8 |
    % Bar 2
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 3
    s4\stopTextSpan s4 s8 \tsMove #-0 #-2.03 \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 4
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 5
    s8 s8\stopTextSpan s4. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 6
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 7
    s4\stopTextSpan s4 s8 \tsMove #-0 #-2.03 \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 8
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 9
    s8 s8\stopTextSpan s4. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 10
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 11
    s2 s8 s8\stopTextSpan s4 |
    % Bar 12
    s1 |
    % Bar 13
    \tsMove #-0 #-2.03 \strDamp s8\startTextSpan s8\stopTextSpan s4. \tsMove #-0 #-2.03 \strDamp
    s8\startTextSpan s4\stopTextSpan |
    % Bar 14
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 15
    s2 s8 s8\stopTextSpan s4 |
    % Bar 16
    s2. \tsMove #-0 #-2.03 \strDamp s4\startTextSpan |
    % Bar 17
    s4\stopTextSpan s2. |
    % Bar 18
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 19
    s4\stopTextSpan s2.  |
    % Bar 20
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 21
    s4\stopTextSpan s2 s8 \tsMove #-0 #-2.03 \strDamp s8\startTextSpan  |
    % Bar 22
    s4 s2.\stopTextSpan |
    % Bar 23
    s1 |
    % Bar 24
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 25
    s4\stopTextSpan s2.  |
    % Bar 26
    s2.. \tsMove #-0 #-2.03 \strDamp s8\startTextSpan |
    % Bar 27
    s4\stopTextSpan s2 s8 \tsMove #-0 #-2.03 \strDamp s8\startTextSpan  |
    % Bar 28
    s4 s2.\stopTextSpan |



  }

%% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
      \partial 8
     \tsMove #0 #-3.03 \strDamp s8\startTextSpan
    % Bar 1
     s8\stopTextSpan s8 s4. \tsMove #-0 #-3.03 \strDamp s8\startTextSpan s8
    s8\stopTextSpan |
    % Bar 2
    s2.. \tsMove #-0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 3
    s4 s4\stopTextSpan s8 \tsMove #-0 #-3.03 \strDamp s8\startTextSpan
    s8 s8\stopTextSpan |
    % Bar 4
    s2.. \tsMove #-0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 5
    s8\stopTextSpan s8 s4. \tsMove #-0 #-3.03 \strDamp
    s8\startTextSpan s8 s8\stopTextSpan |
    % Bar 6
    s2.. \tsMove #-0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 7
    s4 s4\stopTextSpan s8 \tsMove #-0 #-3.03 \strDamp s8\startTextSpan
    s8 s8\stopTextSpan |
    % Bar 8
    s2.. \tsMove #-0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 9
    s8\stopTextSpan s8 s4. \tsMove #-0 #-3.03 \strDamp
    s8\startTextSpan s8 s8\stopTextSpan |
    % Bar 10
    s2.. \tsMove #-0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 11
    s8 s8\stopTextSpan s4. \tsMove #-0 #-3.03 \strDamp
    s8\startTextSpan s8\stopTextSpan s8 |
    % Bar 12
    s1 |
    % Bar 13
    s4 s4. \tsMove #0 #-3.03 \strDamp s8\startTextSpan s8
    s8\stopTextSpan |
    % Bar 14
    s2.. \tsMove #-0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 15
    s8 s8\stopTextSpan s4.  \tsMove #-0 #-3.03 \strDamp
    s8\startTextSpan s8\stopTextSpan s8 |
    % Bar 16
    s2. \tsMove #0 #-3.03 \strDamp s4\startTextSpan |
    % Bar 17 
    s4\stopTextSpan s4 s4 s8 \tsMove #0 #-3.03 \strDamp
    s8\startTextSpan |
    % Bar 18
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 19
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 20
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 21
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 22
    s8 s16 s16\stopTextSpan s4 s4 \tsMove #0 #-3.03 \strDamp
    s4\startTextSpan |
    % Bar 23
    s4\stopTextSpan s4 s4 s8 \tsMove #0 #-3.03 \strDamp
    s8\startTextSpan |
    % Bar 24
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % BAr 25
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % BAr 26
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % Bar 27
    s8\stopTextSpan s2. \tsMove #0 #-3.03 \strDamp s8\startTextSpan |
    % BAr 28
    s8 s16 s16\stopTextSpan


  }

%% DynamicsFour
  dynamicsfour = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \partial 8
    \tsMove #0 #-4.03 \strDamp s8\startTextSpan
    % Bar 1
     s8 s8 s4\stopTextSpan s8 \override TextSpanner #'extra-offset =
     #'(0 .  -4.03) s8 s8 s8 |
    % Bar 2
    s1 |
    % Bar 3
    s1 |
    % Bar 4
    s1 |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    s1 |
    % Bar 10
    s1 |
    % BAr 11
    s1 |
    % Bar 12
    s1 |
    % Bar 13
    s1 |
    % Bar 14
    s1 |
    % Bar 15
    s1 |
    % Bar 16
    s2. \strDamp s4\startTextSpan |
    % Bar 17
    s4\stopTextSpan s8 s4 s8 s8 \strDamp s8\startTextSpan |
    % Bar 18
    s8\stopTextSpan s8 s2 s4 |
    % Bar 19
    s2.. \strDamp s8\startTextSpan |
    % Bar20
    s8\stopTextSpan s2.. |
    % Bar 21
    s1 |
    % Bar 22
    s4 s4 s4 \strDamp s4\startTextSpan |
    % BAr 23
    s4\stopTextSpan s4 s4 s8 \strDamp s8\startTextSpan |
    % Bar 24
    s4\stopTextSpan s2. |
    % Bar 25
    s2.. \strDamp s8\startTextSpan |
    % Bar 26
    s4\stopTextSpan s2. |

  }
%% DynamicsFive
  dynamicsfive = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(0 . -5.03)
      \partial 8
      s8
    % Bar 1
    \trMove #0.1 #1.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #2.4
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 2
    \trMove #0.1 #1.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #2.4
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s4 s8 s8 \eVib |
    % Bar 3
    \trMove #0.4 #2.0 \vibrato #'(1) #1.8 s8-\mkTweak #0.1 #2.6
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 4
    \trMove #0.1 #0.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.4
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s16 s16 \eVib s8 s8
    s16 \strDamp s16\startTextSpan | 
    % Bar 5
    s4 s4 s8\stopTextSpan s8 s4 |
    % Bar 6
    \trMove #0.1 #0.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.4
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s4 s8 s8 \eVib |
    % Bar 7
    \trMove #0.4 #1.0 \vibrato #'(1) #1.8 s8-\mkTweak #0.1 #1.6
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 8-16 
    s1*9 |
    % Bar 17
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 18
    s8 s8\stopTextSpan s2. |
    % Bar 19
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 18
    s8 s8\stopTextSpan s2. |
    % Bar 19-22
    s1*2 |
    % Bar 23
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 24
    s8 s8\stopTextSpan s2. |
    % Bar 25
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 26
    s8 s8\stopTextSpan s2. |

  }
%% DynamicsSix
  dynamicssix = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(0 . -6.03)
      \partial 8
      s8
    % Bar 1
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 2
    s4\stopTextSpan s2. |
    % Bar 3
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 4
    s4\stopTextSpan s2. |
    % Bar 5
    \trMove #0.2 #0.6 \vibrato #'(1) #1.8 s8-\mkTweak #-0.1 #1.2
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib
    \strDamp s8\startTextSpan s4 | 
    % Bar 6
    s4\stopTextSpan s2. |
    % Bar 7
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 8
    s4\stopTextSpan s2. |
    % Bar 9
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 10
    s4\stopTextSpan s2. |
    % Bar 11
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 12
    s4\stopTextSpan s2. |
    % Bar 13
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 14
    s4\stopTextSpan s2. |
    % Bar 15
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 16
    s4\stopTextSpan s2. |
    % Bar 17
    s1 |
    % Bar 18
    s2.. \strDamp s8\startTextSpan |
    % Bar 19
    s8 s8\stopTextSpan s2 s8 s8 |
    % Bar 20
    s2.. \strDamp s8\startTextSpan |
    % Bar 21
    s8 s8\stopTextSpan s2 s8 \strDamp s8\startTextSpan |
    % Bar 22
    s16\stopTextSpan s8. s2. |
    % Bar 23
    s1 |
    % Bar 24
    s2.. \strDamp s8\startTextSpan |
    % Bar 25
    s8 s8\stopTextSpan s2 s8 s8 |
    % Bar 26
    s2.. \strDamp s8\startTextSpan |
    % Bar 27
    s8 s8\stopTextSpan s2 s8 \strDamp s8\startTextSpan |
    % Bar 28
    s16\stopTextSpan


  }
%% RH Fingering
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
      \partial 8
      s8\mkTweak #-0.7 #-4.3 ^\rhp \mkTweak #-0.7 #-3.5 ^\rhi \mkTweak
    #-0.7 #-3.6 ^\rhm \mkTweak #-0.7 #-3.6 ^\rha
    % Bar 1
    s4 s4 s8 s8\mkTweak
    #-0.3 #-6.3 ^\rhp \mkTweak #-0.35 #-3.5 ^\rhi \mkTweak #-0.35 #-3.5 ^\rhm s4 |
    % Bar 2
    s4 s2 s8 s8\mkTweak #-0.3 #-5.3 ^\rhp\mkTweak #-0.3 #-3.5
    ^\rhi \mkTweak #-0.3 #-3.5  ^\rhm \mkTweak #-0.3 #-3.5 ^\rha |
    % Bar 3
    s4 s4 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha s4 |
    % Bar 4
    s2 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp s8 s16\mkTweak #-0.3 #-7.0
    ^\rhp \mkTweak #-0.4 #-4.2 ^\rhi \mkTweak #-0.4 #-4.2 ^\rhm
    \mkTweak #-0.4 #-4.2 ^\rha \mkTweak #-0.5 #-6.7 \tweak Script
    #'font-size #-5 ^\rheel s16\mkTweak #-0.6 #-5.4 ^\rhp   |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s2 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp s8 s8\mkTweak #-0.3 #-6.3 ^\rhp
    \mkTweak #-0.4 #-3.5 ^\rhi \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 9
    s2 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm s4 |
    % Bar 10
    s2 s4 s8 s8 \mkTweak #-0.3 #-5.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi \mkTweak #-0.4 #-3.5
    ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 11
    s8\mkTweak #-0.3 #-4.3 ^\rhp s8 s4. s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi s4 |
    % Bar 12
    s1 |
    % Bar 13
    s1 |
    % Bar 14
    s1 |
    % Bar 15
    s1 |
    % Bar 16
    s4 s4 s4 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak #-0.4 #-4.5 ^\rhi
    \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha s8 |
    % Bar 17
    s8 s8\mkTweak #-0.5 #-0.3 ^\rha s4 s4\mkTweak #-0.8 #-1.3 ^\rhm
    s8\mkTweak #-0.3 #-2.3 ^\rhi s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak
    #-0.4 #-4.5 ^\rhi \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha |
    % Bar 18
    s2. s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 19
    s8 s8\mkTweak #-0.3 #-3.3 ^\rhi s2 s8 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak
    #-0.4 #-4.5 ^\rhi \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha |
    % Bar 20
    s1 |
    % Bar 21
    s2. s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 22
    s16 s16\mkTweak #-0.3 #-5.3 ^\rhp s8\mkTweak #-0.3 #-4.3 ^\rhp s4
    s4 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak #-0.4 #-4.5 ^\rhi
    \mkTweak #-0.4 #-4.5 ^\rhm s8 |
    % Bar 23
    s8\mkTweak #-0.3 #-1.3 ^\rha s8\mkTweak #-0.5 #-0.3 ^\rha s4
    s8\mkTweak #-0.8 #-1.3 ^\rhm s8\mkTweak #-0.7 #-4.3 ^\rhp \mkTweak
    #-0.3 #-3.5 ^\rhi s8\mkTweak #-0.3 #-2.3 ^\rhi s8\mkTweak #-0.3
    #-5.3 ^\rhp \mkTweak #-0.3 #-4.5 ^\rhi \mkTweak #-0.3 #-4.5 ^\rhm
    \mkTweak #-0.3 #-4.5 ^\rha |
    % Bar 24
    s2. s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 25
    s8 s8\mkTweak #-0.3 #-3.3 ^\rhi s2 s8 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak
    #-0.4 #-4.5 ^\rhi \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha |
    % Bar 26
    s1 |


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
    \partial 8
    s8
    % Bar 1
    \lhSpannerUp "1" {  s8 \bsMove #-3.2 #1 \leftBracketTwo s8 s4 s8 }
    s8 \lhSpannerUp "1" { \bsMove #0.5 #1 \leftBracketTwo s8 s8 |
    % Bar 2
    s4 s4 s4 s8 } s8  |
    % Bar 3
    s8 \tsMove #0 #1.25 \lhSpannerUp "1" { s8 s4 s8 } s8 s4 |
    % Bar 4
    s2 s8 \tsMove #0 #-10 \lhSpannerDown "1" { s8 s8 } s8 |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    s2 s8 s8  \lhSpannerUp "1" {s8 s8 |
    % Bar 10
    s8 s8 s4 s4 s4} |
    


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
      \partial 8
      s8
    % Bar 1
    s1 |
    % Bar 2
    \tsMove #0.75 #-10 \lhSpannerDown "2" { s4 s4 s4 s8} s8 |
    % Bar 3
    s1 |
    % Bar 4
    \tsMove #0.5 #-10 \lhSpannerDown "2" { s2 s8 } s8 s8 s8 |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    s2 s4. \tsMove #0 #0 \lhSpannerUp "2" { s8 |
    % Bar 10
    s4 s4 s4 s4 } 
    


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
      \partial 8
      s8
    % Bar 1
    s2 s8 \tsMove #0 #1.25 \lhSpannerUp "3" {s8 s4 |
    % Bar 2
    s2 s4 s8 } s8 |
    % Bar 2


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
      \partial 8
      s8
    % Bar 1
    s1 |
    % Bar 2
    s1 |
    % Bar 3
    \tsMove #0 #0.25 \lhSpannerUp "4" {s8 s8 s4 s8} \bsMove #-1 #1
    \leftBracketThree \tsMove #0 #0.25 \lhSpannerUp "4" { s8 s8 s8 |
    % Bar 4
    s4 s4 s8 s8 s8 } s8 |



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
