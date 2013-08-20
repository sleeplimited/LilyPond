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
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \smallCaps \fromproperty #'header:piece
        \fromproperty #'header:opus
      }
    }
}

% Includes
  \include "numberone.ly"
  \include "numbertwo.ly"
  \include "numberthree.ly"
