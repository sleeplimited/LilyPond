%% DynamicsSix
dynamicssix = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \override TextSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
  \tabFullNotation
  % examples:
  % s2.. \strDamp s8\startTextSpan |
  % s8 s8\stopTextSpan s2. |
}
