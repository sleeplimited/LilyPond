lower = {
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
  \key cis \minor
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \once \override Score.KeySignature #'break-align-anchor = #2.3
  \once \override Score.RehearsalMark #'extra-offset = #'(0 . 2)
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  % Bar 1
  << {
    %%% VoiceOne
    \voiceOne
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    % Bar 1
    r4 e2 e4 ~ |
    % Bar 2
    e4 e2 e4 ~ |
    % Bar 3
    e4 e2 e4 ~ |
    % Bar 4
    e4 e2 e4 ~ |
    % Bar 5
    e4 e2 e4 ~ |
    % Bar 6
    e4 e2 e4 ~ |
    % Bar 7
    e4 e2 e4 ~ |
    % Bar 8
    e4 e2 e4 |
    % Bar 9
    s1 |
    % Bar 10
    s1 |
    % Bar 11
    r4 e2 e4 ~ |
    % Bar 12
    e4 e2 e4 ~ |
    % Bar 13
    e4 e2 e4 ~ |
    % Bar 14
    e4 e2 e4 ~ |
    % Bar 15
    e4 e2 e4 ~ |
    % Bar 16
    e4 e2 e4 |
    % Bar 17
    s1 |
    % Bar 18
    s1 |
    % Bar 19
    r4 gis4. gis4. ~ |
    % Bar 20
    gis4 gis4. gis4. ~ |
    % Bar 21
    gis4 gis4 r2 |
    % Bar 22
    r4 fis4. fis4. ~ |
    % Bar 23
    fis4 fis4. fis4. |
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
    gis,8 ~ < gis, b,>2.. |
    % Bar 2
    gis,8 ~ < gis, b,>2.. |
    % Bar 3
    gis,8 ~ < gis, b,>2.. |
    % Bar 4
    gis,8 ~ < gis, b,>2.. |
    % Bar 5
    e,8 ~ < e, a,>2.. |
    % Bar 6
    e,8 ~ < e, a,>2.. |
    % Bar 7
    gis,8 ~ < gis, b,>2.. |
    % Bar 8
    gis,8 ~ < gis, b,>2.. |
    % Bar 9
    a,8 ~ < a, cis>2.. |
    % Bar 10
    a,8 ~ < a, cis>2.. |
    % Bar 11
    gis,8 ~ < gis, b,>2.. |
    % Bar 12
    gis,8 ~ < gis, b,>2.. |
    % Bar 13
    e,8 ~ < e, a,>2.. |
    % Bar 14
    e,8 ~ < e, a,>2.. |
    % Bar 15
    gis,8 ~ < gis, b,>2.. |
    % Bar 16
    gis,8 ~ < gis, b,>2.. |
    % Bar 17
    a,8 ~ < a, cis>2.. |
    % Bar 18
    a,8 ~ < a, cis>2.. |
    % Bar 19
    e,8 ~ < e, b,>2.. |
    % Bar 20
    e,8 ~ < e, b,>2.. |
    % Bar 21
    e,8 ~ < e, b,>4. r2 |
    % Bar 22
    cis,8 ~ < cis, gis,>2.. |
    % Bar 23
    cis,8 ~ < cis, gis,>2.. |
    % Bar 24
    dis8 ~ < dis b>2.. |
    % Bar 25
    dis8 ~ < dis b>2.. |
    % Bar 26
    cis8 ~ < cis b>2.. |
    % Bar 27
    cis8 ~ < cis b>2 ~ < cis b>8 r4 |
    % Bar 28
    cis8 ~ < cis b>2.. |
    % Bar 29
    cis8 ~ < cis b>2.. |
    % Bar 30
    cis8 ~ < cis b>4. r2 |

  } >>
}
