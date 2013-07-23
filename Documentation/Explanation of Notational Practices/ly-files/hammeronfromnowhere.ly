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
  \override LaissezVibrerTie #'extra-offset = #'(-1.6 . 0.0)
  <fis' a>16\laissezVibrer[ r16 <fis' a>16\laissezVibrer r16] 
  }