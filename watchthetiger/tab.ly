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
  % \override TupletNumber #'text = \markup { "3" }
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
  \slashedGrace b8\2 <a, cis' fis'>4. b4.  <gis\5 e'>4 ~ |
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
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 <\invTNH cis,\6>8. e16\3 |
  % Bar 7
  <d, a, fis\4>4. e4.\3 <e, b, e\4>4 ~ |
  % Bar 8
  <e, b, e\4>4 ~ <e, b, e\4>4 ~ <e, b, e\4>4 <\invTNH cis,\6>8. e16\3 |
  \break
  % Bar 9
  \stemDown
  \slashedGrace b8\2 <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 10
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4  <\invTNH cis,\6>8. e16\3 |
  % Bar 11
  <d, a, fis\4>4. <e, b, gis\4>4. e4\3 ~ |
  % Bar 12
  e4 ~ e4 ~ e4 <\invTNH cis,\6>8. e16\3 |
  \break
  % Bar 13
  \stemDown \slashedGrace b8\2  <a, cis' fis'>4. b4. \strpHarmTwelve <gis\5 e''>4 ~ |
  % Bar 14
 \strpHarmTwelve <gis\5 e''>4 ~\strpHarmTwelve <gis\5 e''>4 ~\strpHarmTwelve <gis\5 e''>4 <\invTNH cis,\6>8. <e' b e\3>16 |
  % Bar 15
  <b,\6 fis\5 dis'\4>4 ~ <b,\6 fis\5 dis'\4>4 ~ <b,\6 fis\5 dis'\4>4 ~ b,4\6 ~ |
  % Bar 16
  b,\6 b,8.\6 <e' b e\3>16 <a,\6 e\5 cis'\4>4 ~ <a,\6 e\5 cis'\4>4 ~ |
  \break
  % Bar 17
  <a,\6 e\5 cis'\4>4 a,4\6 ~ a,4\6 ~ a,4\6 \glissando |
  % Bar 18
  <e, b, gis\4>4~ <e, b, gis\4>4~ <e, b, gis\4>4 <\invTNH cis,\6>8. e16\3 |
  % Bar 19
  \stemDown
  \slashedGrace b8\2 <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 20
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4  <\invTNH cis,\6>8. e16\3 |
  % Bar 21
  <d, a, fis\4>4. <e, b, gis\4>4. e4\3 ~ |
  % Bar 22
  e4 ~ e4 ~ e4 <\invTNH cis,\6>8. e16\3 |
  \break
  % Bar 23
  \stemDown \slashedGrace b8\2  <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 24
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 <\invTNH cis,\6>8. e16\3 |
  % Bar 25
  <d, a, fis\4>4. e4.\3 <e, b, e\4>4 ~ |
  % Bar 26
  <e, b, e\4>4 ~ <e, b, e\4>4 ~ <e, b, e\4>4 <\invTNH cis,\6>8. e16\3 |
  \break
  % Bar 27
  \stemDown
  \slashedGrace b8\2 <a, cis' fis'>4. b4.  <gis\5\harmonic e'>4 ~ |
  % Bar 28
  <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4 ~ <gis\5\harmonic e'>4  <\invTNH cis,\6>8. e16\3 |
  % Bar 29
  <d, a, fis\4>4. <e, b, gis\4>4. e4\3 ~ |
  % Bar 30
  e4 ~ e4 ~ e4 <\invTNH cis,\6>8. e16\3 |
  \break
  % Bar 31
  \stemDown \slashedGrace b8\2  <a, cis' fis'>4. b4.  <gis\5\harmonic e''\harmonic>4 ~ |
  % Bar 32
  <gis\5\harmonic e''\harmonic>4 ~ <gis\5\harmonic e''\harmonic>4 ~ <gis\5\harmonic e''\harmonic>4 <\invTNH cis,\6>8. <e' b e\3>16 |
  % Bar 33
  \time 3/4
  <d, a, fis\4>4. <e, b, gis\4>4.  |
  % Bar 34
  \time 6/4
  e4\4 dis4 e4\4 dis4 e4\4 dis4 |
  % Bar 35
  e4\4 cis e4\4 cis e\4 cis |
  % Bar 36
  e4\4 dis4 e4\4 dis4 e4\4 dis4 |
  % Bar 37
  e4\4 cis e4\4 cis e\4 cis |
  % Bar 38
  \times 2/3 { <fis'\2 e\4>8 \glissando gis'\2 b' } dis4 e4\4 dis4 e\4 dis |
  % Bar 39
  \times 2/3 { <gis'\2 e\4>8 \glissando e'\2 gis'\1 } cis4 e\4 cis e\4 cis |
  % Bar 40
  \times 2/3 { <fis'\2 e\4>8 \glissando gis'\2 b' } dis4 e4\4 dis4 e\4 dis |
  % Bar 41
  \times 2/3 { <gis'\2 e\4>8 \glissando e'\2 gis'\1 } cis4 e\4 cis e\4 cis |
  % Bar 42
  \times 2/3 { \stemDown \slashedGrace g'8\1 \glissando <fis'\1 e\4>4 e'8\2 } \times 2/3 { b,4 fis'8\1 } e4\4 b,4 e\4 b, |
  % Bar 43

% \harmonicByFret #5 <e'''\1 b''\2>4 ~ \harmonicByFret #5 <e'''\1 b''\2>4 |
}
