    << {
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
  \partial 8 cis'16. d'32
    % Bar 1
    e'8 cis' a' |
    % Bar 2
    a' gis' e'16. e'32 |
    % Bar 3
    e'8 d' b'~ |
    % Bar 4
    b'8 a' a'16. b'32 |
    % Bar 5
    cis''8 cis'' cis'' |
    % Bar 6
    d''8 r16 cis''16 b' a' |
    % Bar 7
    gis'8 e' gis' |
    % Bar 8
    a'4 cis'16. d'32 |
    % Bar 9
    e'8 cis' a' |
    % Bar 10
    a'8 gis' e'16. e'32 |
    % Bar 11
    e'8 d' b'~ |
    % Bar 12
    b'8 a' a'16. b'32 |
    % Bar 13
    cis''8 cis'' cis'' |
    % Bar 14
    d''8 r16 cis''16 b' a' |
    % Bar 15
    gis'8 e' gis' |
    % Bar 16 
    a'4 r8 \bar "|:"
    % Bar 17
    gis'16. b'32 e'8 d' |
    % Bar 18
    cis'8 e' a' |
    % Bar 19
    gis'16. b'32 e'8 d' |
    % Bar 20
    d'8 cis' cis''16. d''32 |
    % Bar 21
    e''8 b'8\rest ais'8 |
    % Bar 22
    b'8. cis''16 d''8 |
    % Bar 23
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    e8 d'8 gis' |
    % Bar 24
    a'4 b'8\rest \bar ":|"
  } \\ {
  \key a \major
  \voiceThree
  \clef "treble_8"
  \time 3/8 
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  \partial 8 s8
  % Bar 1
  \stemDown
  g8\rest a8 g8\rest |
  % Bar 2
  b8 g8\rest g8\rest |
  % Bar 3
  g8\rest gis4 |
  % Bar 4
  < a cis'>4 g8\rest |
  % Bar 5
  f'8\rest 
  \autoBeamOff
  g'8 g' |
  % Bar 6
  fis'8 b8\rest b8\rest |
  % Bar 7
  b8\rest b8\rest d'8 |
  % Bar 8
  cis'4 s8 |
  % Bar 9
  g8\rest a8 g8\rest |
  % Bar 10
  b8 g8\rest g8\rest |
  % Bar 11
  g8\rest gis4 |
  % Bar 12
  < a cis'>4 g8\rest |
  % Bar 13
  f'8\rest 
  \autoBeamOff
  g'8 g' |
  % Bar 14
  fis'8 b8\rest b8\rest |
  % Bar 15
  b8\rest b8\rest d'8 |
  % Bar 16
  cis'4 b8\rest |
  % Bar 17 
  g8\rest g8\rest gis8 |
  % Bar 18
  a4. |
  % Bar 19
  g8\rest g8\rest gis8 |
  % Bar 20
  a4 g8\rest |
  % Bar 21
  d'8\rest d'8\rest e' |
  % Bar 22
  d'8 d'8\rest d'8\rest |
  % Bar 23
  \revert NoteHead #'font-size
  \revert Accidental #'font-size
  \revert Rest #'font-size
  \revert Stem #'font-size
  s8 d'4 |
  % Bar 24
  \override NoteHead #'font-size = #-4
  \override Accidental #'font-size = #-4
  \override Rest #'font-size = #-4
  \override Stem #'font-size = #-4
  cis'4 b8\rest |
} \\ {
  \key a \major
  \voiceTwo
  \clef "treble_8"
  % Bar 1
  \partial 8 s8
  a,4. |
  % Bar 2
  e,4. |
  % Bar 3
  e,4. |
  % Bar 4
  a,4. |
  % Bar 5
  r8 a8 a8 |
  % Bar 6
  d8 r8 r8 |
  % Bar 7
  e4 e8 |
  % Bar 8
  a,4 r8 |
  % Bar 9
  a,4. |
  % Bar 10
  e,4. |
  % Bar 11
  e,4. |
  % Bar 12
  a,4. |
  % Bar 13
  r8 a8 a8 |
  % Bar 14
  d8 r8 r8 |
  % Bar 15
  e4 e8 |
  % Bar 16
  a,4 r8 |
  % Bar 17
  e,4. |
  % Bar 18
  a,4. |
  % Bar 19
  e,4. |
  % Bar 20
  a,4. |
  % Bar 21
  r8 fis4 |
  % Bar 22
  d4. |
  % Bar 23
  e4. |
  % Bar 24
  a,4 b,8\rest |
}
>>
