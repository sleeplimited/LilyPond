%% lhFour
lhFour = {
  \textLengthOff
  \override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  \override TextSpanner #'outside-staff-priority = ##f
  \override Score.TrillSpanner #'outside-staff-priority = ##f
  \override TextSpanner #'extra-offset = #'(0 . 0.5)
  \override TabStaff.BreathingSign #'outside-staff-priority = ##f
  \override BreathingSign #'outside-staff-priority = ##f
  \override TextSpanner #'(bound-details left-broken text) = ##f 
  \override TextSpanner #'(bound-details right-broken text) = ##f 
  % Examples:
  % \tsMove #0 #0.25 \lhSpannerUp "4" {s8 s8 s4 s8} \bsMove #-1 #1
  % \leftBracketThree \tsMove #0 #0.25 \lhSpannerUp "4" { s8 s8 s8 |
  % s4 s4 s8 s8 s8 } s8 |

}
