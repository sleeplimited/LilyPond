upper = {
  \set Staff.midiInstrument = #"acoustic grand"
  \override TupletNumber #'text = \markup { \sans "3" }
  \override TupletNumber #'font-shape = #'upright
  \override TupletNumber #'font-size = #'-1
  \override TupletBracket #'thickness = #'1
  \override TupletBracket #'bracket-visibility = ##t
  \override Staff.StaffSymbol #'thickness = #'0.5
  \override Staff.Beam #'beam-thickness = #'0.38
  \numericTimeSignature
  \time 4/4
  \set Score.tempoHideNote = ##t
  \tempo 4 = 60
  \key cis \minor
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \once \override Score.KeySignature #'break-align-anchor = #2.3
  \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
  \mark \markup  { \fontsize #-4 \concat {
    \fontsize #0 { \note #"4" #1 }" =" \fontsize #-4 \number " 60"
  }}
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  % Bar 1
  << {
    %%% VoiceOne
    \voiceOne
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    % Bar 1
    r2 b4. b8 ~ |
    % Bar 2
    b2 b4. b8 ~ |
    % Bar 3
    b2 b4. b8 ~ |
    % Bar 4
    b2 b4. b8 ~ |
    % Bar 5
    b2 cis'4. cis'8 ~ |
    % Bar 6
    cis'2 cis'4. e'8 ~ |
    % Bar 7
    e'2 b4. b8 ~ |
    % Bar 8
    b2 b4. b8 ~ |
    % Bar 9
    b4 cis'4 b4 cis'8 b8 ~ |
    % Bar 10
    b4 cis'4 b4 cis'8 e'8 ~ |
    % Bar 11
    e'2 b4. b8 ~ |
    % Bar 12
    b2 b4. b8 ~ |
    % Bar 13
    b2 cis'4. cis'8 ~ |
    % Bar 14
    cis'2 cis'4. e'8 ~ |
    % Bar 15
    e'2 b4. b8 ~ |
    % Bar 16
    b2 b4. b8 ~ |
    % Bar 17
    b4 cis'4 b4 cis'8 b8 ~ |
    % Bar 18
    b4 cis'4 b4 cis'8 e'8 ~ |
    % Bar 19
    e'2 b4. b8 ~ |
    % Bar 20
    b2 b4. b8 ~ |
    % Bar 21
    b2 gis8( fis e fis) ~ |
    % Bar 22
    fis2 b4. b8 ~ |
    % Bar 23
    b2 b4. b8 |
    % Bar 24
    r2 gis'4. gis'8 ~ |
    % Bar 25
    gis'2 gis'4. gis'8 ~ |
    % Bar 26
    gis'2 gis'4. gis'8 ~ |
    % Bar 27
    gis'2 gis'4 r8 a'8 ~ |
    % Bar 28
    a'2 a'4. a'8 ~ |
    % Bar 29
    a'2 a'4. a'8 ~ |
    % Bar 30
    a'4. e'8 fis'( gis') b' gis' ~ |
    % Bar 31
    gis'2 gis'4 b'8 gis' ~ |
    % Bar 32
    gis'2 gis'4 e'8 fis' ~ |
    % Bar 33
    fis'2 fis'4 e'8 fis' ~ |
    % Bar 34
    fis'2 fis'4 e'8 dis' ~ |
    % Bar 35
    dis'2 dis'4 e'8 dis' ~ |
    % Bar 36
    dis'2 dis'4 e'8 dis' ~ |
    % Bar 37
    dis'2 dis'4 e'8 dis' ~ |
    % Bar 38
    dis'2 dis'4 e'8 cis' ~ |
    % Bar 39
    cis'2 cis'4 e'8 cis' ~ |
    % Bar 40
    cis'2 cis'4 e'8 cis' ~ |
    % Bar 41
    cis'2 cis'4 e'8 cis' ~ |
    % Bar 42
    cis'2 cis'4 b8 cis' ~ |
    % Bar 43
    cis'2 cis'4. cis'8 ~ |
    % Bar 44
    cis'2 cis'4. e'8 ~ |
    % Bar 45
    e'2 b4. b8~ |
    % Bar 46
    b2 b4. b8 ~ |
    % Bar 47
    b4 cis'4 b4 cis'8 b8 ~ |
    % Bar 48
    b4 cis'4 b4 cis'8 e'8 ~ |
    % Bar 49
    e'2 b4. b8 ~ |
    % Bar 50
    b2 b4. b8 ~ |
    % Bar 51
    b2 cis'4. cis'8 ~ |
    % Bar 52
    cis'2 cis'4. e'8 ~ |
    % Bar 53
    e'2 b4. b8 ~ |
    % Bar 54
    b2 b4. b8 ~ |
    % Bar 55
    b4 cis'4 b4 cis'8 b8 ~ |
    % Bar 56
    b4 cis'4 b4 cis'8 e' ~ |
    % Bar 57
    e'2 b2 ~ |
    % Bar 58
    < b e'>1 |
  } \\ {
    %%% VoiceFour
    \voiceFour
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    % Bar 1
  } \\ {
    %%% VoiceTwo
    \voiceTwo
    % Bar 1
    e4.\rest e4 e4.~ |
    % Bar 2
    e4. e4 e4.~ |
    % Bar 3
    e4. e4 e4.~ |
    % Bar 4
    e4. e4 e4.~ |
    % Bar 5
    e4. e4 e4.~ |
    % Bar 6
    e4. e4 e4.~ |
    % Bar 7
    e4. e4 e4.~ |
    % Bar 8
    e4. e4 e4.~ |
    % Bar 9
    e4. e4 e4.~ |
    % Bar 10
    e4. e4 e4.~ |
    % Bar 11
    e4. e4 e4.~ |
    % Bar 12
    e4. e4 e4.~ |
    % Bar 13
    e4. e4 e4.~ |
    % Bar 14
    e4. e4 e4.~ |
    % Bar 15
    e4. e4 e4.~ |
    % Bar 16
    e4. e4 e4.~ |
    % Bar 17
    e4. e4 e4.~ |
    % Bar 18
    e4. e4 e4.~ |
    % Bar 19
    e4. e4. e4~ |
    % Bar 20
    e4. e4. e4~ |
    % Bar 21
    e4. e8 gis( fis e fis) ~ |
    % Bar 22
    fis4. e4. e4~ |
    % Bar 23
    e4. e4. e4 |
    % Bar 24
    r4 s8 dis'4 dis'4. ~ |
    % Bar 25
    dis'4. dis'4 dis'4. ~ |
    % Bar 26
    dis'4. dis'4 dis'4. ~ |
    % Bar 27
    dis'4 dis'4. dis'8 r4 |
    % Bar 28
    r4 s8 e'4 e'4. ~ |
    % Bar 29
    e'4. e'4 e'4. ~ |
    % Bar 30
    e'4. s8 s2 |
    % Bar 31
    r4. e4 e4. ~ |
    % Bar 32
    e4. e4 e4. ~ |
    % Bar 33
    e4. e4 e4. ~ |
    % Bar 34
    e4. e4 e4. ~ |
    % Bar 35
    e4. e4 e4. ~ |
    % Bar 36
    e4. e4 e4. ~ |
    % Bar 37
    e4. e4 e4. ~ |
    % Bar 38
    e4. e4 e4. ~ |
    % Bar 39
    e4. e4 e4. ~ |
    % Bar 40
    e4. e4 e4. ~ |
    % Bar 41
    e4. e4 e4. ~ |
    % Bar 42
    e4. e4 e4. ~ |
    % Bar 43
    e4. e4 e4. ~ |
    % Bar 44
    e4. e4 e4. ~ |
    % Bar 45
    e4. e4 e4. ~ |
    % Bar 46
    e4. e4 e4. ~ |
    % Bar 47
    e4. e4 e4. ~ |
    % Bar 48
    e4. e4 e4. ~ |
    % Bar 49
    e4. e4 e4. ~ |
    % Bar 50
    e4. e4 e4. ~ |
    % Bar 51
    e4. e4 e4. ~ |
    % Bar 52
    e4. e4 e4. ~ |
    % Bar 53
    e4. e4 e4. ~ |
    % Bar 54
    e4. e4 e4. ~ |
    % Bar 55
    e4. e4 e4. ~ |
    % Bar 56
    e4. e4 e4. ~ |
    % Bar 57
    e4 e2. ~ |
    % Bar 58
    e1 |
 
  } >>
}
