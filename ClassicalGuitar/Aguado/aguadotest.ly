\version "2.16.1" 
\header {
  title = \markup { \concat { "25 PI" \char ##x00C8"CES POUR GUITARE"  } }
  composer = \markup { \smallCaps "D. Aguado" }
  %{poet = \markup \concat { \fontsize #-2 { B\sub{1} F\sharp\sub{2} D\sub{3} G\sub{3} B\sub{3}
  D\sharp\sub{4} } } %}
  tagline = \markup { \fontsize #-4 \with-url #"http://www.sleeplimited.org"
  \line { Engraved by Rachael Thomas Carlson for Sleep Limited Publications <rtc@sleeplimited.org>. } }
}
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
  \score {
    \include "numberone.ly"
    \header { piece = "No 1" }
}
  \score {
    \include "numbertwo.ly"
  \header { piece = "No 2" }
  }
  \score {
    \include "numberthree.ly"
    \header { piece = "No 3" }
    \layout {}
    \midi {}
  }
