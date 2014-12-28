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
  \key d \minor
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
  } >>
}
