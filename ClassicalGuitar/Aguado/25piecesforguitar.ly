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
  \override NoteColumn #'ignore-collision = ##t
  \partial 8 cis'16. d'32
  << { 
    % Bar 1
    e'8 cis' a' |
    % Bar 2
    a' gis' e'16. e'32 |
    % Bar 3
    e'8 d' b'~ |
    b' a' a'16. b'32 |
    cis''8 cis'' cis'' |
    } \\ { 
      \override NoteHead #'font-size = #-4
      \override Accidental #'font-size = #-4
      \override Rest #'font-size = #-4
  % Bar 1
   g8\rest a g8\rest |
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


} >> |
  }
%% Lower
lowerone = {
  \key a \major
  \voiceTwo
  \clef "treble_8"
  \override NoteColumn #'ignore-collision = ##t
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
  r8 
  a8 a8 |
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
      \new Staff << \upperone \lowerone >>
    >>
    \header {
      piece = \markup { \concat { \smallCaps N \super{o} " 1" }}
    } 
    \layout {
    }
    \midi {}

  }
}

