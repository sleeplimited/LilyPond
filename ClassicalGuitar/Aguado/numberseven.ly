<< {
% Upper
  \override Staff.InstrumentName #'self-alignment-X = #CENTER
  \set Staff.instrumentName = \markup \center-column {
    \smallCaps Allegro
    \smallCaps Moderato
  }
  \set Score.tempoHideNote = ##t
  \tempo 8 = 123
  \time 3/8
  \key e \minor
  \voiceOne
  \clef "treble_8"
  % Bar 1
  \repeat volta 2 {
  \mark \markup { \fontsize #-2 \musicglyph #"scripts.segno" }
  e'16. fis'32 g'8 e' |
  % Bar 2
  e'8 dis' \tieDown b~ |
  % Bar 3
  b16. c'32 \tieUp b4~ |
  % Bar 4
  b4. |
  % Bar 5
  e'16. fis'32 g'8 e' |
  % Bar 6
  fis'8 \slurDown \acciaccatura { fis'8 } \voiceOne b'8 r8 | }
  % Bar 7
  \alternative {
    { b16. cis'32 d'8 e' |
    % Bar 8
    d'8( dis'4) |
  }
  % Bar 9
  { b16. cis'32 d'8 cis'8 |
    % Bar 10
    b4 r8 |
  }
}
\bar "|:"
  % Bar 11
  \slurDown \acciaccatura { d'8 } \voiceOne c'16. b32 b4 |
  % Bar 12
  e'8 b b |
  % Bar 13
  fis'8 b b |
  % Bar 14
  g'8 e' b'16. b'32 |
  % Bar 15
  d''8 r8 gis'16. gis'32 |
  % Bar 16 
  a'8 \slurDown \acciaccatura { a'8 } \voiceOne c''8 a'16. fis'32 |
  % Bar 17
  e'4 < a dis'>8 |
  % Bar 18
  < g e'>4 r8 \mark \markup { \fontsize #-2 \smallCaps "fin" } \bar ":|"
  % Bar 19
  \key e \major
  gis'4. |
  % Bar 20
  fis'4. |
  % Bar 21
  dis'4 cis'16. dis'32 |
  % Bar 22
  e'4. |
  % Bar 23
  gis'4. |
  % Bar 24
  a'4. |
  % Bar 25
  ais'4. |
  % Bar 26
  b'4 a'8 |
  % Bar 27
  gis'4 a'16. gis'32 |
  % Bar 28
  gis'4 fis'16. e'32 |
  % Bar 29
  dis'4 cis'16. dis'32 |
  % Bar 30
  e'4. |
  % Bar 31
  gis'4 gis'16. b'32 |
  % Bar 32
  b'4 a'8 |
  % Bar 33
  ais'4 fis'16. e'32 |
  % Bar 34
  b'4 r8 |
  % Bar 35
  b16. b32 b8 b8 |
  % Bar 36
  < a fis'>4 b8 |
  % Bar 37
  b16. b32 b8 b8 |
  % Bar 38
  < gis fis'>4 b8 |
  % Bar 39
  b16. b32 b8 b8 |
  % Bar 40
  g8 g'16. fis'32 e'8 |
  % Bar 41
  g8 g'16. fis'32 e'8 |
  % Bar 42
  < fis dis'>4 b8 |
  % Bar 43
  b16. b32 b8 b8 |
  % Bar 44
  < a dis'>4 b8 |
  % Bar 45
  b16. b32 b8 b8 |
  % Bar 46  
  < gis dis'>4 b8 |
  % Bar 47
  b16. b32 b8 b8 |
  % Bar 48
  \tieUp < g e'>4.~ |
  % Bar 49
  < g e'>4. |
  % Bar 50
  < fis dis'>4 r8 |
  % Bar 51
  gis'4. |
  % Bar 52
  fis'4. |
  % Bar 53
  dis'4 cis'16 dis'16 |
  % Bar 54
  e'4. |
  % Bar 55
  < d gis>4 \slurDown \acciaccatura { gis'8 } \voiceOne b'8 |
  % Bar 56
  < cis' a'>8 r16 \slurDown a'32( gis') \slurDown fis'( e') \slurDown dis'(
  cis') |
  % Bar 57
  b8 gis < a dis'> |
  % Bar 58
  < gis e'>4 r8 \once \override Score.RehearsalMark #'extra-offset = #'(0 .
  -7.5) 
  \once \override Score.RehearsalMark #'baseline-skip = #9 
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark \markup \center-column {  \fontsize #-2
  \musicglyph #"scripts.segno" \fontsize #-2 { \caps "d.c" } } 
  \bar "|."






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
  < e g>4 < e g>8 |
  % Bar 2
  < fis a>4. |
  % Bar 3
  < dis a>4 < dis a>8 |
  % Bar 4
  < e g>8 b,16 g, e,8 |
  % Bar 5
  < e g>4 \tieUp b8~ |
  % Bar 6
  < b d>4 r8 |
  % Bar 7
  fis4 < fis, ais>8 |
  % Bar 8
  < b, b>4 a8 |
  % Bar 9
  fis4 < fis, e>8 |
  % Bar 10
  < b, d>4 r8 |
  % Bar 11
  r4 < dis a>8 |
  % Bar 12
  < e g>4. |
  % Bar 13
  < b, a>4. |
  % Bar 14
  < e, g>4 r8 |
  % Bar 15
  r4 < e d'>8 |
  % Bar 16
  < a, c'>4 r8 |
  % Bar 17
  r8 b,4 |
  % Bar 18
  e,4 r8 |
  % Bar 19
  r8 < e, b>8 < e, b>8 |
  % Bar 20
  r8 < a, cis'>8 < a, cis'>8 |
  % Bar 21
  r8 < b, a>8 < b, a>8 |
  % Bar 22
  r8 < e gis>8 < e gis> |
  % Bar 23
  r8 < eis d'> < eis d'>8 |
  % Bar 24
  r8 < fis cis'>8 < fis cis'>8 |
  % Bar 25
  r8 < c' e'>8 < c' e'>8 |
  % Bar 26
  r8 < b dis'>4 |
  % Bar 27
  r8 < e, b>8 < e, b>8 |
  % Bar 28
  r8 < a, cis'>8 < a, cis'>8 |
  % Bar 29
  r8 < b, a>8 < b, a>8 |
  % Bar 30
  r8 < e gis>8 < e gis> |
  % Bar 31
  r8 < eis d'> < eis d'>8 |
  % Bar 32
  r8 < fis cis'>8 < fis cis'>8 |
  % Bar 33
  < c' e'>4 r8 |
  % Bar 34
  < b dis'>4 r8 |
  % Bar 34
  R4. |
  % Bar 35
  b,4. |
  % Bar 36
  R4. |
  % Bar 37
  b,4. |
  % Bar 38
  R4. |
  % Bar 39
  ais,4. |
  % Bar 40
  ais,4. |
  % Bar 41
  b,4. |
  % Bar 42
  R4. |
  % Bar 43
  b,4. |
  % Bar 44
  R4. |
  % Bar 45
  b,4. |
  % Bar 46
  R4. |
  % Bar 47
  c4 b,8 |
  % Bar 48
  ais,8 b, c |
  % Bar 49
  b,4 r8 |
  % Bar 50
  r8 < e, b>8 < e, b>8 |
  % Bar 51
  r8 < a, cis'>8 < a, cis'> |
  % Bar 53
  r8 < b, a>8 < b, a> |
  % Bar 54
  r8 < e gis>8 < e gis>8 |
  % Bar 55
  e,4. |
  % Bar 56
  a,4. |
  % Bar 57
  r8 b,8 b, |
  % Bar 58
  e,4 r8 |



}
>>
