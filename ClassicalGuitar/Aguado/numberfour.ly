<< {
% Upper
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Andante
  }
  \time 3/4
  \key e \minor
  \voiceOne
  \clef "treble_8"
  % Bar 1
  \slurDown
  \acciaccatura { e'16[ fis'] } \voiceOne g'8. fis'16 e'4 dis'4 |
  % Bar 2
  e'2. |
  % Bar 3
  \slurDown
  \acciaccatura { fis'16[ g'] } \voiceOne a'8. g'16 fis'4 e'4 |
  % Bar 4
  dis'4 b' r4 |
  % Bar 5
  \slurDown
  \acciaccatura { a'16[ b'] } \voiceOne c''4 \slurDown \acciaccatura { fis'16[
  g']} \voiceOne a'4 \slurDown \acciaccatura { dis'16[ e'] } fis'4 |
  % Bar 6
  b4. a8 g[ \tieDown g']~ |
  % Bar 7
  g'[ fis']~ fis'[ e']~ e'[ dis'] |
  % Bar 8
  e'4 r4 r4 \bar ":|:"
  % Bar 9
  \slurDown
  \acciaccatura { b'16[ c''] } \voiceOne d''4 \slurDown \acciaccatura { d''16[
  c''] } \voiceOne b'4 \slurDown \acciaccatura { b'16[ a'] } gis'4 |
  % Bar 10
  gis'2 a'4 |
  % Bar 11
  \acciaccatura { a'16[ b'] } \voiceOne c''4 \slurDown \acciaccatura { c''16[
  b'] } \voiceOne a'4 \slurDown \acciaccatura { a'16[ g'] } fis'4 |
  % Bar 12
  fis'2 g'4 |
  % Bar 13
  \times 2/3 { \slurDown g8( a) b } \times 2/3 { \slurDown b( a) g } \times 2/3
  {\slurDown g( fis) e } |
  % Bar 14
  r4 e'2 |
  % Bar 15
  < g e'>2 a8. dis'16 |
  % Bar 16
  < g e'>2 r4 \bar ":|"





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
  g2 a4 |
  % Bar 2
  g2. |
  % Bar 3
  g4\rest g4\rest g4 |
  % Bar 4
  fis4 dis'4 s4 |
  % Bar 5
  s2. |
  % Bar 6
  s2. |
  % Bar 7
  < a c'>4 < g b> < fis a> |
  % Bar 8
  g4 s4 s4 |
  % Bar 9
  s2. |
  % Bar 10
  d'2 c'4 |
  % Bar 11
  s2. |
  % Bar 12
  c'2 b4 |
  % Bar 13
  s2. |
  % Bar 14
  s4 g2 |
  % Bar 15
  s2. |
  % Bar 16
  s2. |


} \\ {
% Lower
  \voiceTwo
  \clef "treble_8"
  % Bar 1
  e,2 b,4 |
  % Bar 2
  r8 e,8 g, b, e,4 |
  % Bar 3
  a,2 ais,4 |
  % Bar 4
  b,4 b4 r4 |
  % Bar 5
  R2. |
  % Bar 6
  r4 dis4 e |
  % Bar 7
  a,4 b, b, |
  % Bar 8
  e,4 r4 r4 |
  % Bar 9
  R2. |
  % Bar 10
  r8 \slurUp e8( f)[ e] a,4 |
  % Bar 11
  R2. |
  % Bar 12
  r8 \slurUp d( ees)[ d] g,4 |
  % Bar 13
  s2. |
  % Bar 14
  \times 2/3 { \slurUp e8( d) c } c4 b,8 ais,8 |
  % Bar 15
  b,2. |
  % Bar 16
  e,2 r4 |


}
>>
