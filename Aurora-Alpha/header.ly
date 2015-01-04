% header
\header {
  title = \markup {  \bold \fontsize #2 "Aurora/Alpha" }
  composer = \markup { \fontsize #-1 {   "Rachael Carlson" } }
  poet = \markup { \concat { \fontsize #-3 { C\raise #0.6 \fontsize #-5 \sharp\fontsize #-5 {2}" "G\raise #0.6 \fontsize #-5 \sharp\fontsize #-5 {2}" "E\fontsize #-5 {3}" "E\fontsize #-5 {3}" "B\fontsize #-5 {3}" "E\fontsize #-5 {4} }}}
  meter = \markup { " " }
  copyright = \markup { 
    \fill-line {
      \center-column { 
        \line { 
          \raise #-2.5
          \concat { 
            \fontsize #-3 { 
              "2014 " \char ##x00a9 " Sleep Limited Music"
            } 
          } 
        } 
        \line {
          \raise #-1.2
          \concat { 
            \fontsize #-3 { 
              Transcription " " \char ##x00a9 " 2014 Sleep Limited"
              " Publications"
            }
          }
        } 
        \line {
          \concat {
            \fontsize #-3 {
              "Aurora/Alpha 12/15/2014 " \fromproperty #'page:page-number-string "/5" 
            }
          }
        }
      } 
    }
  } 
  tagline = " "

}
