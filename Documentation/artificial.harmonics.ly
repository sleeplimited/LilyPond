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
#(define (new-stil markup)
   ;; Creates a stencil
   (lambda (grob)
     (grob-interpret-markup grob markup)))

tweakTabNoteHead = 
#(define-music-function (parser location mrkp mus)(markup? ly:music?)
                        #{
                        \tweak #'stencil #(new-stil mrkp)
                        #mus
                        #})

newTabNoteHead =
#(define-music-function (parser location mrkp)(markup?)
                        ;; Uses @code{new-stil} in a music-function.
                        ;; Ofcourse it's possible to use:
                        ;; @samp{\\once \\override TabNoteHead #'stencil =
                        ;;         #(new-stil #{ \\markup { \musicglyph #"noteheads.s0la" } #})}
                        ;; directly.
                        #{
                        \once \override TabNoteHead #'stencil = #(new-stil mrkp)
                        #})

% creating a variable as sort of schortcut.
tick = \newTabNoteHead \markup { \musicglyph #"noteheads.s0laThin" }
newTabHeadInChord = \markup { \musicglyph #"noteheads.s0laThin" }

artH = \newTabNoteHead \markup { \concat { \fontsize #-2 { \musicglyph #"one" \musicglyph #"two"
\musicglyph #"zero" } } }

\new TabStaff {
  \tabFullNotation
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \stemDown
  \override Staff.TabNoteHead #'font-series = #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  \override LaissezVibrerTie #'extra-offset = #'(-2.5 . 0)
  % Bar 1
  <g,\6^\laissezVibrer \tweak TabNoteHead #'X-offset #'-1.2 c'\2 \tweak TabNoteHead #'X-offset #'0.6 g''\2\harmonic>4
}
