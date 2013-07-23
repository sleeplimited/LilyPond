\version "2.16.2"
\paper{
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}
\markup {
  \column {
   { \circle \fontsize#-8 "1" }
      { \circle \fontsize#-8 "2" }
      { \circle \fontsize#-8 "3" }
      { \circle \fontsize#-8 "4" }
      { \circle \fontsize#-8 "T" }
   }
  }