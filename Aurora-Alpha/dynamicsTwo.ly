% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -2.03)
    \override TextScript #'extra-offset = #'(-0.4 . 5.1)
    s4 s4 s4_\rhm s8 s8_\rhm |
    % Bar 2-5
    s1*4 |
    % Bar 6
    s2 s4 s8 s16 s32\mkTweak #0.0 #5.1 _\rhm \strDamp s32\startTextSpan |
    % Bar 7
    s4 s4 s8\stopTextSpan s8 s4 |
    % Bar 8-9
    s1*2 |
    % Bar 10
    s2 s4 s8 s16 \strDamp s16\startTextSpan |
    % Bar 11
    s4 s4 s8\stopTextSpan s8 s4 |
    % Bar 12 - 13
    s1*2 |
    % Bar 14
    s2 s4 s8 s16 \strDamp s16\startTextSpan |
    % Bar 15
    s4 s4 s8\stopTextSpan s8 s4 |
    % Bar 16 - 17
    s1*2 |
    % Bar 18
    s2 s4 s8 s16 s32\mkTweak #0.0 #5.1 _\rhm \strDamp s32\startTextSpan |
    % Bar 19
    s4 s4 s8\stopTextSpan s8 s4 |
    % Bar 20
    s1 |
    % Bar 21
    s2 s16 s32\mkTweak #0.0 #5.1 _\rhm \strDamp s32\startTextSpan s8 s4 |
    % Bar 22
    s4 s4 s8\stopTextSpan s8 s8 s8_\rhm |
    % Bar 23
    s1 |
    % Bar 24
    s4 s8 s8\mkTweak #-0.2 #5.2 _\rhi s8 s8\mkTweak #-0.2 #5.2 _\rhi s4 |
  }

