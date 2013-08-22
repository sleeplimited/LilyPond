<< {
% Upper
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Moderato
  }
  \set Score.tempoHideNote = ##t
  \tempo 8 = 86
  \time 3/8
  \key a \major
  \voiceOne
  \clef "treble_8"
  % Bar 1
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \slurDown \acciaccatura { gis8 } \voiceOne a8 \slurDown \acciaccatura { gis8
  } \voiceOne a8 \slurDown \acciaccatura { gis8 } \voiceOne a8 |
  % Bar 2
  a4 r8 |
  % Bar 3
  s4. |
  % Bar 4
  s4. |
  % Bar 5
  s4. |
  % Bar 6
  s4. |
  % Bar 7
  s4. |
  % Bar 8
  s4. |
  % Bar 9
  b16. fis'32 fis'8 a |
  % Bar 10
  gis4 r8 |
  % Bar 11
  \slurDown \acciaccatura { gis8 } \voiceOne a8 \slurDown \acciaccatura { gis8
  } \voiceOne a8 \slurDown \acciaccatura { gis8 } \voiceOne a8 |
  % Bar 12
  a4 r8 |
  % Bar 13
  s4. |
  % Bar 14
  s4. |
  % Bar 15
  s4. |
  % Bar 16
  s4. |
  % Bar 17
  s4. |
  % Bar 18
  s4. |
  % Bar 19
  b4 < d' gis'>8 |
  % Bar 20
  < cis' a'>4 r8 \bar "|:"
  % Bar 21
  e'16. dis'32 e'8 gis' |
  % Bar 22
  b'16. gis'32 e'4 |
  % Bar 23
  d'16. e'32 d'8 < a cis'> |
  % Bar 24
  < a cis'>4 < gis b>8 |
  % Bar 25
  e'16. dis'32 e'8 gis' |
  % Bar 26
  b'16. gis'32 e'4 |
  % Bar 27
  < a' cis''>16. < gis' bis'>32 < cis'' a'>8~ < a' dis''>8 |
  % Bar 28
  \override Fingering #'add-stem-support = ##t
  \override StrokeFinger #'add-stem-support = ##t
  < e'' gis'>4 < e'-0 >16. < e'-0 >32 |
  % Bar 29
  < e'-0 >4.~ |
  % Bar 30
  e'4 < e'-0 >16. < e'-0 >32 |
  % Bar 31
  e'4. |
  % Bar 32
  e'4\fermata r8 |
  % Bar 33
  \slurDown \acciaccatura { gis8 } \voiceOne a8 \slurDown \acciaccatura { gis8
  } \voiceOne a8 \slurDown \acciaccatura { gis8 } \voiceOne a8 |
  % Bar 34
  a4 r8 |
  % Bar 35
  s4. |
  % Bar 36
  s4. |
  % Bar 37
  s4. |
  % Bar 38
  s4. |
  % Bar 39
  r8 d'8 a' |
  % Bar 40
  r8 cis' a' |
  % Bar 41
  b4 < d' gis'>8 |
  % Bar 42
  < cis' a'>4 r8 \bar ":|"



} \\ {
% Middle
  \voiceThree
  \clef "treble_8"
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  % Bar 1
  s4. |
  % Bar 2
  s4. |
  % Bar 3
  d'8\rest < a cis'>8 < a cis'>8 |
  % Bar 4
  < a cis'>4 d'8\rest |
  % Bar 5
  d'8\rest < a cis'>8 < a cis'>8 |
  % Bar 6
  < a cis'>4 d'8\rest |
  % Bar 7
  d'8\rest < a d'>8 < a d'>8 |
  % Bar 8
  d'8\rest < a cis'>8 <a cis'>8 |
  % Bar 9
  s4. |
  % Bar 10
  s4. |
  % Bar 11
  s4. |
  % Bar 12
  s4. |
  % Bar 13
  d'8\rest < a cis'>8 < a cis'>8 |
  % Bar 14
  < a cis'>4 d'8\rest |
  % Bar 15
  d'8\rest < a cis'>8 < a cis'>8 |
  % Bar 16
  < a cis'>4 d'8\rest |
  % Bar 17
  d'8\rest < a d'>8 < a d'>8 |
  % Bar 18
  d'8\rest < a cis'>8 <a cis'>8 |
  % Bar 19
  s4. |
  % Bar 20
  s4. |
  % Bar 21
  s4. |
  % Bar 22
  s4. |
  % Bar 23
  s4. |
  % Bar 24
  e8\rest e4 |
  % Bar 25
  s4. |
  % Bar 26
  s4. |
  % Bar 27
  % s4.*8 |
  s4. |
  % Bar 28
  s4. |
  \revert NoteHead #'font-size 
  \revert Accidental #'font-size
  \revert Rest #'font-size
  \revert Stem #'font-size
  % Bar 29
  \stemDown
  \tieDown
  e'4.~ |
  % Bar 30
  e'4 e'8 |
  % Bar 31
  e'4. |
  % Bar 32
  s4.*3 |
  % Bar 28
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  \stemUp
  d'8\rest < a cis'>8 < a cis'>8 |
  % Bar 29
  < a cis'>4 d'8\rest |
  % Bar 30
  d'8\rest < a cis'>8 < a cis'>8 |
  % Bar 31
  < a cis'>4 d'8\rest |
  % Bar 32
  \stemDown
  s8 a4 |
  % Bar 33
  s8 a4 |
  





} \\ {
% Lower
  \voiceTwo
  \clef "treble_8"
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  % Bar 1
  R4. |
  % Bar 2
  r4 a,16. cis32 |
  % Bar 3
  e4.~ |
  % Bar 4
  e4 a,16. cis32 |
  % Bar 5
  e4.~ |
  % Bar 6
  e4 a,16. cis32 |
  % Bar 7
  fis4. |
  % Bar 8
  e4. |
  % Bar 9
  d4 dis8 |
  % Bar 10
  e8 e,8 r8 |
  % Bar 11
  R4. |
  % Bar 12
  r4 a,16. cis32 |
  % Bar 13
  e4.~ |
  % Bar 14
  e4 a,16. cis32 |
  % Bar 15
  e4.~ |
  % Bar 16
  e4 a,16. cis32 |
  % Bar 17
  fis4. |
  % Bar 18
  e4. |
  % Bar 19
  d8 b, e |
  % Bar 20
  a,4 r8 |
  % Bar 21
  R4. |
  % Bar 22
  R4. |
  % Bar 23
  < e gis>4. |
  % Bar 24
  e,4. |
  % Bar 25
  R4. |
  % Bar 26
  R4. |
  % Bar 27
  r4 b8 |
  % Bar 28
  e'4 < e'-4 >8 |
  % Bar 29
  e,8 gis, b, |
  % Bar 30
  e,4 r8 |
  % Bar 31
  e,8 gis, b, |
  % Bar 32
  < e d'>4 r8 |
  % Bar 33
  R4. |
  % Bar 34
  r4 a,16. cis32 |
  % Bar 35
  e4.~ |
  % Bar 36
  e4 a,16. cis32 |
  % Bar 37
  e4.~ |
  % Bar 38
  e4 a,16. cis32 |
  % Bar 39
  fis4. |
  % Bar 40
  e4. |
  % Bar 41
  d8 b, e |
  % Bar 42
  a,4 r8 |



}
>>
