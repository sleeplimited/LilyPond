tab = {
  \set Staff.midiInstrument = #"vibraphone"
  \key e \major
  \numericTimeSignature
  \time 4/4
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
  \tieUp
  \partial 4
  <\invTNH cis,\6>8. e16\3 |
  % Bar 1
  \stemDown
  \slashedGrace b8\2 <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 2
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4  <\invTNH cis,\6>8. e16\3 |
  % Bar 3
  <d, a, fis\4>4. <e, b, gis\4>4. e4\3 ~ |
  % Bar 4
  e4 ~ e4 ~ e4 <\invTNH cis,\6>8. e16\3 |
  \break
  % Bar 5
  \stemDown \slashedGrace b8\2  <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 6
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 e4\4 |
  % Bar 7
  <d, a, fis\4>4. <e, b, gis\4>4. e4\3 ~ |
  % Bar 8
  e4 ~ e4 ~ e4 ~ e4 |
  \break
  % Bar 9
  <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 10
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 e4\4 |
  % Bar 11
  <d, a, fis\4>4. <e, b, gis\4>4. e4\3 ~ |
  % Bar 12
  e4 ~ e4 ~ e4 ~ e4 |
  \break
  % Bar 13
  <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 14
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 e4\4 |
  % Bar 15
  <d, a, fis\4>4. <e, b, gis\4>4. e4\3 ~ |
  % Bar 16
  e4 ~ e4 ~ e4 ~ e4 |
  \break
  % Bar 17
  <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 18
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 e4\4 |
  % Bar 19
  <d, a, fis\4>4. <e, b, gis\4>4. <gis,\6 dis\5 b\4>4 ~ |
  % Bar 20
  <gis,\6 dis\5 b\4>4~ <gis,\6 dis\5 b\4>4~ <gis,\6 dis\5 b\4>4~ <gis,\6 dis\5 b\4>8. <e' b e\3>16 |
  % Bar 21
  <a,\6 e\5 cis'\4>4~ <a,\6 e\5 cis'\4>4~ <a,\6 e\5 cis'\4>4~ <a,\6 e\5 cis'\4>8. a,16\6 |
  % Bar 22
  <b\3 fis'\2>4~ <b\3 fis'\2>4~ <b\3 fis'\2>4 e' |
  % Bar 23
  \times 2/3 {<fis'\2 e\4>8 \glissando gis'\2 b'~ } b'4~ b'~ b'8. dis16\5 ~ |
  % Bar 24
  dis4~ dis4 ~ dis8. gis'16\2 \glissando e'8.\2 gis'16 |
  % Bar 25
  cis4
  
% \harmonicByFret #5 <e'''\1 b''\2>4 ~ \harmonicByFret #5 <e'''\1 b''\2>4 |
}
