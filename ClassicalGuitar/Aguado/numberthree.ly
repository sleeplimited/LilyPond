<< {
% Upper
  \voiceOne
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Tempo
    \smallCaps "Di Valz"
  }
  \set Score.tempoHideNote = ##t
  \tempo 8 = 123
  \time 3/8
  \key a \major
  \clef "treble_8"
  % Bar 1
  \slurDown
  \acciaccatura { b'8 } \voiceOne a'16. gis'32 a'8 cis''8 |
  % Bar 2
  e'8 cis' d' |
  % Bar 3
  e'4 a'8 |
  % Bar 4
  a'4 gis'8 |
  % Bar 5
  \slurDown
  \acciaccatura {cis''8} \voiceOne b'16. ais'32 b'8 d''8 |
  % Bar 6
  e'4. |
  % Bar 7
  b8 e' d' |
  % Bar 8
  bis4( cis'8) \bar ":|"
  % Bar 9
  cis'8 \slurDown \acciaccatura { d' } cis'16. b32 cis'8 |
  % Bar 10
  d'4 b8 |
  % Bar 11
  d'8 \slurDown \acciaccatura {e'} d'16. cis'32 d'8 |
  % Bar 12
  e'4 cis'8 |
  % Bar 13
  a'8 \slurDown \acciaccatura {b'} a'16. gis'32 a'8 |
  % Bar 14
  b'4 e'8 |
  % Bar 15
  b'4 e'8 |
  % Bar 16
  a'4 e'8 |
  % Bar 17
  cis'8 \slurDown \acciaccatura { d' } cis'16. b32 cis'8 |
  % Bar 18
  d'4 b8 |
  % Bar 19
  d'8 \slurDown \acciaccatura {e'} d'16. cis'32 d'8 |
  % Bar 20
  e'4 cis'8 |
  % Bar 21
  a'8 \slurDown \acciaccatura {b'} a'16. gis'32 a'8 |
  % Bar 22
  \tieDown
  fis'4 d'8~ |
  % Bar 23
  < d' gis'>4 e'8 |
  % Bar 24
  a'4 a'8\rest \bar "|."
  } \\ {
% Middle
  \voiceThree
  \clef "treble_8"
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  \stemDown
  % Bar 1
  s4. |
  % Bar 2
  s4. |
  % Bar 3
  s4. |
  % Bar 4
  b4 b8\rest |
  % Bar 5
  s4. |
  % Bar 6 
  g8\rest < e gis>8 < fis a>8 |
  % Bar 7
  gis4. |
  % Bar 8
  a4. |
  % Bar 9
  s4. |
  % Bar 10
  e8\rest e4 |
  % Bar 11
  s4. |
  % Bar 12
  g8\rest a4 |
  % Bar 13
  s4. |
  % Bar 14
  g8\rest e8 < gis d'>8 |
  % Bar 15
  g8\rest e8 < gis d'>8 |
  % Bar 16
  b8\rest < a cis' >4 |
  % Bar 17
  s4. |
  % Bar 18
  e8\rest e4 |
  % Bar 19
  s4. |
  % Bar 20
  g8\rest a4 |
  % Bar 21
  s4. |
  % Bar 22
  \tieDown
  b8\rest b8\rest b8~ |
  % Bar 23
  b4 g8\rest |
  % Bar 24
  cis'4 b8\rest |
  
  
  } \\ {
% Lower
  \voiceTwo
  \clef "treble_8"
  % Bar 1
  R4. |
  % Bar 2
  c8\rest a,8 b, |
  % Bar 3
  cis8 a,4 |
  % Bar 4
  e4. |
  % Bar 5
  R4. |
  % Bar 6
  s4. |
  % Bar 7
  e,4. |
  % Bar 8
  a,4. |
  % Bar 9
  a,4. |
  % Bar 10
  e,4. |
  % Bar 11
  e,4. |
  % Bar 12
  a,4. |
  % Bar 13
  a,4. |
  % Bar 14
  e,4. |
  % Bar 15
  e,4. |
  % Bar 16
  a,4. |
  % Bar 17
  a,4. |
  % Bar 18
  e,4. |
  % Bar 19
  e,4. |
  % Bar 20
  a,4. |
  % Bar 21
  a,4. 
  % Bar 22
  c8\rest d4 |
  % Bar 23
  c8\rest e4 |
  % Bar 24
  a,4 c8\rest |


  }
>>
