\version "2.16.2"
\paper{
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}
shapeDoubleSlur =
#(define-music-function (parser location offsets)(list?)
  (_i "Offset control-points of @code{Slur} by @var{offsets}.
  @code{Slur} is supposed to be invoked by @samp{\\once\\set doubleSlurs = ##t}
  The argument is a list of number pairs or list of such lists.  Each element
  of a pair represents an offset to one of the coordinates of a control-point.")

   (define (read-out l1 l2)
     (define (helper ls1 ls2 ls3)
     "Filters all elements of ls1 from ls2 by their grob-name
      and appends it to ls3"
      (let ((grob-name-proc
              (lambda (x) (assq-ref (ly:grob-property x 'meta) 'name))))
       (if (null? ls1)
           ls3
           (helper
             (cdr ls1)
             ls2
             (append ls3
                     (filter (lambda (x) (eq? (car ls1) (grob-name-proc x)))
                             ls2))))))
    (helper l1 l2 '()))

   ;; Thanks to David Nalesnik for his great shape-functions!!
   (define ((shape-curve offsets) grob)
     (let* ((orig (ly:grob-original grob))
            (siblings (if (ly:spanner? grob)
                          (ly:spanner-broken-into orig) '()))
            (total-found (length siblings))
            (function (assoc-get 'control-points
                                 (reverse (ly:grob-basic-properties grob))))
            (coords (function grob)))

       (define (offset-control-points offsets)
         (if (null? offsets)
             coords
             (map
               (lambda (x y) (coord-translate x y))
               coords offsets)))

       (define (helper sibs offs)
         (if (pair? offs)
             (if (eq? (car sibs) grob)
                 (offset-control-points (car offs))
                 (helper (cdr sibs) (cdr offs)))
             coords))

       ;; we work with lists of lists
       (if (or (null? offsets)
               (not (list? (car offsets))))
           (set! offsets (list offsets)))

       (if (>= total-found 2)
           (helper siblings offsets)
           (offset-control-points (car offsets)))))

#{
  \once\override Slur #'after-line-breaking =
    #(lambda (grob)
      (let* ((sys (ly:grob-system grob))
             (elements-lst
               (ly:grob-array->list (ly:grob-object sys 'all-elements)))
             (grob-name
               (lambda (x) (assq-ref (ly:grob-property x 'meta) 'name)))
             (X-coord (lambda (x) (ly:grob-relative-coordinate x sys X)))
             (Y-coord (lambda (x) (ly:grob-relative-coordinate x sys Y)))
             (grob-y-extent (lambda (x) (ly:grob-extent x sys Y)))
             (slurs (read-out (list 'Slur) elements-lst))
             (slur-X-coord (X-coord grob))
             (relevant-slurs
                 (remove
                   (lambda (slur) (not (= slur-X-coord (X-coord slur))))
                   slurs)))
      (for-each
        (lambda (x y)
          (ly:grob-set-property!
            x
            'control-points
            (shape-curve y)))
        relevant-slurs offsets)
        ))
#})

\version "2.16.2"

\new TabStaff {
    \tabFullNotation
    \stemDown
    \set Staff.stringTunings = \stringTuning <c, g, d g b c'>
    \once \set doubleSlurs = ##t
    \shapeDoubleSlur
    #'(
       ((0 . 7) (0 . 8.0) (0 . 7.7) (0 . 6.4)) ;;bottom
       () ;;top
      )
    <c' e c f,>8\2\4\5\6^\repeatTie ( <b d>\2\4)
    \once \set doubleSlurs = ##t
    \shapeDoubleSlur
     #'(
       ((0 . 7) (0 . 8.0) (0 . 7.7) (0 . 6.4)) ;;bottom
       () ;;top
      )
    <d' a>\1\3^\repeatTie ( <c' g>\1\3)
}