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
rhm = \markup { \fontsize #-5 \italic "m" }
mkTweak =
#(define-event-function (parser location x y m) (number? number? ly:music?)
  #{  \tweak #'extra-offset #(cons x y) #m #})

mkMove = #(define-music-function
        (parser location x y)
        ( number? number? )
        #{ \once \override TextScript #'extra-offset = #(cons x y)
        #})
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
twoStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 2.5)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
threeStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 4.0)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
fourStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 5.7)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
fiveStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 7.2)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}
sixStrFlick = \markup { \rotate #180
  \center-column {
    \combine
    \draw-line #'(0 . 8.8)
    \combine
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
    \raise #0.4
    \fontsize #-3 
    \arrow-head #Y #DOWN ##f
  
  }

}

 tab = {
  \key a \major
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series = #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  \mkMove #-0.5 #-6.2 <ees, g, ees\4 g\3 cis' ees'>4^\sixStrFlick -\mkTweak #-0.6 #-6.5 ^\rhm <e'\2 cis'\3>^\oneStrFlick
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
