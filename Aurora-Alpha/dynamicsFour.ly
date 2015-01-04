% DynamicsFour
  dynamicsfour = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -4.03)
    \override TextScript #'extra-offset = #'(-0.3 . 2.4)
    % Bar 1
    s4 s4_\rhp s4 s4_\rhp |
    % Bar 2 - 4
    s1*3 |
    % Bar 5
    s4 s4_\rhp s4 s4_\rhp |
    % Bar 6 - 8
    s1*3 |
    % Bar 9
    s4 s4_\rhp s4 s4_\rhp |
    % Bar 10 - 18
    s1*9 |
    % Bar 19
    s4 s4_\rhp s8 s8_\rhp s4 |
    % Bar 20
    s1 |
    % Bar 21
    s4 s4_\rhp s2\mkTweak #-0.7 #4.0 _\twostrdwnstrm \mkTweak #-0.4 #4.4 _\rhm |
    % Bar 22
    s4 s4_\rhp s8 s8_\rhp s4 |
    % Bar 23
    s1 |
    % Bar 24
    s8 s8_\rhp s2. |
    % Bar 25 - 27
    s1*3 |
    % Bar 29
    s8 s8_\rhp s2. |
    % Bar 30
    s8 s8_\rhp s2. |
    % Bar 31
    s4 s4_\rhp s2 |
    % Bar 32 - 34
    s1*3 |
    % Bar 35
    s4 s4_\rhp s2 |
    % Bar 36
    s1 |
    % Bar 37
    s4 s4_\rhp s2 |
    % Bar 38 - 56
    s1*20 |
    % Bar 57
    s4. s8_\rhp s2 |
    
  }
