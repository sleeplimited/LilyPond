<< {
% Upper
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Andantino
  }
  \set Score.tempoHideNote = ##t
  \tempo 4 = 80
  \time 2/4
  \key e \major
  \voiceOne
  \clef "treble_8"
  % Bar 1
  \partial 4 e'4 
  e'8 dis' dis'4 |
  % Bar 2
  fis'8 e' e'4 |
  % Bar 3
  gis'8 fis' fis' e' |
  % Bar 4
  dis'4 b4 |
  % Bar 5
  b8 ais a4 |
  % Bar 6
  a8 gis < b e'>4 |
  % Bar 7
  cis'8 fis' e' dis' |
  % Bar 8
  < gis e'>4 e'4 |
  % Bar 9
  e'8 dis' dis'4 |
  % Bar 10
  fis'8 e' e'4 |
  % Bar 11
  gis'8 fis' fis' e' |
  % Bar 12
  dis'4 b |
  % Bar 13
  b8 ais a4 |
  % Bar 14
  a8 gis < b e'>4 |
  % Bar 15
  cis'8 fis' e' dis' |
  % Bar 16
  < gis e'>4 gis'8 b' |
  % Bar 17
  fis'4 e'8 gis' |
  % Bar 18
  e'8 dis' cis' fis' |
  % Bar 19
  dis'4 e' |
  % Bar 20
  dis'4 e' |
  % Bar 21
  e'8 dis' d'4 |
  % Bar 22
  d'8 cis' cis' fis' |
  % Bar 23
  e' dis' cis' dis' |
  % Bar 24
  < gis e'>4 gis'8 b' |
  % Bar 25
  fis'4 e'8 gis' |
  % Bar 26
  e'8 dis' cis' fis' |
  % Bar 27
  dis'4 e' |
  % Bar 28
  dis'4 e' |
  % Bar 29
  e'8 dis' d'4 |
  % Bar 30
  d'8 cis' cis' fis' |
  % Bar 31
  e' dis' cis' dis' |
  % Bar 32
  < gis e'>4 r4 \bar "|."



} \\ {
% Middle
  \voiceThree
  \clef "treble_8"
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4


} \\ {
% Lower
  \voiceTwo
  \clef "treble_8"
  % Bar 1
  \partial 4 e8 gis |
  % Bar 2
  fis4 fis8 a |
  % Bar 3
  gis4 gis8 b |
  % Bar 4
  a4 ais |
  % Bar 5
  b4 b,8 dis |
  % Bar 6
  cis4 dis8 fis |
  % Bar 7
  e4 gis,8 e, |
  % Bar 8
  < a, a >4 < b, fis> |
  % Bar 9
  e,4 e8 gis |
  % Bar 10
  fis4 fis8 a |
  % Bar 11
  gis4 gis8 b |
  % Bar 12
  a4 ais |
  % Bar 13
  b4 b,8 dis |
  % Bar 14
  cis4 dis8 fis |
  % Bar 15
  e4 gis,8 e, |
  % Bar 16
  < a, a >4 < b, fis> |
  % Bar 17
  e,4 e'4 |
  % Bar 17 there was a messup that I don't care to clean
  e'8 dis' cis'4 |
  % Bar 18
  b4 ais |
  % Bar 19
  a8 fis gis b |
  % Bar 20
  fis4 e8 gis |
  % Bar 21
  fis4 e8 gis |
  % Bar 22
  a4 a4 |
  % Bar 23
  b4 < b, a> |
  % Bar 24
  e,4 e'4 |
  % Bar 25
  e'8 dis' cis'4 |
  % Bar 26
  b4 ais |
  % Bar 27
  a8 fis gis b |
  % Bar 28
  fis4 e8 gis |
  % Bar 29
  fis4 e8 gis |
  % Bar 30
  a4 a4 |
  % Bar 31
  b4 < b, a> |
  % Bar 32
  e,4 r4 




}
>>
