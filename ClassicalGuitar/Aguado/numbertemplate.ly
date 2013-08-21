<< {
% Upper
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Tempo
    \smallCaps "Di Valz"
  }
  \time 3/8
  \key a \major
  \voiceOne
  \clef "treble_8"
  % Bar 1


} \\ {
% Middle
  \key a \major
  \voiceThree
  \clef "treble_8"
  \time 3/8 
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4


} \\ {
% Lower
  \key a \major
  \voiceTwo
  \clef "treble_8"
  % Bar 1


}
>>
