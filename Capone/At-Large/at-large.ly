\version "2.16.2"
\header {
  title = "Capone"
  composer = "Rachael"
  poet = \markup \concat { { C\sub{2} G\sub{2} E\flat\sub{3} G\sub{3} C\sub{4} E\flat\sub{4} } }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}
\include "bend.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%  Cut here ----- Start 'flamenco.ly' 

% Text indicators
abanico   = \markup { \italic Abanico }
rasgueaso = \markup { \italic Ras. }
alzapua   = \markup { \italic Alzapua }

% Finger stroke symbols
strokeUp = \markup { \postscript #"
0.1     setlinewidth
0.5 0   moveto
0.5 2   lineto
0.2 1.4 lineto
0.5 2   moveto
0.8 1.4 lineto
stroke
"}

strokeDown = \markup { \postscript #"
0.1     setlinewidth
0.5 2   moveto
0.5 0   lineto
0.2 0.6 lineto
0.5 0   moveto
0.8 0.6 lineto
stroke
"}

% Golpe symbol
golpe = \markup { \postscript #"
0.2 setlinewidth
0 0 moveto
1 0 lineto
1 1 lineto
stroke
"\postscript #"
0.1       setlinewidth
-0.6 -0.1  moveto
-0.6  1.0 lineto
0.5  1.0 lineto
stroke
"}  

strokeUpGolpe = \markup { \column { \golpe \line { \strokeUp }}}
iUpGolpe = \markup { \column { \golpe \line { \small i } \line { \strokeUp }}}

% Strokes for all fingers
pUp   = \markup { \column { \small p \line { \strokeUp }}}
pDown = \markup { \column { \small p \line { \strokeDown }}}
iUp   = \markup { \column { \small i \line { \strokeUp }}}
iDown = \markup { \column { \small i \line { \strokeDown }}}
mUp   = \markup { \column { \small m \line { \strokeUp }}}
mDown = \markup { \column { \small m \line { \strokeDown }}}
aUp   = \markup { \column { \small a \line { \strokeUp }}}
aDown = \markup { \column { \small a \line { \strokeDown }}}
xUp   = \markup { \column { \small x \line { \strokeUp }}}
xDown = \markup { \column { \small x \line { \strokeDown }}}

% strokes for two fingers
piUP = \markup { \column { \small p \small i \line { \strokeUp }}}
piDOWN = \markup { \column { \small p \small i \line { \strokeDown }}}

% Just handy :)
tupletOff = {
  \once \override TupletNumber #'stencil = ##f
  \once \override TupletBracket #'stencil = ##f
}

tupletsOff = {
  \override TupletNumber #'stencil = ##f
  \override TupletBracket #'bracket-visibility = #'if-no-beam
}

tupletsOn = {
  \override TupletBracket #'bracket-visibility = #'default
  \revert TupletNumber #'stencil
}

headsOff = {
  \override TabNoteHead #'transparent = ##t
  \override NoteHead #'transparent = ##t
  \override NoteHead #'no-ledgers = ##t
}

headsOn = {
  \override TabNoteHead #'transparent = ##f
  \override NoteHead #'transparent = ##f
  \override NoteHead #'no-ledgers = ##f
}

%%%%%%%  Cut here ----- End 'flamenco.ly' 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

one = \markup { \finger 1 }
two = \markup { \finger 2 }
three = \markup { \finger 3 }
four = \markup { \finger 4 }
#(define RH rightHandFinger)

\score {
  <<
    \parallelMusic #'(voiceA voiceB voiceC voiceD) {   
      \override Staff.NoteHead  #'style = #'harmonic-mixed
      % Bar 1
      s4	    s8      c''2		    ees''8 ~|
      ees'8   g'8   ees'8   c''8 ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |

      % bar 2
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |
      \break

      % bar 3
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |


      % bar 4
      ees''4.		   c''2			    ees''8 ~|
      r8      g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      g1					    |
      s1 						    |

      % bar 5
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |
      \break

      % bar 6
      ees''4.		   c''2			    ees''8 ~|
      r8      g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      f1   				    |
      s1 						    |


      % bar 7
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |

      % bar 8
      ees''4.		   c''2			    ees''8 ~|
      r8      g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      ees1						    |
      s1 						    |

      % bar 9
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |
      \break

      % bar 10
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      c1                                                    |
      r1                                                    |

      % bar 11
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |

      % bar 12
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |
      \break

      % bar 13
      ees''4.              c''2                     ees''8 ~|
      ees'8   g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      s1 |
      \revert MultiMeasureRest #'staff-position { R1 }      |

      % bar 14
      ees''4.		   c''2			    ees''8 ~|
      r8      g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      g1						    |
      s1 						    |

      % bar 15
      ees''4.		   c''2			    ees''8 ~|
      r8      g'8   ees'8  c''8  ees'8  g'8  ees'8  ees''8  |
      f1						    |
      s1 						    |
      \break

      % bar 16
      ees''4.		   c''2			    \override Staff.NoteHead  #'style = #'default <ees'-^>8 ~ |
      r8      g'8   ees'8  c''8  ees'8  g'8  ees'8  \override Staff.NoteHead  #'style = #'default <ees'>8  |
      ees1						    |
      s1 						    |

      % bar 17
      \override Staff.NoteHead  #'style = #'default
      ees'8  c' ees <c'-^>4 c'8 ees <ees'-^> ~ |
      s1                            |
      c2          c2                |
      s1	                    |

      % bar 18
      \time 3/4
      \stemDown ees'2 b4\rest      |
      s2.           |
      r8 c'4 bes g8 |
      c4 bes, g,    |
      \break

      % bar 19
      b2\rest r8 <g'-^>8 ~     |
      s2. |
      r8 c'8 c' c' <ees-^>4         |
      c2 ees4         |

      % bar 20
      g'4 r4 <g'-^>8( ees') ~ |
      s2.        |
      c'4\rest c'8 c' r4                 |
      r8 c2 ~ c8          |

      % Bar 21
      ees'2.               |
      s2.                  |
      r8 c'4 bes g8        |
      c4 bes, g,           |
      \break

      % Bar 22
      b2\rest \override Staff.NoteHead  #'style = #'harmonic-mixed \ottava #1 g''8(  bes'' ~|
      s2.|
      \override Staff.NoteHead  #'style = #'default r8 g8 aes g ~ g4 |
      f,2 r4|

      % Bar 23
      \override Staff.NoteHead  #'style = #'harmonic-mixed <g'' bes''>2.) | 
      s2. |
      \override Staff.NoteHead  #'style = #'default r8 g8 aes g ~ g g ~ |
      f,2 g,4 |

      % Bar 24
      \ottava #0 b2\rest \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 ees'''8( c''' ~ |
      s2. |
      \override Staff.NoteHead #'style = #'default g8 g g g r4 |
      ees,2. |
      \break

      % Bar 25
      \override Staff.NoteHead  #'style = #'harmonic-mixed <ees''' c'''>2) \override Staff.NoteHead #'style = #'default \ottava #0 ees'8 c' |
      s2. |
      r8 g8 g g r4 |
      ees,2.|

      % Bar 26
      \revert MultiMeasureRest #'staff-position { R2. } |
      s2.|
      r8 g8 g g r8 g8 |
      ees,2 g,4 |

      % Bar 27
      b2\rest r8 <g'-^>8 ~     |
      s2. |
      r8 c'8 c' c' ees4         |
      c2 ees4         |
      \break

      % Bar 28
      g'4 r4 <g'-^>8( ees') ~ |
      s2.        |
      c'4\rest c'8 c' r4                 |
      r8 c2 ~ c8          |

      % Bar 29
      ees'2.               |
      s2.                  |
      r8 c'4 bes g8        |
      c4 bes, g,           |

      % Bar 30
      b2\rest \override Staff.NoteHead  #'style = #'harmonic-mixed \ottava #1 g''8(  bes'' ~|
      s2.|
      \override Staff.NoteHead  #'style = #'default r8 g8 aes g ~ g4 |
      f,2 r4|
      \break

      % Bar 31
      \override Staff.NoteHead  #'style = #'harmonic-mixed <g'' bes''>2.) | 
      s2. |
      \override Staff.NoteHead  #'style = #'default r8 g8 aes g ~ g g ~ |
      f,2 g,4 |

      % Bar 32
      \ottava #0 b2\rest \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 ees'''8( c''' ~ |
      s2. |
      \override Staff.NoteHead #'style = #'default g8 g g g r4 |
      ees,2. |

      % Bar 33
      \override Staff.NoteHead  #'style = #'harmonic-mixed <ees''' c'''>2) \override Staff.NoteHead #'style = #'default \ottava #0 ees'8 c' |
      s2. |
      r8 g8 g g r4 |
      ees,2.|

      % Bar 34
      \time 2/4
      <aes'-^>8 \glissando bes'( g'4) ~|
      s2|
      d4\rest g,|
      s2 |
      \break

      % Bar 35
      \time 3/4
      g'2 b8\rest <g'-^>8 ~ |
      s2.|
      r8 c'8 c' c' ees4 |
      c2.|

      % Bar 36
      \time 2/4
      g'2 |
      s2 |
      r8 c'8 c' c' |
      c2 |

      % Bar 37
      <aes'-^>8 \glissando bes'( ees'4) ~ |
      s2|
      d4\rest g,|
      s2 |
      \break

      % Bar 38
      \compoundMeter #'((1 4) (3 8))
      ees'4 b4\rest c'8 ~ |
      s2 s8 |
      \compoundMeter #'((1 4) (3 8))
      r8 g aes g r8 |
      f,2 r8 |

      % Bar 39
      \time 2/4
      c'8 b8\rest b8\rest c'8 |
      s2 |
      r8 aes[ g] r8 |
      f,2 |

      % Bar 40
      s2 |
      b8\rest g[ f' ees'] ~|
      f,2 |
      s2 |
      \break

      % Bar 41
      s2 |
      ees'8 g[ f' ees'] ~ |
      f,2 |
      s2 |

      % Bar 42
      s2 |
      ees'8 g[ f' g'] ~ |
      f,2 |
      s2 |

      % Bar 43
      \time 3/4
      s2.|
      g'2 f'8 g'8 ~|
      r4 g8 g r4|
      ees,8( bes,8 ~ <ees, bes,>2) |
      \break

      % Bar 44
      s2.|
      g'2 f'8 ees'8 ~ |
      r4 g8 g r4 |
      ees,8( bes,8 ~ <ees, bes,>2) |

      % Bar 45
      s2.|
      ees'2 b4\rest |
      r4 g8 g g g |
      ees,8( bes,8 ~ <ees, bes,>2) |

      % Bar 46 same as Bar 34
      \time 2/4
      <aes'-^>8 \glissando bes'( g'4) ~|
      s2|
      d4\rest g,|
      s2 |
      \break

      % Bar 47 same as Bar 35
      \time 3/4
      g'2 b8\rest g'8 ~ |
      s2.|
      r8 c'8 c' c' ees4 |
      c2.|

      % Bar 48 same as Bar 36
      \time 2/4
      g'2 |
      s2 |
      r8 c'8 c' c' |
      c2 |

      % Bar 49 same as Bar 37
      <aes'-^>8 \glissando bes'( ees'4) ~ |
      s2|
      d4\rest g,|
      s2 |
      \break

      % Bar 50 same as Bar 38
      \compoundMeter #'((1 4) (3 8))
      ees'4 b4\rest c'8 ~ |
      s2 s8 |
      \compoundMeter #'((1 4) (3 8))
      r8 g aes g r8 |
      f,2 r8 |

      % Bar 51 same as Bar 39
      \time 2/4
      c'8 b8\rest b8\rest c'8 |
      s2 |
      r8 aes[ g] r8 |
      f,2 |

      % Bar 52 same as Bar 40
      s2 |
      b8\rest g[ f' ees'] ~|
      f,2 |
      s2 |
      \break

      % Bar 53 same as Bar 41
      s2 |
      ees'8 g[ f' ees'] ~ |
      f,2 |
      s2 |

      % Bar 54 same as Bar 42
      s2 |
      ees'8 g[ f' g'] ~ |
      f,2 |
      s2 |

      % Bar 55 same as Bar 43
      \time 3/4
      s2.|
      g'2 f'8 g'8 ~|
      r4 g8 g r4|
      ees,8( bes,8 ~ <ees, bes,>2) |
      \break

      % Bar 56 same as Bar 44
      s2.|
      g'2 f'8 ees'8 ~ |
      r4 g8 g r4 |
      ees,8( bes,8 ~ <ees, bes,>2) |

      % Bar 57 same as Bar 45
      s2.|
      ees'2 b4\rest |
      r4 g8 g g g |
      ees,8( bes,8 ~ <ees, bes,>2) |

      % Bar 58
      R2.|
      s2.|
      r4 g8 g g g |
      ees,8( bes,8 ~ <ees, bes,>2) |
      \break

      % Bar 59 same as Bar 58
      R2.|
      s2.|
      r4 g8 g g g |
      ees,8( bes,8 ~ <ees, bes,>2) |

      % Bar 60
      b4\rest b8\rest <ees'-^>8( f') \glissando g' ~ |
      s2.|
      r4 g2 |
      ees,8( bes,8 ~ <ees, bes,>2) |

      % Bar 61
      g'2 b8\rest g'8 ~ |
      s2.|
      r8 c' c' c' ees4 |
      c2 ees4 |
      \break

      % Bar 62
      g'4 b8\rest aes' \glissando bes' \acciaccatura bes' \glissando aes' ~ |
      s2. |
      r8 c' c' ~ c'4. |
      c2. |

      % Bar 63
      aes'2 c'8( aes' ~ |
      s2. |
      r8 g aes g ~ g4 |
      f,2. |

      % Bar 64 
      <aes' c'>4.) aes'8 \glissando g' g' ~ |
      s2. |
      r8 aes g2 |
      f,2. |
      \break

      % Bar 65
      g'2 c'8( g'8 ~ |
      s2. |
      r4 g8 g8 ~ g4 |
      ees,8( bes,~ <ees, bes,>2) |

      % Bar 66 same as Bar 60
      <g' c'>4) b8\rest <ees'-^>8( f') \glissando g' ~ |
      s2.|
      r4 g2 |
      ees,8( bes,8 ~ <ees, bes,>2) |

      % Bar 67 same as Bar 61
      g'2 b8\rest g'8 ~ |
      s2.|
      r8 c' c' c' ees4 |
      c2 ees4 |
      \break

      % Bar 68 same as Bar 62
      g'4 b8\rest aes' \glissando bes' \acciaccatura bes' \glissando aes' ~ |
      s2. |
      r8 c' c' ~ c'4. |
      c2. |

      % Bar 69 same as Bar 63
      aes'2 <c'>8( aes' ~ |
      s2. |
      r8 g aes g ~ g4 |
      f,2. |

      % Bar 70 same as Bar 64
      <aes' c'>4.) aes'8 \glissando g' g' ~ |
      s2. |
      r8 aes g2 |
      f,2. |
      \break

      % Bar 71 same as Bar 65
      g'2 c'8( g'8 ~ |
      s2. |
      r4 g8 g8 ~ g4 |
      ees,8( bes,~ <ees, bes,>2) |

      % Bar 72
      \time 4/4
      <g' c'>2) \acciaccatura aes'8 \glissando bes'4 \acciaccatura aes'8 \glissando bes'4 ~ |
      s1 |
      r4 g8 g8 ~ g2 |
      ees,8( bes,~ <ees, bes,>4) r2 |

      % Bar 73
      \time 3/4
      bes'2 ~ bes'8 bes'8 ~ |
      s2.|
      r8 g d' g c'4 |
      g,2. |
      \break

      % Bar 74
      bes'2 <bes'\staccato>4 |
      s2.|
      r8 g d' g ~ g4 |
      g,2. |

      % Bar 75
      aes'2.|
      s2.|
      r4 r8 g8 d' g |
      aes,2. ~|

      % Bar 76
      aes'8 \glissando g' g'2 ~ |
      s2.|
      s2.|
      \stemUp aes,2. \stemDown | 
      \break

      % Bar 77
      \time 4/4
      g'2 \stemDown \acciaccatura ees'8 \glissando f'4 \acciaccatura d'8 \glissando f'4 ~ |
      s1|
      r8 g d' g ~ g2 |
      aes,2 r2 |

      % Bar 78
      \stemUp f'2 \override Staff.NoteHead  #'style = #'harmonic-mixed g'4 \override Staff.NoteHead  #'style = #'default ees'4 ~ |
      r8 ees'2. ~ ees'8 |
      r4 ees2. |
      bes,1 |

      % Bar 79
      \compoundMeter #'((1 4) (3 8))
      ees'2 ~ ees'8 |
      r8 ees'8 d' ees'8 c'8 ~ |
      \compoundMeter #'((1 4) (3 8))
      bes,2 ~ bes,8  |
      s2 s8 |
      \break

      % Bar 80
      \time 2/4
      s2|
      c'8 d' ees' c' |
      bes,2 |
      s2 |

      % Bar 81
      s2|
      \acciaccatura f'8 \glissando g'4 \acciaccatura f'8 \glissando g'4 |
      s2|
      R2|

      % Bar 82 same as Bar 73
      \time 3/4
      s2.|
      bes'2 ~ bes'8 bes'8 ~ |
      r8 g d' g c'4 |
      g,2. |
      \break

      % Bar 83 same as Bar 74
      s2.|
      bes'2 bes'4 |
      r8 g d' g ~ g4 |
      g,2. |

      % Bar 84 same as Bar 75
      s2.|
      aes'2.|
      r4 r8 g8 d' g |
      aes,2. ~|

      % Bar 85 same as Bar 76
      s2.|
      aes'8 \glissando g' g'2 ~ |
      s2.|
      \stemUp aes,2. \stemDown | 
      \break

      % Bar 86 same as Bar 77
      \time 4/4
      s2 \stemDown \acciaccatura ees'8 \glissando f'4 \acciaccatura d'8 \glissando f'4 ~ |
      g'2 s2|
      r8 g d' g ~ g2 |
      aes,2 r2 |

      % Bar 87 same as Bar 78
      \stemUp f'2 \override Staff.NoteHead  #'style = #'harmonic-mixed g'4 \override Staff.NoteHead  #'style = #'default ees'4 ~ |
      r8 ees'2. ~ ees'8 |
      r4 ees2. |
      bes,1 |

      % Bar 88 same as Bar 79
      \compoundMeter #'((1 4) (3 8))
      ees'2 ~ ees'8 |
      r8 ees'8 d' ees'8 c'8 ~ |
      \compoundMeter #'((1 4) (3 8))
      bes,2 ~ bes,8  |
      s2 s8 |
      \break

      % Bar 89 same as Bar 80
      \time 2/4
      s2|
      c'8 d' ees' c' |
      bes,2 |
      s2 |

      % Bar 90
      \time 4/4
      r4 r8 c'2 ees'8 ~ |
      r8 g4 c'4 g4 ees'8 ~ |
      \stemDown d'4 d' d' d' |
      s1|

      % Bar 91
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      d'4 d' d' d' |
      s1|
      \break

      % Bar 92
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemUp r4 d' d' d' |
      aes,1 |

      % Bar 93
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemDown d'4 d' d' d' |
      s1|

      % Bar 94
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemUp r4 d' d' d' |
      g,1 |
      \break

      % Bar 95
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemDown d'4 d' d' d' |
      s1|

      % Bar 96
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemUp r4 d' d' d' |
      g,1|

      % Bar 97
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      r4 d' d' d' |
      f,1|
      \break

      % Bar 98
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemDown d'4 d' d' d' |
      s1|

      % Bar 99
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemUp r4 d' d' d' |
      g,1|

      % Bar 100
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      r4 d' d' d' |
      ees,1|
      \break

      % Bar 101
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemDown d'4 d' d' d' |
      s1|

      % Bar 102
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemUp r4 d' d' d' |
      g,1|

      % Bar 103
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      r4 ees'4 ees' ees' |
      c,1 |
      \break

      % Bar 104
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemDown ees'4 ees' ees' ees' |
      s1 |

      % Bar 105
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      d'4 d' d' d' |
      s1|

      % Bar 106
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      bes4 bes bes bes |
      s1 |
      \break

      % Bar 107
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      aes4 aes aes aes |
      s1 |

      % bar 108
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      g4 g g g |
      s1 |

      % Bar 109 
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      \stemUp r4 g g g |
      ees,1 |
      \break

      % Bar 110
      ees'4. c'2 ees'8 ~ |
      ees'8 g4 c'4 g4 ees'8 ~ |
      r4 g g g |
      ees,1 |

      % Bar 111
      ees'2 r8 c'4. ~ |
      r8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |

      % Bar 112
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |
      \break

      % Bar 113 similar to Bar 111
      ees'2 r8 c'4. ~ |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |

      % Bar 114 same as Bar 112
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |

      % Bar 115
      ees'2 r8 c'4. ~ |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 g4 g2 |
      ees,1 ~ |
      \break

      % Bar 116
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      g4 g2 g8 r8 |
      ees,1 |

      % Bar 117 similar to bar 115
      ees'2 r8 c'4. ~ |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 g4 g2 |
      ees,1 ~ |

      % Bar 118 similar to Bar 116
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      g4 g2 g8 r8 |
      ees,1 |
      \break

      % Bar 119 same as Bar 113
      ees'2 r8 c'4. ~ |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |

      % Bar 120 same as Bar 114
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |

      % Bar 121 same as Bar 113
      ees'2 r8 c'4. ~ |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |
      \break

      % Bar 122 same as Bar 114
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |

      % Bar 123 same as Bar 117
      ees'2 r8 c'4. ~ |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 g4 g2 |
      ees,1 ~ |

      % Bar 124 same as Bar 118
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      g4 g2 g8 r8 |
      ees,1 |
      \break

      % Bar 125 same as Bar 117
      ees'2 r8 c'4. ~ |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 g4 g2 |
      ees,1 ~ |

      % Bar 126 same as Bar 118
      c'4. ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      g4 g2 g8 r8 |
      ees,1 |

      % Bar 127 similar to 113
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |      
      \break

      % Bar 128 similar to 114
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |

      % Bar 129 same as 127
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |      

      % Bar 130 same as Bar 128
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |
      \break

      % Bar 131 similar to 117
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 g4 g2 |
      ees,1 ~ |

      % Bar 132 similar to 118
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      g4 g2 g8 r8 |
      ees,1 |      

      % Bar 133 same as Bar 131
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 g4 g2 |
      ees,1 ~ |
      \break

      % Bar 134 same as Bar 132
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      g4 g2 g8 r8 |
      ees,1 |      

      % Bar 135 same as Bar 127
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |      

      % Bar 136 same as Bar 128
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |
      \break

      % Bar 137 same as Bar 127
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 aes4 aes2 |
      f,1 ~ |      

      % Bar 138 same as Bar 128
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~|
      aes4 aes2 aes8 r8|
      f,1 |

      % Bar 139
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 bes4 bes2 |
      g,1 ~ |
      \break

      % Bar 140
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      bes4 bes2 bes8 r8 |
      g,1 |

      % Bar 141 same as Bar 137
      ees'2 r8 <c'-.>16 r16 r4 |
      g8 g4 g8 r4 r8 g8 ~ |
      r4 bes4 bes2 |
      g,1 ~ |

      % Bar 142 same as Bar 138
      r4 r8 ees'2 ~ ees'8 ~ |
      g8 g8 r4 r8 g4 g8 ~ |
      bes4 bes2 bes8 r8 |
      g,1 |
      \break

      % Bar 143 
      ees'2 r8 \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 <c'' ees''>4. ~ |
      g8 g4 g8 r4 r8 \override Staff.NoteHead #'style = #'default \ottava #0 g8 ~ |
      r4 c'4 c'2 |
      aes,1 ~ |

      % Bar 144
      \once \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 <c'' ees''>4 r8 \ottava #0 ees'2 ~ ees'8 ~ |
      r8 \ottava #0 g8 r4 r8 g4 g8 ~ |
      c'4 c'2 c'8 r8 |
      aes,1 |

      % Bar 145 same as Bar 143
      ees'2 r8 \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 <c'' ees''>4. ~ |
      g8 g4 g8 r4 r8 \override Staff.NoteHead #'style = #'default \ottava #0 g8 ~ |
      r4 c'4 c'2 |
      aes,1 ~ |
      \break

      % Bar 146 same as Bar 144
      \once \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 <c'' ees''>4 r8 \ottava #0 ees'2 ~ ees'8 ~ |
      r8 \ottava #0 g8 r4 r8 g4 g8 ~ |
      c'4 c'2 c'8 r8 |
      aes,1 | 

      % Bar 147
      ees'2 r8 \ottava #1 \once \override Staff.NoteHead #'style = #'harmonic-mixed <c'' ees''>4. ~ |
      g8 g4 g8 r4 r8 \ottava #0 g8 ~ |
      r4 d'4 d'2 |
      bes,1 ~ |

      % Bar 148 
      \ottava #1 \once \override Staff.NoteHead #'style = #'harmonic-mixed <c'' ees''>4 r8 \ottava #0 ees'2 ~ ees'8 ~ |
      r8 \ottava #0 g8 r4 r8 g4 g8 ~ |
      d'4 d'2 d'8 r8 |
      bes,1 |
      \break

      % Bar 149 same as Bar 147
      ees'2 r8 \ottava #1 \once \override Staff.NoteHead #'style = #'harmonic-mixed <c'' ees''>4. ~ |
      g8 g4 g8 r4 r8 \ottava #0 g8 ~ |
      r4 d'4 d'2 |
      bes,1 ~ |

      % Bar 150 same as Bar 148 
      \ottava #1 \once \override Staff.NoteHead #'style = #'harmonic-mixed <c'' ees''>4 r8 \ottava #0 ees'2 ~ ees'8 ~ |
      r8 \ottava #0 g8 r4 r8 g4 g8 ~ |
      d'4 d'2 d'8 r8 |
      bes,1 |

      % Bar 151
      \ottava #1 \override Staff.NoteHead #'style = #'harmonic-mixed <c'' ees''>2 ~  <c'' ees''>2 |
      g' ~ g'2 |
      \override Staff.NoteHead #'style = #'harmonic-mixed ees2 ~ ees2 |
      <c, g,>2 ~ <c, g,>2 |


    }
    \new GrandStaff <<

      \new Staff << \override Score.MetronomeMark #'padding = #3 
      \tempo 4 = 128
      \clef "treble_8" \key c\minor \voiceA \\ \voiceB >>
      \new Staff << \clef bass \key c\minor \voiceC \\ \voiceD >>
    >>


    \new TabStaff {
      \set Staff.stringTunings = \stringTuning <c, g, ees g c' ees'>      
      \tabFullNotation
      \stemDown
      \override Beam #'damping = #100000
      \override StrokeFinger
      #'extra-offset = #'(0.0 . -0.5)
      \set strokeFingerOrientations = #'(left)
      % Bar 1

      \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
      \override TextSpanner #'(bound-details left text) =  \markup { \finger "4" } 

      \set strokeFingerOrientations = #'(left)
      \harmonicByRatio #1/2 <ees-\RH #1 >8\4\startTextSpan \harmonicByRatio #1/2 <g-\RH #2 >8\3 \harmonicByRatio #1/2 <ees-\RH #1 >8\4 \harmonicByRatio #1/2 <c-\RH #3 >8\2
      \harmonicByRatio #1/2 <ees-\RH #1 >8\4 \harmonicByRatio #1/2 <g-\RH #2 >8\3 \harmonicByRatio #1/2 <ees-\RH #1 >8\4 \harmonicByRatio #1/2 <ees-\RH #4 >\1 |
      % Bar 2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |
      % Bar 3
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |

      % Bar 4
      \harmonicByRatio #1/2 <g-\RH #1 >8\5   \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |
      % Bar 5
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1\stopTextSpan |
      % Bar 6
      <f-1-\RH #1 >8\5   			   \harmonicByRatio #1/2 g8\3\startTextSpan \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |

      % Bar 7
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1\stopTextSpan |
      % Bar 8
      <ees-1-\RH #1 >\5   			   \harmonicByRatio #1/2 g8\3\startTextSpan \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |
      % Bar 9
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |

      % Bar 10
      \harmonicByRatio #1/2 <ees-\RH #1 >8\6 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |
      % Bar 11
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |
      % Bar 12
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |

      % Bar 13
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1 |
      % Bar 14
      \harmonicByRatio #1/2 g8\5   \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1\stopTextSpan |
      % Bar 15
      <f-1-\RH #1 >8\5   			   \harmonicByRatio #1/2 g8\3\startTextSpan \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 ees\1\stopTextSpan |
      % Bar 16
      <ees-1-\RH #1 >8\5   			   \harmonicByRatio #1/2 g8\3\startTextSpan \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 c8\2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g8\3 \harmonicByRatio #1/2 ees8\4\stopTextSpan <ees'-^-\RH #4 >\1 ~ |

      % Bar 17
      \set strokeFingerOrientations = #'(left) 
      <ees' c-2-\RH #1 >8 <c'-3-\RH #2 >\3 <ees-\RH #1 > <c'-^-\RH #3 > <c-\RH #1 >\5 <c'-\RH #2 >\3 <ees-\RH #1 >\4 <ees'-^-\RH #3 >\1 ~ |
      % Bar 18
      <c-\RH #1 >\5[ <c'-\RH #2 >\3] <bes,-2-\RH #1 >\5[ <bes-3-\RH #3 >\3] <g,-\RH #1 >\5[ <g-\RH #3 >\3] | 
      % Bar 19
      <c-2-\RH #1 >[ <c'-3-\RH #2 >\3] <c'-\RH #3 >\2[ <c'-\RH #2 >\3] <ees-\RH #1 >\4[ \once \override Fingering
      #'extra-offset = #'(0.0 . 1.0)<g'-^-1-\RH #3 >\1] ~ |
      % Bar 20
      g'\1[ <c-\RH #1 >\5] <c'-\RH #2 >\3[ <c'-\RH #3 >\2] <g'-^-\RH #4 >\1([ ees'\1)] ~ | 
      % Bar 21
      <ees' c>[ c'\3] bes,\5[ bes\3] g,\5[ g\3] |

      % Bar 22
      <f,-2-\RH #1 >8\6[ <g-\RH #2 >\3] <aes-3-\RH #1 >\4[ <g-\RH #1 >\3] \harmonicByRatio #1/3 <g-4-\RH #3 >\2[ \harmonicByRatio #1/3 <bes-4-\RH #4 >\1] |
      % Bar 23
      <f,-\RH #1 >\6[ <g-\RH #2 >\3] <aes-\RH #1 >\4[ <g-\RH #2 >\3] <g,-\RH #1 >\5[ <g-\RH #2 >\3] |
      % Bar 24
      <ees,-1-\RH #1 >\6[ <g-\RH #2 >\3] <g-2-\RH #1 >\4[ <g-\RH #2 >\3] \harmonicByRatio #1/4 <ees-4-\RH #4 >\1[ \harmonicByRatio #1/4 <c-4-\RH #3 >\2] |

      % Bar 25
      ees,\6[ g\3] g\4[ g\3] ees'\1[ c'\2] |
      % Bar 26 
      ees,\6[ g\3] g\4[ g\3] <g,-\RH #1 >\5[ <g-\RH #2 >\3] |
      % Bar 27
      c\5[ c'\3] c'\2[ c'\3] ees\4[ <g'-^>\1] ~ |

      % Bar 28
      g'\1[ c\5] c'\3[ c'\2] <g'-^>\1([ ees'\1)] ~ |
      % Bar 29
      c\5[ c'\3] bes,\5[ bes\3] g,\5[ g\3] |
      % Bar 30
      f,8\6[ g\3] aes\4[ g\3] \harmonicByRatio #1/3 g\2[ \harmonicByRatio #1/3 bes\1] |

      % Bar 31
      f,\6[  g\3] aes\4[ g\3] g,\5[ g\3] |
      % Bar 32
      ees,\6[ g\3] g\4[ g\3] \harmonicByRatio #1/4 ees\1[ \harmonicByRatio #1/4 c\2] |
      % Bar 33
      ees,\6[ g\3] g\4[ g\3] ees'\1[ c'\2] |
      % Bar 34
      \once \override Fingering
      #'extra-offset = #'(0.0 . 0.5) <aes'-4-^-\RH #3 >\1[ \glissando bes'\1(] \once \override Fingering
      #'extra-offset = #'(0.0 . 0.5)<g,-\RH #1 g'-1>4) ~ |

      % Bar 35
      <g' c>8[ c'\3] c'\2[ c'\3] ees\4[ <g'-^>\1] ~ |
      % Bar 36
      <g' c>8[ c'\3] c'\2[ c'\3] |
      % Bar 37
      \once \override Fingering
      #'extra-offset = #'(0.0 . 0.5) <aes'-4-^-\RH #3 >\1[ \glissando bes'\1(] <ees' g,-\RH #1 >4) ~ |

      % Bar 38
      \compoundMeter #'((1 4) (3 8))
      <ees' f,-2-\RH #1 >8[ <g-\RH #2 >\3] <aes-\RH #1 >\4[ <g-\RH #2 >\3 <c'-\RH #3 >\2] ~ |
      % Bar 39
      <c' f,-\RH #1 >8[ <aes-\RH #1 >\4 <g-\RH #2 >\3 <c'-\RH #3 >\2] |
      % Bar 40
      <f,-\RH #1 >\6 <g-\RH #2 >\3 <f'-4-\RH #3 >\2 <ees'-\RH #4 >\1 ~ |

      % Bar 41
      <ees' f,>8 g\3 f'\2 ees'\1 ~ |
      % Bar 42
      <ees' f,-\RH #1 >8 <g-\RH #2 >\3 <f'-\RH #3 >\2 <g'-3-\RH #4 >\1 ~ |
      % Bar 43
      <g' ees,-1-\RH #1 >8[ <bes,-1-\RH #1 >\5] <g-2-\RH #1 >\4[ <g-\RH #2 >\3] <f'-4-\RH #3 >\2[ <g'-3-\RH #4 >\1] ~ |

      % Bar 44
      <g' ees,-\RH #1 >8[ <bes,-\RH #1 >\5] <g-\RH #1 >\4[ <g-\RH #2 >\3] <f'-\RH #3 >\2[ <ees'-\RH #4 >\1] ~ |
      % Bar 45
      <ees' ees,-\RH #1 >8[ <bes,-\RH #1 >\5] <g-\RH #1 >\4[ <g-\RH #2 >\3] <g-\RH #1 >\4[ <g-\RH #2 >\3] |
      % Bar 46 same as Bar 34
      aes'\1[ \glissando bes'\1(] <g, g'>4) ~ |

      % Bar 47 same as Bar 35
      <g' c>8[ c'\3] c'\2[ c'\3] ees\4[ g'\1] ~ |
      % Bar 48 same as Bar 36
      <g' c>8 c'\3 c'\2 c'\3 |
      % Bar 49 same as Bar 37
      aes'\1 \glissando bes'\1( <g, ees'>4) ~ |

      % Bar 50 same as Bar 38
      \compoundMeter #'((1 4) (3 8))
      <ees' f,>8[ g\3] aes\4[ g\3 c'\2] ~ |
      % Bar 51 same as Bar 39
      <c' f,>8[ aes\4 g\3 c'\2] |
      % Bar 52 same as Bar 40
      f,\6 g\3 f'\2 ees'\1 ~ |

      % Bar 53 same as Bar 41
      <ees' f,>8 g\3 f'\2 ees'\1 ~ |
      % Bar 54 same as Bar 42
      <ees' f,>8 g\3 f'\2 g'\1 ~ |
      % Bar 55 same as Bar 43
      <g' ees,>8[ bes,\5] g\4[ g\3] f'\2[ g'\1] ~ |

      % Bar 56 same as Bar 44
      <g' ees,>8[ bes,\5] g\4[ g\3] f'\2[ ees'\1] ~ |
      % Bar 57 same as Bar 45
      <ees' ees,>8[ bes,\5] g\4[ g\3] g\4[ g\3] |
      % Bar 58
      ees,8\6[ bes,\5] g\4[ g\3] g\4[ g\3] |

      % Bar 59 same as Bar 58
      ees,8\6[ bes,\5] g\4[ g\3] g\4[ g\3] |
      % Bar 60
      <ees,-\RH #1 >8\6[ <bes,-\RH #1 >\5] <g-\RH #1 >\4[ <ees'-^-\RH #3 >\1(] <f'-1>\1)[ \glissando <g'-1>\1] ~ |
      % Bar 61
      <g' c>8[ c'\3] c'\2[ c'\3] ees\4[ g'\1] ~ | 

      % Bar 62
      <g' c-\RH #1 >8[ <c'-\RH #2 >\3] <c'-\RH #3 >\2[ <aes'-4-\RH #4 >\1] \glissando bes'\1  \acciaccatura <bes'-\RH #3 >\1 \glissando <aes'-4>\1~ |
      % Bar 63
      <aes' f,-\RH #1 >8[ <g-\RH #2 >\3] <aes-\RH #1 >\4[ <g-\RH #2 >\3] <c'-\RH #3 >\2[ <aes'-\RH #4 >\1] ~ |
      % Bar 64 
      <aes' f,-\RH #1 >8[ <g-\RH #2 >\3] <aes-\RH #1 >\4[ <aes'-\RH #3 >\1] \glissando <g'-4>\1 <g'-\RH #4 >\1 ~|

      % Bar 65
      <g' ees,-1-\RH #1 >8[ <bes,-4-\RH #1 >\5] <g-2-\RH #1 >\4[ <g-\RH #2 >\3] <c'-\RH #3 >\2 \once \override Fingering
      #'extra-offset = #'(0.0 . 0.5) <g'-4-\RH #4 >\1 ~ |
      % Bar 66
      <g' ees,>8[ bes,\5] g\4[ <ees'-^>\1(] f'\1)[ \glissando g'\1] ~ |
      % Bar 67 same as Bar 61
      <g' c>8[ c'\3] c'\2[ c'\3] ees\4[ g'\1] ~ | 

      % Bar 68 same as Bar 62
      <g' c>8[ c'\3] c'\2[ aes'\1] \glissando bes'\1 \acciaccatura bes'\1 \glissando aes'\1~ |
      % Bar 69 same as Bar 63
      <aes' f,>8[ g\3] aes\4[ g\3] c'\2[ aes'\1] ~ |
      % Bar 70 same as Bar 64
      <aes' f,>8[ g\3] aes\4[ aes'\1] \glissando g'\1 g'\1 ~|

      % Bar 71 same as Bar 65
      <g' ees,>8[ bes,\5] g\4[ g\3] c'\2 g'\1 ~ |
      % Bar 72 
      <g' ees,>8 bes,\5 g\4 g\3 \acciaccatura <aes'-\RH #3 >8\1 \glissando <bes'-4>4\1 \acciaccatura <aes'-\RH #4 >8\1 \glissando <bes'-1>4\1 ~ |
      % Bar 73
      \once \override Fingering
      #'extra-offset = #'(-0.5 . 0.0)      <bes' g,_2-\RH #1 >8 <g-\RH #2 >\3 <d'-4-\RH #1 >\4 <g-\RH #2 >\3 <c'-\RH #3 >\2 <bes'-1-\RH #4 >\1 ~ |

      % Bar 74
      <bes' g,-\RH #1 >8 <g-\RH #2 >\3 <d'-\RH #1 >\4 <g-\RH #2 >\3 <bes'-.-\RH #3 >4\1 |
      % Bar 75 
      \once \override Fingering
      #'extra-offset = #'(-0.5 . 0.0)      <aes'-1-\RH #3 aes,-2-\RH #1 >4.\2\6 <g-\RH #2 >8\3 <d'-4-\RH #1 >\4 <g-\RH #2 >\3 |
      % Bar 76
      <aes'-\RH #3 >8\2 \glissando <g'-1>\2 <g'-\RH #3 >4\2 ~ g'\2 ~ |

      % Bar 77
      \time 4/4
      <g' aes,-\RH #1 >8\2\6 <g-\RH #2 >\3 <d'-\RH #1 >\4 <g-\RH #2 >\3 \acciaccatura <ees'-\RH #3 >8\2 \glissando <f'-1>4\2 \acciaccatura <d'-\RH #2 >8\3 \glissando <f'-3>4\3 ~ |
      % Bar 78
      <f' bes,-2-\RH #1 >8\3\6 <ees'-\RH #4 >\1 <ees-\RH #1 >4\4 \harmonicByRatio #1/2 <g-4-\RH #2 >4\3 <ees'-1-\RH #2 >\3 ~ |
      % Bar 79
      \compoundMeter #'((1 4) (3 8))
      <ees' bes,-\RH #1 >8\3\6 <ees'-\RH #4 >\1 <d'-4-\RH #1 >\4 <ees'-1-\RH #2 >\3 <c'-\RH #3 >\2 ~ |

      % Bar 80
      \time 2/4
      <c' bes,-\RH #1 >8\2\6 <d'-\RH #1 >\4 <ees'-\RH #2 >\3 <c'-\RH #3 >\2 |
      % Bar 81
      \acciaccatura <aes'-\RH #3 >8\1 \glissando <bes'-4>4\1 \acciaccatura <aes'-\RH #2 >8\1 \glissando <bes'-1>4\1 ~ |
      % Bar 82 same as Bar 73
      \time 3/4
      <bes' g,>8\1\6 g\3 d'\4 g\3 c'\2 bes'\1 ~ |

      % Bar 83 same as Bar 74
      <bes' g,>8\1\6 g\3 d'\4 g\3 bes'4\1 |
      % Bar 84 same as Bar 75
      <aes' aes,>4.\2\6 g8\3 d'\4 g\3 |
      % Bar 85 Same as Bar 76
      aes'8\2 \glissando g'\2 g'4\2 ~ g'\2 ~ |

      % Bar 86 same as Bar 77
      \time 4/4
      <g' aes,>8\2\6 g\3 d'\4 g\3 \acciaccatura ees'8\2 \glissando f'4\2 \acciaccatura d'8\3 \glissando f'4\3 ~ |
      % Bar 87 same as Bar 78
      <f' bes,>8\3\6 ees'\1 ees4\4 \harmonicByRatio #1/2 g4\3 ees'\3 ~ |
      % Bar 88 same as Bar 79
      \compoundMeter #'((1 4) (3 8))
      <ees' bes,>8\3\6 ees'\1 d'\4 ees'\3 c'\2 ~ |

      % Bar 89 same as Bar 80
      \time 2/4
      <c' bes,>8\2\6 d'\4 ees'\3 c'\2 |
      \bar "||"
      % Bar 90
      \time 4/4
      <d'-4-\RH #1 >8\4 <g-\RH #2 >\3 <d'-\RH #1 >\4 <c'-\RH #3 >\2 <d'-\RH #1 >\4 <g-\RH #2 >\3 <d'-\RH #1 >\4 <ees'-\RH #4 >\1 |
      % Bar 91
      d'8\4 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |

      % Bar 92
      <aes,-1-\RH #1 >8\6 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 93
      d'8\4 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 94
      <g,-1-\RH #1 >8\6 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |

      % Bar 95
      d'8\4 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 96
      <g,-\RH #1 >8\5 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 97
      <f,-1-\RH #1 >8\6 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |

      % Bar 98
      d'8\4 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 99
      <g,-\RH #1 >8\5 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 100
      <ees,-5-\RH #1 >8\6 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |

      % Bar 101
      d'8\4 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 102
      <g,-\RH #1 >8\5 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 103
      <c,-\RH #1 >\6 g\3 <ees'-4>\4 c'\2 ees'\4 g\3 ees'\4 ees'\1 |

      % Bar 104
      ees'\4 g\3 ees'\4 c'\2 ees'\4 g\3 ees'\4 ees'\1 |
      % Bar 105
      <d'-3>8\4 g\3 d'\4 c'\2 d'\4 g\3 d'\4 ees'\1 |
      % Bar 106
      <bes-3>\4 g\3 bes\4 c'\2 bes\4 g\3 bes\4 ees'\1 |

      % Bar 107
      <aes-1>\4 g\3 aes\4 c'\2 aes\4 g\3 aes\4 ees'\1 |
      % Bar 108
      <g-2>\4 g\3 g\4 c'\2 g\4 g\3 g\4 ees'\1 |
      % Bar 109
      <ees,-1-\RH #1 >\6 g\3 g\4 c'\2 g\4 g\3 g\4 ees'\1 |

      % Bar 110
      ees,\6 g\3 g\4 c'\2 g\4 g\3 g\4 ees'\1 ~ |
      \bar "||"
      % Bar 111
      <ees' f,-2-\RH #1 >8\1\6 <g-\RH #2 >\3 <aes-3-\RH #1 >\4 <g-\RH #2 >\3 <aes-\RH #1 >\4 <c'-\RH #3 >4\2 <g-\RH #2 >8\3 | 
      % Bar 112
      <aes-\RH #1 >\4 <g-\RH #2 >\3 <aes-\RH #1 >\4 <ees'-\RH #4 >\1 ~ ees'\1 <g-\RH #2 >8\3 <aes-\RH #1 >\4 <g-\RH #2 >\3 |

      % Bar 113 similar to Bar 111
      f,8\6 g\3 aes\4 g\3 aes\4 c'4\2 g8\3  |
      % Bar 114 similar to Bar 112
      aes\4 g\3 aes\4 ees'\1 ~ ees'\1 g8\3 aes\4 g\3 |
      % Bar 115
      <ees,-1-\RH #1 >8\6 <g-\RH #2 >\3 <g-3-\RH #1 >\4 <g-\RH #2 >\3 <g-\RH #1 >\4 <c'-\RH #3 >4\2 <g-\RH #2 >8\3 | 

      % Bar 116
      <g-\RH #1 >8\4 <g-\RH #2 >\3 <g-\RH #1 >\4 <ees'-\RH #4 >\1 ~ ees'\1 <g-\RH #2 >\3 <g-\RH #1 >\4 <g-\RH #2 >\3 |
      % Bar 117
      ees,8\6 g\3 g\4 g\3 g\4 c'4\2 g8\3 |
      % Bar 118
      g\4 g\3 g\4 ees'\1 ~ ees'\1 g\3 g\4 g\3 |

      % Bar 119 same as Bar 113
      f,8\6 g\3 aes\4 g\3 aes\4 c'4\2 g8\3  |
      % Bar 120 same as Bar 114
      aes\4 g\3 aes\4 ees'\1 ~ ees'\1 g8\3 aes\4 g\3 |
      % Bar 121 same as Bar 113
      f,8\6 g\3 aes\4 g\3 aes\4 c'4\2 g8\3  |

      % Bar 122 same as Bar 114
      aes\4 g\3 aes\4 ees'\1 ~ ees'\1 g8\3 aes\4 g\3 |
      % Bar 123 same as Bar 117
      ees,8\6 g\3 g\4 g\3 g\4 c'4\2 g8\3 |
      % Bar 124 same as Bar 118
      g\4 g\3 g\4 ees'\1 ~ ees'\1 g\3 g\4 g\3 |

      % Bar 125 same as Bar 117
      ees,8\6 g\3 g\4 g\3 g\4 c'4\2 g8\3 |
      % Bar 126 same as Bar 118
      g\4 g\3 g\4 ees'\1 ~ ees'\1 g\3 g\4 g\3 |
      % Bar 127
      f,8\6 g\3 aes\4 g\3 aes\4 <c'-.>4\2 g8\3 |

      % Bar 128
      aes\4 g\3 aes\4 ees'\1 ~ ees'\1 g8\3 aes\4 g\3 |
      % Bar 129 same as Bar 127
      f,8\6 g\3 aes\4 g\3 aes\4 <c'-.>4\2 g8\3 |
      % Bar 130 same as Bar 128
      aes\4 g\3 aes\4 ees'\1 ~ ees'\1 g8\3 aes\4 g\3 |

      % Bar 131
      ees,8\6 g\3 g\4 g\3 g\4 <c'-.>4\2 g8\3 |       
      % Bar 132
      g\4 g\3 g\4 ees'\1 ~ ees'\1 g\3 g\4 g\3 |
      % Bar 133 same as Bar 131
      ees,8\6 g\3 g\4 g\3 g\4 <c'-.>4\2 g8\3 |       

      % Bar 134 same as Bar 132
      g\4 g\3 g\4 ees'\1 ~ ees'\1 g\3 g\4 g\3 |
      % Bar 135 same as Bar 127
      f,8\6 g\3 aes\4 g\3 aes\4 <c'-.>4\2 g8\3 |
      % Bar 136 same as Bar 128
      aes\4 g\3 aes\4 ees'\1 ~ ees'\1 g8\3 aes\4 g\3 |

      % Bar 137 same as Bar 127
      f,8\6 g\3 aes\4 g\3 aes\4 <c'-.>4\2 g8\3 |
      % Bar 138 same as Bar 128
      aes\4 g\3 aes\4 ees'\1 ~ ees'\1 g8\3 aes\4 g\3 |
      % Bar 139
      <g,-2-\RH #1 >8\6 g\3 <bes-3-\RH #1 >\4 g\3 bes\4 <c'-.>4\2 g8\3 |

      % Bar 140
      bes\4 g\3 bes\4 ees'\1 ~ ees'\1 g8\3 bes\4 g\3 |
      % Bar 141
      g,\6 g\3 bes\4 g\3 bes\4 <c'-.>4\2 g8\3 |
      % Bar 142
      bes\4 g\3 bes\4 ees'\1 ~ ees'\1 g8\3 bes\4 g\3 |       

      % Bar 143
      <aes,-1-\RH #1 >8\6 g\3 <c'-2-\RH #1 >\4 g\3 c'\4 \harmonicByRatio #1/2 <g-4-\RH #3 bes-\RH #4 >4\2\1 g8\3 |
      % Bar 144
      c'\4 g\3 c'\4 ees'\1 ~ ees'\1 g\3 c'\4 g\3 |
      % Bar 145
      aes,\6 g\3 c'\4 g\3 c'\4 \harmonicByRatio #1/2 <g bes>4\2\1 g8\3 |

      % Bar 146
      c'\4 g\3 c'\4 ees'\1 ~ ees'\1 g\3 c'\4 g\3 |
      % Bar 147
      <bes,-1-\RH #1 >\6 g\3 <d'-2-\RH #1 >\4 g\3 d'\4 \harmonicByRatio #1/2 <c-4-\RH #3 ees-\RH #4 >4\2\1 g8\3 |
      % Bar 148
      d'\4 g\3 d'\4 ees'\1 ~ ees'\1 g\3 d'\4 g\3 |

      % Bar 149 Same as Bar 147
      <bes,-1-\RH #1 >\6 g\3 <d'-2-\RH #1 >\4 g\3 d'\4 \harmonicByRatio #1/2 <c-4-\RH #3 ees-\RH #4 >4\2\1 g8\3 |
      % Bar 150 same as Bar 148
      d'\4 g\3 d'\4 ees'\1 ~ ees'\1 g\3 d'\4 g\3 |
      % Bar 151
      \once \override Fingering #'extra-offset = #'(-1.0 . 0.0) \arpeggioBracket \harmonicByRatio #1/2 <ees c g ees g c-3>2^\pUp\1\2\3\4\5\6\arpeggio ~ \harmonicByRatio #1/2 <ees c g ees g c>2\1\2\3\4\5\6 |

      % Bar 151
      \time 3/4
      \once \override Fingering #'extra-offset = #'(-1.0 . 0.0) \arpeggioBracket <aes' f' c' aes c f,-1>4.^\piUP\1\2\3\4\5\6\arpeggio <aes' f' c' aes c f,>8^\piDOWN\1\2\3\4\5\6 <aes' f' c' aes c f,>4^\piUP\1\2\3\4\5\6

      % Bar 152
      \time 2/4
      \once \override Fingering #'extra-offset = #'(-1.0 . 0.0) \arpeggioArrowUp \acciaccatura <ees' c' g ees g, c,-1>8\arpeggio
      \once \override Fingering #'extra-offset = #'(-1.0 . 0.0) \arpeggioBracket \harmonicByRatio #1/3 <bes g d bes d g-3>4.\1\2\3\4\5\6^\pUp\arpeggio\fermata <bes'-\RH #3 >8\fermata |
      \break

      % Bar 153
      \time 3/4
      \textSpannerUp
      \override TextSpanner #'(bound-details left text) = #"III "
      <bes'-4-\RH #4 ees,-\RH #1 >8\startTextSpan <bes,-\RH #1 > <g-2-\RH #1 >\4 <bes-\RH #2 > <ees'-\RH #3 >\2 <bes'-\RH #4 > |

      % Bar 154
      ees, bes, g\4 bes ees'\2 bes'\stopTextSpan |

      % Bar 155
      \textSpannerUp
      \override TextSpanner #'(bound-details left text) = #"V "
      <f,-\RH #1 >8\startTextSpan <c-\RH #1 >\5 <aes-\RH #1 >\4 <c'-\RH #2 >\3 <bes'-4-\RH #4 >( aes') |
      \break

      % Bar 156
      f, c\5 aes\4 c'\3 <bes'-4-\RH #4 >\stopTextSpan \glissando c'' |

      % Bar 157
      \textSpannerUp
      \override TextSpanner #'(bound-details left text) = #"VII "
      <bes'-\RH #4  g,-\RH #1 >8\1\6\startTextSpan <d-\RH #1 >\5 <bes-\RH #1 >\4 <d'-\RH #2 >\3 <d''-4-\RH #4 >4\stopTextSpan |

      % Bar 158
      \harmonicByRatio #1/2 <ees-4-\RH #4 >2.\1
      \break

      % Bar 159
      \textSpannerUp
      \override TextSpanner #'(bound-details left text) = #"1/2 I "
      <des,-\RH #1 >8\startTextSpan <aes,-\RH #1 >\5 <f-2-\RH #1 >\4 <g-\RH #2 >\3 f\4 g\3 |

      % Bar 160
      des, aes,\5 f\4\stopTextSpan
      \textSpannerUp
      \override TextSpanner #'(bound-details left text) = #"I "
      aes\3\startTextSpan f\4 aes\3 |

      % bar 161
      des, aes,\5 f\4 aes\3 des'\2 <g'-4-\RH #4 >\1 |
      \break

      % Bar 162
      des, aes,\5 f\4 aes\3 <g'-4-\RH #4 >\1\stopTextSpan \glissando <aes'-4>( |

      % Bar 163
      \textSpannerUp
      \override TextSpanner #'(bound-details left text) = #"1/2 III "
      <f'-1 ees,-\RH #1 >\startTextSpan) <bes,-2-\RH #1 > <g-3-\RH #1 >\4 <g-\RH #2 >\3 f'-1( g'-4) |

      % Bar 164
      ees, bes, g\4 g\3 g\4 g\3 |

      % Bar 165
      \time 2/4
      ees, bes, g\4\stopTextSpan g\3 |

      % Bar 165 same as Bar 46

      \break

      % Bar 166 same as Bar 50

      aes'\1[ \glissando bes'\1(] <g, g'>4) ~ |

      % Bar 167 same as Bar 35
      \time 3/4
      <g' c>8[ c'\3] c'\2[ c'\3] ees\4[ g'\1] ~ |
      % Bar 168 same as Bar 48 same as Bar 36
      <g' c>8 c'\3 c'\2 c'\3 |
      \break

      % Bar 169 same as Bar 49 same as Bar 37
      \time 2/4
      aes'\1 \glissando bes'\1( <g, ees'>4) ~ |

      % Bar 170 Bar 50 same as Bar 38
      \compoundMeter #'((1 4) (3 8))
      <ees' f,>8[ g\3] aes\4[ g\3 c'\2] ~ |
      % Bar 171 same asBar 51 same as Bar 39
      \time 2/4
      <c' f,>8[ aes\4 g\3 c'\2] |
      \break
      % Bar 172 same as Bar 52 same as Bar 40
      f,\6 g\3 f'\2 ees'\1 ~ |

      % Bar 173 same as Bar 53 same as Bar 41
      <ees' f,>8 g\3 f'\2 ees'\1 ~ |
      % Bar 174 same as Bar 54 same as Bar 42
      <ees' f,>8 g\3 f'\2 g'\1 ~ |
      \break
      % Bar 175 same as Bar 55 same as Bar 43
      \time 3/4
      <g' ees,>8[ bes,\5] g\4[ g\3] f'\2[ g'\1] ~ |

      % Bar 176 same as Bar 56 same as Bar 44
      <g' ees,>8[ bes,\5] g\4[ g\3] f'\2[ ees'\1] ~ |
      % Bar 177 same as Bar 57 same as Bar 45
      <ees' ees,>8[ bes,\5] g\4[ g\3] g\4[ g\3] |
      \break

      % Bar 178 same as bar 72
      \time 4/4
      ees,8 bes,\5 g\4 g\3 \acciaccatura <aes'-\RH #3 >8\1 \glissando <bes'-4>4\1 \acciaccatura <aes'-\RH #4 >8\1 \glissando <bes'-1>4\1 ~ |
      % Bar 179 same as Bar 73
      \time 3/4
      \once \override Fingering
      #'extra-offset = #'(-0.5 . 0.0)      <bes' g,_2-\RH #1 >8\1\6 <g-\RH #2 >\3 <d'-4-\RH #1 >\4 <g-\RH #2 >\3 <c'-\RH #3 >\2 <bes'-1-\RH #4 >\1 ~ |

      % Bar 180 same as bar 74
      <bes' g,-\RH #1 >8\1\6 <g-\RH #2 >\3 <d'-\RH #1 >\4 <g-\RH #2 >\3 <bes'-.-\RH #3 >4\1 |
      % Bar 181 same as Bar 75
      \once \override Fingering
      #'extra-offset = #'(-0.5 . 0.0)      <aes'-1-\RH #3 aes,-2-\RH #1 >4.\2\6-"rit." <g-\RH #2 >8\3 <d'-4-\RH #1 >\4 <g-\RH #2 >\3 |
      % Bar 182 same as Bar 76
      <aes'-\RH #3 >8\2 \glissando <g'-1>\2 <g'-\RH #3 >4\2 ~ g'\2 ~ |
      % Bar 183
      \time 2/4
      r8 g\3 d'\4 g\3 |

      % Bar 184
      \time 3/4
      <ees'-\RH #4  d'-3-\RH #2 c,-\RH #1 >4\1\3\6-"bend" ( \holdBend ees'2\3 ) |









    }
  >>

}

\layout { 
  \context {
    \TabVoice \consists "New_fingering_engraver"
  }
}

\paper {
  systems-per-page = 4
}


