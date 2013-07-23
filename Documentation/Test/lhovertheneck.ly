\version "2.16.2"
\paper{
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}

\new TabStaff {
  \tabFullNotation
  \stemDown
  \override Staff.Stem #'stemlet-length = #0.75
  \override Rest #'transparent = ##t
  r8[
  \once \override TextScript #'extra-offset = #'(-1.0 . -6.8)
  e16\5^\repeatTie^\markup { \fontsize #-6 \circle "+2" }
  \once \override TextScript #'extra-offset = #'(-0.7 . -7.8)
  c\6^\repeatTie^\markup { \fontsize #-6 \circle "+1" }] 
  \once \override TextScript #'extra-offset = #'(-1.7 . -0.8)
  <e, b'>4^\markup { \fontsize #-5 \italic "m" }^\repeatTie

}
