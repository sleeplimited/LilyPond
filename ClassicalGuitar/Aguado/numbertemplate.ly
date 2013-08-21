<< {
% Upper
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Tempo
    \smallCaps "Di Valz"
  }
  \set Score.tempoHideNote = ##t
  \tempo 8 = 123
  \time 3/8
  \key a \major
  \voiceOne
  \clef "treble_8"
  % Bar 1


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


}
>>
