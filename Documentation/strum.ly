\version "2.16.2"
\pointAndClickOff
#(set-global-staff-size 24)
\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  system-system-spacing = #'((basic-distance . 1) (padding . 2))
  #(set-paper-size "letter")
  % see:  http://code.google.com/p/lilypond/issues/detail?id=2576

  #(define (not-last-page layout props arg) 
  (if (not (book-last-page? layout props)) 
    (interpret-markup layout props arg) 
    empty-stencil)) 

tocItemMarkup = \tocItemWithDotsMarkup 

oddHeaderMarkup = ""

evenHeaderMarkup = \oddHeaderMarkup 

oddFooterMarkup = 
\markup \fill-line { 
  % using \line removes empty-stencils 
  % produced by #not-first-page etc 
  \line { 
    % page-number not on first-page 
    \on-the-fly #not-first-page 
    % page-number not on last-page 
    \on-the-fly #not-last-page 
    \concat { On " " Golden " " Pond  " " 07/04/13 " " \fromproperty #'page:page-number-string /12
  } 
  % copyright on first page 
  \on-the-fly #first-page \fromproperty #'header:copyright 
  % tagline on last page 
  \on-the-fly #last-page \fromproperty #'header:tagline 
} 
  } 
  evenFooterMarkup = \oddFooterMarkup 
} 
onestrdwnstrm = \markup { \rotate #180 
  \column {
    \combine
    \draw-line #'(0 . 1.5)
    \arrow-head #Y #DOWN ##f
    }
  }
twostrdwnstrm = \markup { \rotate #180 
  \column {
    \combine
    \draw-line #'(0 . 2.5)
    \arrow-head #Y #DOWN ##f
    }
  }
threestrdwnstrm = \markup { \rotate #180 
  \column {
    \combine
    \draw-line #'(0 . 4)
    \arrow-head #Y #DOWN ##f
    }
  }
fourstrdwnstrm = \markup { \rotate #180 
  \column {
    \combine
    \draw-line #'(0 . 5.8)
    \arrow-head #Y #DOWN ##f
    }
  }
fivestrdwnstrm = \markup { \rotate #180 
  \column {
    \combine
    \draw-line #'(0 . 7.2)
    \arrow-head #Y #DOWN ##f
   }
  }
sixstrdwnstrm = \markup {
  \column {
  \rotate #180 {
    \combine
    \draw-line #'(0 . 8.8)
    \arrow-head #Y #DOWN ##f
  }
    }
  }
sixstrupstrm = \markup {
  \column {
    \combine
    \draw-line #'(0 . 8.8)
    \arrow-head #Y #DOWN ##f
    }
  }
fivestrupstrm = \markup {  
  \column {
    \combine
    \draw-line #'(0 . 7.2)
    \arrow-head #Y #DOWN ##f
   }
  }
fourstrupstrm = \markup {  
  \column {
    \combine
    \draw-line #'(0 . 5.8)
    \arrow-head #Y #DOWN ##f
    }
  }
threestrupstrm = \markup {
  \column {
    \combine
    \draw-line #'(0 . 4)
    \arrow-head #Y #DOWN ##f
    }
  }
twostrupstrm = \markup {  
  \column {
    \combine
    \draw-line #'(0 . 2.5)
    \arrow-head #Y #DOWN ##f
    }
  }
onestrupstrm = \markup {  
  \column {
    \combine
    \draw-line #'(0 . 1.5)
    \arrow-head #Y #DOWN ##f
    }
  }
\new TabStaff {
  \tabFullNotation
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \stemDown
  \override Staff.TabNoteHead #'font-series = #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  % Bar 1
  \once \override TextScript #'extra-offset = #'(-0.4 . 2.4)
  <g, c e g c' e'>4-\fivestrdwnstrm 
}


