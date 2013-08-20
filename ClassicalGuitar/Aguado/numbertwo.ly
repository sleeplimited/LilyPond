<< {
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Tempo
    \smallCaps "Di Valz"
  }
  \override Score.MetronomeMark #'padding = #3
  \time 3/8
  \key a \major
  \voiceOne
  \clef "treble_8"
  \slurDown
  % Bar 1
  gis'16( a') gis'16( a') gis'16( a') |
  % Bar 2
  e'4 c''16\rest cis''16 |
  % Bar 3
  cis''4 c''16\rest e' |
  % Bar 4
  e'4 d'8 |
  % Bar 5
  ais'16( b') ais'16( b') ais'16( b') |
  % Bar 6
  e'4 c''16\rest d''16 |
  % Bar 7
  d''4 c''16\rest e'16 |
  % Bar 8
  e'4. \bar ":|"
  % Bar 9
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 10
  b'4 e'8 |
  % Bar 11
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 12
  cis''4 e'8 |
  % Bar 13
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 14
  d''16( b') gis' e' d'8 |
  % Bar 15
  d''16( b') gis' e' d'8 |
  % Bar 16
  cis'8 e' a' |
  % Bar 17
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 18
  b'4 e'8 |
  % Bar 19
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 20
  cis''4 e'8 |
  % Bar 21
  dis'16( e') dis'16( e') dis'16( e') |
  % Bar 22
  d''16( b') gis' e' d'8 |
  % Bar 23
  gis'16( fis') d' b gis8 |
  % Bar 24
  a4 r8 \bar "|."
} \\ {
  \key a \major
  \voiceThree
  \clef "treble_8"
  \time 3/8 
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  % Bar 1
  \stemDown
  s4.
  % Bar 2
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 3
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 4
  g8\rest < d' gis>8 gis8 |
  % Bar 5
  s4.
  % Bar 6
  g8\rest < d' gis>8 < d' gis>8 |
  % Bar 7
  g8\rest < d' gis>8 < d' gis>8 |
  % Bar 8
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 9
  s4. |
  % Bar 10
  g8\rest < b gis>8 < b gis>8 |
  % Bar 11
  s4. |
  % Bar 12
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 13
  s4. |
  % Bar 14
  g8\rest g8\rest gis8 |
  % Bar 15
  g8\rest g8\rest gis8 |
  % Bar 16
  a4. |
  % Bar 17
  s4. |
  % Bar 18
  g8\rest < b gis>8 < b gis>8 |
  % Bar 19
  s4. |
  % Bar 20
  g8\rest < cis' a>8 < cis' a>8 |
  % Bar 21
  s4. |
  % Bar 22
  g8\rest g8\rest gis8 |
  % Bar 23
  g8\rest g8\rest e8 |
  % Bar 24
  cis4 s8 |
} \\ { 
  \key a \major
  \voiceTwo
  \clef "treble_8"
  % Bar 1
  R4. |
  % Bar 2 
  a,4. |
  % Bar 3
  a,4. |
  % Bar 4
  e,4. |
  % Bar 5
  R4. |
  % Bar 6
  e,4. |
  % Bar 7
  e,4. |
  % Bar 8
  a,4. |
  % Bar 9
  R4. |
  % Bar 10
  e,4. |
  % Bar 11
  R4. |
  % Bar 12
  a,4. |
  % Bar 13
  R4. |
  % Bar 14
  e,4. |
  % Bar 15
  e,4. |
  % Bar 16
  a,4. |
  % Bar 17
  R4. |
  % Bar 18
  e,4. |
  % Bar 19
  R4. |
  % Bar 20
  a,4. |
  % Bar 21
  R4. |
  % Bar 22
  e,4. |
  % Bar 23
  e,4. |
  % Bar 24
  a,4 c8\rest |
} 
>>
