% Standard Notation
%% Upper
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
      r4. e8 b8 e4 b8 |
    } \\ {
%%% VoiceFour
      \voiceFour
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      % Bar 1
      e4\rest e2 e4 |




    } \\ {
%%% VoiceTwo
      \voiceTwo
      % Bar 1
      gis,8 ~ < gis, b,>2..




    } >>


  }
