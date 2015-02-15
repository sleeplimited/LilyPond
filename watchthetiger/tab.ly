tab = {
  \set Staff.midiInstrument = #"vibraphone"
  \key e \major
  \numericTimeSignature
  \time 3/4
  \override Beam #'damping = #100000
  \override TabNoteHead #'whiteout = ##t
  \tabFullNotation
  \stemDown
  \override Rest #'font-size = #2 
  \override TabStaff.TimeSignature #'X-offset = #-1
  \override TabStaff.TimeSignature #'font-size = #5
  \override TabStaff.TabNoteHead #'font-name = #"Tex Gyre Schola"
  \override Staff.Stem #'stemlet-length = #2.75
  \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
  \override TupletBracket #'thickness = #'1
  \override TupletNumber #'text = \markup { \sans "3" }
  \override TupletNumber #'font-shape = #'upright
  \override TupletNumber #'font-size = #'-1
  \override TupletBracket #'edge-height = #'(0.5 . 0.5)
  \override TupletBracket #'extra-offset = #'(0 . -0.1)
  \override Score.OttavaBracket #'thickness = #'0.5
  % Bar 1
  <a, cis' fis'>4. b4. |
  % Bar 2
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 e4\4 |
  % Bar 3
  <d, a, fis\4>4 ~ <d, a, fis\4>4 <e, b, gis\4>4 |
  % Bar 4
  e4.\3 <e'''\harmonic b''\harmonic>4. |
}
