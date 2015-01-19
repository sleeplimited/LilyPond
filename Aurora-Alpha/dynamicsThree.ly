% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -3.03)
    \override TextScript #'extra-offset = #'(-0.2 . 4.2)
    % Bar 1
    s4 s8 s8_\rhi s8 s8_\rhi s4 |
    % Bar 2-8
    s1*7 |
    % Bar 9
    s1 |
    % Bar 10 - 18
    s1*9 |
    % Bar 19
    s4. s4._\rhi s4_\rhi |
    % Bar 20
    s1 |
    % Bar 21
    s4. s8_\rhi s2 |
    % Bar 22
    s4. s4._\rhi s4_\rhi |
    % Bar 23
    s1 |
    \override TextScript #'extra-offset = #'(-0.3 . 3.4)
    % Bar 24
    s4 s2_\rhp s4_\rhp |
    % Bar 25-29
    s1*5 |
    % Bar 30
    s4 s2._\rhp |
    \override TextScript #'extra-offset = #'(-0.2 . 4.3)
    % Bar 31
    s4. s4_\rhi s4._\rhi |
    % Bar 32 - 35
    s1*4 |
    % Bar 36
    s1 |
    % Bar 37
    s1 |
    % Bar 38 - 56
    s1*19 |
    % Bar 57
    s4 s2._\rhi |
  }

