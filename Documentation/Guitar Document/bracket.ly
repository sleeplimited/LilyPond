\version "2.16.2"
 % The below, invented by Mats Bengtsson, creates left and right brackets vertically 
 % spanning an entire staff. It is useful for offseting optional passages of music,
 % as shown in the example
 % Modified by Rachael Thomas Carlson to be used for partial barreing in
 % tabulature.  2013
 % The number next to "th" in (th 0.2) controls thickness of the brackets. 
#(define-markup-command (left-bracket-two layout props) ()
"Draw left hand bracket for two strings"
(let* ((th 0.2) ;; todo: take from GROB
	(width (* 2.5 th)) ;; todo: take from GROB
	(ext '(-1.25 . 1.25))) ;; todo: take line-count into account
	(ly:bracket Y ext th width)))

leftBracketTwo = {
\once\override BreathingSign #'text = #(make-left-bracket-two-markup)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
\once\override BreathingSign #'extra-offset = #'(0.0 . -2.0)
% Trick to print it after barlines and signatures:
\once\override BreathingSign #'break-align-symbol = #'custos
\breathe 
}


#(define-markup-command (right-bracket layout props) ()
"Draw right hand bracket"
(let* ((th .2);;todo: take from GROB
(width (* 2.5 th)) ;; todo: take from GROB
	(ext '(-2.8 . 2.8))) ;; todo: take line-count into account
	(ly:bracket Y ext th (- width))))

rightBracket = {
\once\override BreathingSign #'text = #(make-right-bracket-markup)
\once\override BreathingSign #'Y-offset = ##f
\breathe
}

\new TabStaff {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series = #'narrow
  \override Staff.Stem #'stemlet-length = #0.75
  % Bar 1
  \leftBracketTwo <fis, b,>4
  
  }
