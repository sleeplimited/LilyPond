\version "2.16.1"
%{ Declaration
========================================================================
"Title", by Composer

Type of Transcription
Where did you get the music?  Who owns the copyright to the music?

This Transcription is by Rachael Thomas Carlson for Sleep Limited
Publications.  DATE
__..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
|                        
.__    .  .        ,                
[__). .|_ |* _. _.-+-* _ ._  __     
|   (_|[_)||(_.(_] | |(_)[ )_)      

=====================================================================%}
\pointAndClickOff
% Header
\header {
  title = \markup { \concat { "25 Pi" \char ##x00E8"ces for Guitar"  } }
  composer = \markup { \smallCaps "D. Aguado" }
  %{poet = \markup \concat { \fontsize #-2 { B\sub{1} F\sharp\sub{2} D\sub{3} G\sub{3} B\sub{3}
  D\sharp\sub{4} } } %}
  copyright = \markup { \fontsize #-4 { \char ##x00a9 2011 Who's Music
  Publishing } }
  tagline = \markup { \fontsize #-4 \with-url #"http://www.sleeplimited.org"
  \line { Engraved with Lilypond by Rachael Thomas Carlson for
  Sleep Limited Publications <rtc@sleeplimited.org>. } }
}
% Paper
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}
% Standard Notation
%% UpperOne

upperone = {
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Tempo
    \smallCaps "Di Valz"
  }
  \set Staff.shortInstrumentName = #"Centered" 
  \override Score.MetronomeMark #'padding = #3
  \time 3/8
  \key a \major
  \voiceOne
  \clef "treble_8"
  % Bar 1
  \partial 8 cis'16. d'32
    % Bar 1
    e'8 cis' a' |
    % Bar 2
    a' gis' e'16. e'32 |
    % Bar 3
    e'8 d' b'~ |
    % Bar 4
    b'8 a' a'16. b'32 |
    % Bar 5
    cis''8 cis'' cis'' |
    % Bar 6
    d''8 r16 cis''16 b' a' |
    \break
    % Bar 7
    gis'8 e' gis' |
    % Bar 8
    a'4 cis'16. d'32 |
    % Bar 9
    e'8 cis' a' |
    % Bar 10
    a'8 gis' e'16. e'32 |
    % Bar 11
    e'8 d' b'~ |
    \break
    % Bar 12
    b'8 a' a'16. b'32 |
    % Bar 13
    cis''8 cis'' cis'' |
    % Bar 14
    d''8 r16 cis''16 b' a' |
    % Bar 15
    gis'8 e' gis' |
    % Bar 16 
    a'4 r8 |


  }
%% Middle
middleone = {
  \key a \major
  \voiceThree
  \clef "treble_8"
  \time 3/8 
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  \partial 8 s8
  % Bar 1
  \stemDown
  g8\rest a8 g8\rest |
  % Bar 2
  b8 g8\rest g8\rest |
  % Bar 3
  g8\rest gis4 |
  % Bar 4
  < a cis'>4 g8\rest |
  % Bar 5
  f'8\rest 
  \autoBeamOff
  g'8 g' |
  % Bar 6
  fis'8 b8\rest b8\rest |
  % Bar 7
  b8\rest b8\rest d'8 |
  % Bar 8
  cis'4 s8 |
  % Bar 9
  g8\rest a8 g8\rest |
  % Bar 10
  b8 g8\rest g8\rest |
  % Bar 11
  g8\rest gis4 |
  % Bar 12
  < a cis'>4 g8\rest |
  % Bar 13
  f'8\rest 
  \autoBeamOff
  g'8 g' |
  % Bar 14
  fis'8 b8\rest b8\rest |
  % Bar 15
  b8\rest b8\rest d'8 |
  % Bar 16
  cis'4 b8\rest |

}
%% Lower
lowerone = {
  \key a \major
  \voiceTwo
  \clef "treble_8"
  % Bar 1
  \partial 8 s8
  a,4. |
  % Bar 2
  e,4. |
  % Bar 3
  e,4. |
  % Bar 4
  a,4. |
  % Bar 5
  r8 a8 a8 |
  % Bar 6
  d8 r8 r8 |
  % Bar 7
  e4 e8 |
  % Bar 8
  a,4 r8 |
  % Bar 9
  a,4. |
  % Bar 10
  e,4. |
  % Bar 11
  e,4. |
  % Bar 12
  a,4. |
  % Bar 13
  r8 a8 a8 |
  % Bar 14
  d8 r8 r8 |
  % Bar 15
  e4 e8 |
  % Bar 16
  a,4 r8 |

}
% Score
\book {
  \paper {
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \smallCaps \fromproperty #'header:piece
        \fromproperty #'header:opus
      }
    }
  }
  \score {
    <<
      \new Staff << \upperone \middleone \lowerone >>
    >>
    \header {
      piece = \markup { \concat { \smallCaps N \super{o} " 1" }}
    } 
    \layout {
    }
    \midi {}

  }
}

