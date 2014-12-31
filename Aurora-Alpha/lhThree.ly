%% lhThree
  lhThree = {
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

  }
