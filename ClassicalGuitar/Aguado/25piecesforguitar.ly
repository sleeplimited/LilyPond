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
#(set-global-staff-size 21.55)
% Header
\header {
  title = \markup { \concat { "25 Pi" \char ##x00E8"ces pour Guitare"  } }
  composer = \markup { \smallCaps "D. Aguado" }
  %{poet = \markup \concat { \fontsize #-2 { B\sub{1} F\sharp\sub{2} D\sub{3} G\sub{3} B\sub{3}
  D\sharp\sub{4} } } %}
  tagline = \markup { \fontsize #-4 \with-url #"http://www.sleeplimited.org"
  \line { Engraved by Rachael Thomas Carlson for Sleep Limited Publications <rtc@sleeplimited.org>. } }
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
    % Bar 12
    b'8 a' a'16. b'32 |
    % Bar 13
    cis''8 cis'' cis'' |
    % Bar 14
    d''8 r16 cis''16 b' a' |
    % Bar 15
    gis'8 e' gis' |
    % Bar 16 
    a'4 r8 \bar "|:"
    % Bar 17
    gis'16. b'32 e'8 d' |
    % Bar 18
    cis'8 e' a' |
    % Bar 19
    gis'16. b'32 e'8 d' |
    % Bar 20
    d'8 cis' cis''16. d''32 |
    % Bar 21
    e''8 b'8\rest ais'8 |
    % Bar 22
    b'8. cis''16 d''8 |
    % Bar 23
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    e8 d'8 gis' |
    % Bar 24
    a'4 b'8\rest \bar ":|"
  }

%% UpperTwo
uppertwo = {

  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Tempo
    \smallCaps "Di Valz"
  }
  \override Score.MetronomeMark #'padding = #3
  \time 3/8
  \key a \major
  \voiceOne
  \clef "treble_8"
  \slurDown
  % Bar 1
  gis'16( a') gis'16( a') gis'16( a') |
  % Bar 2
  e'4 c''16\rest cis''16 |
  % Bar 3
  cis''4 c''16\rest e' |
  % Bar 4
  e'4 d'8 |
  % Bar 5
  ais'16( b') ais'16( b') ais'16( b') |
  % Bar 6
  e'4 c''16\rest d''16 |
  % Bar 7
  d''4 c''16\rest e'16 |
  % Bar 8
  e'4. \bar ":|"
  % Bar 9
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 10
  b'4 e'8 |
  % Bar 11
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 12
  cis''4 e'8 |
  % Bar 13
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 14
  d''16( b') gis' e' d'8 |
  % Bar 15
  d''16( b') gis' e' d'8 |
  % Bar 16
  cis'8 e' a' |
  % Bar 17
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 18
  b'4 e'8 |
  % Bar 19
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 20
  cis''4 e'8 |
  % Bar 21
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 22
  d''16( b') gis' e' d'8 |
  % Bar 23
  gis'16( fis') d' b gis8 |
  % Bar 24
  a4 r8 \bar "|."



  
}
%% MiddleOne
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
  % Bar 17 
  g8\rest g8\rest gis8 |
  % Bar 18
  a4. |
  % Bar 19
  g8\rest g8\rest gis8 |
  % Bar 20
  a4 g8\rest |
  % Bar 21
  d'8\rest d'8\rest e' |
  % Bar 22
  d'8 d'8\rest d'8\rest |
  % Bar 23
  \revert NoteHead #'font-size
  \revert Accidental #'font-size
  \revert Rest #'font-size
  \revert Stem #'font-size
  s8 d'4 |
  % Bar 24
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  cis'4 b8\rest |

}
%% MiddleTwo
  middletwo =  {
  \key a \major
  \voiceThree
  \clef "treble_8"
  \time 3/8 
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  % Bar 1
  \stemDown
  s4.
  % Bar 2
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 3
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 4
  g8\rest < d' gis>8 gis8 |
  % Bar 5
  s4.
  % Bar 6
  g8\rest < d' gis>8 < d' gis>8 |
  % Bar 7
  g8\rest < d' gis>8 < d' gis>8 |
  % Bar 8
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 9
  s4. |
  % Bar 10
  g8\rest < b gis>8 < b gis>8 |
  % Bar 11
  s4. |
  % Bar 12
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 13
  s4. |
  % Bar 14
  g8\rest g8\rest gis8 |
  % Bar 15
  g8\rest g8\rest gis8 |
  % Bar 16
  a4. |
  % Bar 17
  s4. |
  % Bar 18
  g8\rest < b gis>8 < b gis>8 |
  % Bar 19
  s4. |
  % Bar 20
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 21
  s4. |
  % Bar 22
  g8\rest g8\rest gis8 |
  % Bar 23
  g8\rest g8\rest e8 |
  % Bar 24
  cis4 s8 |





  }
%% LowerOne
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
  % Bar 17
  e,4. |
  % Bar 18
  a,4. |
  % Bar 19
  e,4. |
  % Bar 20
  a,4. |
  % Bar 21
  r8 fis4 |
  % Bar 22
  d4. |
  % Bar 23
  e4. |
  % Bar 24
  a,4 b,8\rest |

}
%% LowerTwo
lowertwo = {
  \key a \major
  \voiceTwo
  \clef "treble_8"
  % Bar 1
  R4. |
  % Bar 2 
  a,4. |
  % Bar 3
  a,4. |
  % Bar 4
  e,4. |
  % Bar 5
  R4. |
  % Bar 6
  e,4. |
  % Bar 7
  e,4. |
  % Bar 8
  a,4. |
  % Bar 9
  R4. |
  % Bar 10
  e,4. |
  % Bar 11
  R4. |
  % Bar 12
  a,4. |
  % Bar 13
  R4. |
  % Bar 14
  e,4. |
  % Bar 15
  e,4. |
  % Bar 16
  a,4. |
  % Bar 17
  R4. |
  % Bar 18
  e,4. |
  % Bar 19
  R4. |
  % Bar 20
  a,4. |
  % Bar 21
  R4. |
  % Bar 22
  e,4. |
  % Bar 23
  e,4. |
  % Bar 24
  a,4 c8\rest |
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

  }
  \score {
    <<
      \new Staff << \uppertwo \middletwo \lowertwo >>
    >>
    \header {
      piece = \markup { \concat { \smallCaps N \super{o} " 2" }}
    } 
    \layout {
    }
    \midi {}

  }
}

