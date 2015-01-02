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
    
  } >>
}
