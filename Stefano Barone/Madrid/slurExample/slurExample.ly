%% was shapeSlur

%% Contributed by Stephen MacNeil
tabSlur = #(define-music-function (parser location offsets) (list?)
#{
\override TabVoice.Slur.control-points = #(alter-slur-curve offsets)
#})
#(define ((alter-slur-curve offsets) grob)
;; get default control-points
(let ((coords (ly:slur::calc-control-points grob))
(n 0))
;; add offsets to default coordinates
(define loop (lambda (n)
(set-car! (list-ref coords n)
(+ (list-ref offsets (* 2 n))
(car (list-ref coords n))))
(set-cdr! (list-ref coords n)
(+ (list-ref offsets (1+ (* 1 n))) ;was (* 2 n)))
(cdr (list-ref coords n))))
(if (< n 3)
(loop (1+ n)))))
;; return altered coordinates
(loop n)
coords))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
chordSlurT =
#(define-music-function (parser location tro tx ty) (number? number? number?)
#{

\once \override TabVoice.Slur.extra-offset = #`(,tx . ,ty)
\once \override TabVoice.Slur.rotation = #`(,tro 0 0)
\once \override TabStaff.Slur.layer = #4
\once \override TabStaff.NoteHead.layer = #1

#})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Example of Usage
%%% \version "2.18.2"
%%% 
%%% \new TabStaff {
%%% \tabFullNotation
%%% \once \tabSlur #`(0 -2 -2 -2.3 -2.6 0 -4 0)
%%% \chordSlurT #79 #1.2 #-1 < bis'\1 g\4>16[( < fis'\2 ees\5> < g d>)]
%%% }
