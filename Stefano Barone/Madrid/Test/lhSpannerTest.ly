\version "2.18.2"
lhSpannerUp =
#(define-music-function (parser location strg music)
   (string? ly:music?)
  #{
     \once \override Voice.TextSpanner #'style = #'solid
     \once \override Voice.TextSpanner #'font-size = #-8
     \once \override Voice.TextSpanner #'thickness = #0.5
     \once \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
     \once \override TextSpanner #'(bound-details right text) = \markup {
     \draw-line #'(0 . -0.5) }
     \once \override TextSpanner #'(bound-details left text) = \markup {
      { \circle \pad-markup #0.2 \upright { $strg } }}
     \once \override TextSpanner #'(bound-details left-broken text) = \markup {
      { "(" \circle \pad-markup #0.2 \upright { $strg }")"} }
  
     #(text-spanner-start-stop music)
  #})

lhOne = {
  \lhSpannerUp "1" { a2 g2 \break a g \break a g \break a g \break}
}
\relative c {
  \lhOne
}
