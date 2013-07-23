\version "2.16.2"
\pointAndClickOff
\paper{
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}
twostrdwnstrm = \markup { 
  \center-column {
    \rotate #180 {
    \combine
    \draw-line #'(0 . 2.5)
    \arrow-head #Y #DOWN ##t }
    }
  }
rhc = \markup { \fontsize #-5 \italic "c" }
rha = \markup { \fontsize #-5 { \italic "a" } }
rhm = \markup { \fontsize #-5 \italic "m" }
rhi = \markup { \fontsize #-5 \italic "i" }
rhp = \markup { \fontsize #-5 \italic "p" }
oneStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 1.4)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}

mkTweak =
#(define-event-function (parser location x y m) (number? number? ly:music?)
  #{  \tweak #'extra-offset #(cons x y) #m #})

mkMove = #(define-music-function
        (parser location x y)
        ( number? number? )
        #{ \once \override TextScript #'extra-offset = #(cons x y)
        #})
 tab = {
  \key a \major
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series = #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  <ees\4 g\3>4-\mkTweak #-0.8 #-3.9 ^\twostrdwnstrm -\mkTweak #-0.8 #-6.5 ^\rhi
  -\mkTweak #-0.8 #-8.2 _\rhp 

}
dynamicssix = {
    }
  
  \score {
  <<
      \new TabStaff = "guitar tab" <<
	\set Staff.stringTunings = \stringTuning <ees, g, ees g bes ees'>
	\new TabVoice = "tab" \tab
	\new Dynamics = "dynamicssix" \dynamicssix
      >>
    >>
    \layout {    }
    \midi {}

  
} 
