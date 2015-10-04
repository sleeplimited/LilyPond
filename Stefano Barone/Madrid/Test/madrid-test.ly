\version "2.18.2"
\include "../../../sleep-functions.ily"
tab = {
    \key cis \minor
    \numericTimeSignature
    \time 10/16
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \set subdivideBeams = ##t
%% Music
  % Bar 1
  < fis'\1 \tweakTabNoteHead \parenInChordSeven \tweak #'X-offset #0.6 fis'\2  >16[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 2
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 3
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 4
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 5
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 6]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 7
  < fis'\1 a\4 d\5>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 8
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[fis'\2 fis fis'\1 fis]
  % Bar 9
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 10]
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 11
  % \once\override Slur.outside-staff-priority = ##f
  % \shape #'((0.0 . 0.0) (1.0 . -1.0) (1.0 . -1.0) (0 . 0.0)) Slur
  % \once\override Slur.extra-offset = #'(0 . -6)
  \set tieWaitForNote = ##t
  \tieDown
  < fis'\1 d,\6 \invTNH a,,\6~ >16[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 12
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 13
  < fis'\1 a,,\6>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 14
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 15
  < fis'\1 d,\6 \invTNH a,,\6~ >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 16
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 17
  < fis'\1 a,,\6>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 18
  < a,, fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 19
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 20
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 21
  < fis'\1 a\4 d\5>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 22
  fis'16\1[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 23
  < fis'\1 a\4>[ fis'\2 fis < fis'\1 cis\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 24
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 25
  < fis'\1 d,\6 \invTNH a,,\6~ >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 26
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 27
  < fis'\1 a,,\6>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 28
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 29
  < fis'\1 d,\6 \invTNH a,,\6~ >[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis'\2]
  % Bar 30
  < d\5 fis'\1>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
  % Bar 31
  < fis'\1 a,,\6>[ fis'\2 fis fis'\1 fis]
  fis'16\1[ fis'\2 fis fis'\1 fis] |
  % Bar 32
  < fis'\1 a,,>[ fis'\2 fis < fis'\1 e\5> fis]
  fis'16\1[ fis'\2 fis fis'\1 fis]
    \time 14/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 6 4 4)
  % Bar 33
  < d\5 fis'\1>16[ fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,>] 
  < d\5 fis'\1>[ fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis] |
  % Bar 34
  < d\5 fis'\1>16[ fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,>]
  < d\5 fis'\1>[ fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis] |
  % Bar 35
  < d\5 fis'\1>16[ fis'\2 < a,, fis'\1> fis'\2 < cis\5 fis'\1> fis'\2 
  < fis a,,>]
  < d\5 fis'\1>[ fis'\2 < fis'\1 a,,> < fis'\2 cis\5> fis'\1
  < fis'\2 a,,> fis] |
  % Bar 36
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6)
  < d\5 fis'\1>16[ fis'\2 < a,, fis'> fis'\2 < fis\4 fis'> fis'\2 < a,,
  fis\3>]
  < d\5 fis'>[ fis'\2 < a,, fis'> fis'\2 < fis\4 fis'> fis'\2 < fis
  a,,>] |
  % Bar 37
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  % Bar 38
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 6 4 4)
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  < fis' d\5>[ b < a,, fis'> < b cis\5> fis' < a,, b> cis'\3] 
  % Bar 39
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6)
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  < fis' d\5>[ b < a,, fis'> b < fis' fis\4> b < a,, cis'\3>]
  % Bar 40
  \time 16/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(4 4 6 4 4 6 4)
  < fis' d\5>[ b < fis' a,,> b < fis' cis\5> b < a,, cis'\3>]
  < fis' d\5>[ b < fis' a,,> b < cis'\1 cis\5 ~ > < b\2 cis\5
  eis\4>^glissando
  < fis\4 d\5 fis\3> r16 r] |
  % Bar 41
  \time 10/16
    \set Timing.baseMoment = #(ly:make-moment 1 32)
    \set Timing.beatStructure = #'(6 4 6 4)
    % \once \tabSlur #`(0 -2 -2 -2.3 -2.6 0 -4 0)
    % \chordSlurT #79 #1.2 #-1 
    % \set tieWaitForNote = ##t
    < a' fis\4 \invTNH cis\4~>16[ < fis'\2 d\5> < cis\4
    fis\3> a' fis] a'[ fis'\2 fis a' fis] |
  % Bar 42
  < a' cis cis,\laissezVibrer>[ fis'\2 fis a' fis]
  a'[ fis'\2 fis a' < fis cis cis,\laissezVibrer>] |
  % Bar 43
  a'[ fis'\2 \override Voice.LaissezVibrerTie.direction = #UP < fis
  d\5\laissezVibrer d,\6\laissezVibrer> a' fis] a'[ fis'\2 fis a'
  fis'\2] |
  % Bar 44
  \time 12/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 6 4 4)
  a'[ fis'\2 < fis d\5>32 fis\4\laissezVibrer a'16 fis]
  a'[ fis'\2 fis a' fis cis' fis'\2] |
  % Bar 45
  \time 10/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 6 4)
  % \once \tabSlur #`(0 -2 -2 -2.3 -2.6 0 -4 0)
  % \chordSlurT #79 #1.2 #-1 
  < a' fis\4 \invTNH cis\4~ >16[ < fis'\2 d\5> < cis\4
  fis\3> a' fis] a'[ fis'\2 < fis gis,> a' fis] |
  % Bar 46
  < a,, a'>[ fis'\2 fis < a'\1 e\4> fis]
  a'[ fis'\2 fis cis' < fis cis\5>] |
  % Bar 47
  fis'\1[ fis'\2 < d\5 fis> fis'\1 fis]
  < a,, fis'\1>[ fis'\2 fis < cis\5 fis'\1> fis'\2] |
  % Bar 48
  \time 15/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 6 4 4 6)
  fis'\1[ < fis'\2 a,,> fis fis'\1 < fis d\5>]
  fis'\1[ fis'\2 < fis a,,> fis'\1 < fis cis\5>]
  fis'\1[ < fis'\2 a,,> cis' fis'\2^glissando < a'\2 fis>] |
  % Bar 49
  \time 10/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 4 4 6)
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 b\4 cis' a'\2] |
  % Bar 50
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 cis\4 cis' a'\2] |
  % Bar 51
  < cis fis,\6>[ d'\3 a'\2 < cis fis,\6> cis']
  < cis fis,\6>[ d'\3 cis cis' a'\2] |
  % Bar 52
  < cis fis,\6>[ d'\3 a'\2 < cis fis,\6> cis']
  < cis fis,\6>[ d'\3 cis cis' a'\2] |
  % Bar 53
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 b\4 cis' a'\2] |
  % Bar 54
  b\4[ d'\3 a'\2 b\4 cis']
  b\4[ d'\3 cis\4 cis' a'\2] |
  % Bar 55
  a,,[ d'\3 a'\2 cis cis']
  a,,[ d'\3 cis cis' a'\2] |
  % Bar 56
  a,,[ d'\3 a'\2 cis cis']
  a,,[ d'\3 cis cis' d'\2] |
  % Bar 57
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' d'\2] |
  % Bar 58
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' a'\2] |
  % Bar 59
  fis,\6\laissezVibrer[ fis a'\2 < fis,\6\laissezVibrer cis> cis']
  < fis,\6\laissezVibrer cis>[ fis cis cis' a'\2] |
  % Bar 60
  fis,\6\laissezVibrer[ fis a'\2 < fis,\6\laissezVibrer cis> cis']
  < fis,\6\laissezVibrer cis>[ fis cis cis' d'\2] |
  % Bar 61
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' d'\2] |
  % Bar 62
  b,,\laissezVibrer[ g d'\2 b, cis']
  cis[ g a,, cis' < gis\3 d'\2>] |
  % Bar 63
  \time 15/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 6 6 6 6)
  cis cis' < gis\4 f'\2>
  fis cis' < b\4 gis'\2>
  \strpHarmTwelve < gis\5> cis' < fis a'\2>
  a\4 cis' a'\2
  \strpHarmTwelve < cis'\4> cis' a'\2 |
  % Bar 64
  \time 12/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 6 6 6) 
  b\4[ a'\2 fis b\4 a'\2 fis]
  b\4[ a'\2 fis b\4 a'\2 fis]
  % Bar 65
  b\4[ a'\2 fis b\4 a'\2 fis]
  b\4[ a'\2 fis b\4 a'\2 fis]
  % Bar 66
  b\4[ < a'\2 f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 fis> < b\4
  fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6 a'\2> < fis
  f\5\laissezVibrer \invTNH gis,\5~ >] 
  < gis,\5 b\4> < a'\2 fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6
  fis> < b\4 f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 a'\2> < fis
  fis,\6\laissezVibrer \invTNH a,,\6~ >]  |
  % Bar 67
  < a,,\6 b\4> [ < a'\2 f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5
  fis> < b\4 fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6 a'\2> < fis
  f\5\laissezVibrer \invTNH gis,\5~ >] 
  < gis,\5 b\4> < a'\2 fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6
  fis> < b\4 f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 a'\2> < fis
  fis,\6\laissezVibrer \invTNH a,,\6~ >] |
  % Bar 68
  \time 16/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 6 6 6 8) 
  < a,,\6 b\4> [ < a'\2 f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5
  fis> < b\4 fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6 a'\2> < fis
  f\5\laissezVibrer \invTNH gis,\5~ >] 
  < gis,\5 b\4> < a'\2 fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6
  fis> < b\4 f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 a'\2> < fis
  fis,\6\laissezVibrer \invTNH a,,\6~ >] < a,,\6 b\4> < a'\2
  f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 fis> < b\4
  fis,\6\laissezVibrer> |
  % Bar 69
  \time 10/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(4 6 4 6) 
  < b'\1 f\5\laissezVibrer \invTNH gis,\5~ >[ < gis,\5 b\4> < a'\2
  fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6 fis> < b\4
  f\5\laissezVibrer \invTNH gis,\5~ >] 
  < gis,\5 b'\1>[ < b\4 fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6
  a'\2> < fis f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 b\4>] |
  % bar 70
  < b'\1 fis,\6\laissezVibrer \invTNH a,,\6~ >[ < a,,\6 b\4> < a'\2
  f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 fis> < b\4
  fis,\6\laissezVibrer \invTNH a,,\6~ >] 
  < a,,\6 b'\1>[ < b\4 f\5\laissezVibrer \invTNH gis,\5~ > < gis,\5
  a'\2> < fis fis,\6\laissezVibrer \invTNH a,,\6~ > < a,,\6 cis>] |
  % Bar 71
  < b'\1 f\5\laissezVibrer \invTNH gis,\5~ >[ < gis,\5 cis> < a'\2
  e\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 fis> < cis
  fis,\6\laissezVibrer>]
  < b'\1 fis\5\laissezVibrer>[ < cis e\5\laissezVibrer \invTNH gis,\5~ >
  < gis,\5 a'\2> < fis,\6\laissezVibrer fis> cis] |
  % Bar 72
  < b'\1 e\5\laissezVibrer \invTNH gis,\5~ >[ < gis,\5 cis> <
  fis,\6\laissezVibrer a'\2> < fis fis\5\laissezVibrer> < cis
  e\5\laissezVibrer \invTNH gis,\5~>] 
  < gis,\5 b'\1>[ < cis fis,\6\laissezVibrer> a'\2 < fis
  e\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 cis>] |
  % Bar 73
  < b'\1 fis,\6\laissezVibrer>[ < cis fis\5\laissezVibrer> < a'\2
  e\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 fis> < fis,\6 cis>]
  b'\1[ < cis e\5\laissezVibrer \invTNH gis,\5~ > < gis,\5 a'\2> < cis
  fis,\6\laissezVibrer> < cis fis\5\laissezVibrer>] |
  % Bar 74
  \time 12/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(4 6 4 6 4) 
  < b'\1 e\5\laissezVibrer \invTNH gis,\5~>[ < gis,\5 cis> < a'\2
  fis,\6\laissezVibrer> fis < cis e\5\laissezVibrer \invTNH gis,\5~ >]
  < gis,\5 b'\1>[ < cis fis,\6\laissezVibrer> < a'\2
  fis\5\laissezVibrer> < fis e\5\laissezVibrer \invTNH gis,\5~ > <
  gis,\5 cis>]
  < b'\1 fis,\6\laissezVibrer>[ cis] |
  % Bar 75
  \time 10/16
  \set Timing.baseMoment = #(ly:make-moment 1 32)
  \set Timing.beatStructure = #'(6 6 4 4) 
  < a'\1 d,\6\laissezVibrer>[ fis'\2 fis < a'\1 d\5\laissezVibrer>
  fis'\2 fis]
  % \once \tabSlur #`(0.5 0 -1 -1 0 0 -0.6 0)
  % \chordSlurT #0 #0.1 #-3.7 
  < a'\1 fis\4\laissezVibrer \invTNH cis\4~ >[ fis'\2 < fis
  d\5\laissezVibrer> < a'\1 cis>] |
  % Bar 76
  \set Timing.beatStructure = #'(6 4 6 4) 
  < fis'\2 d,\6\laissezVibrer>[ fis a'\1 < fis'\2 d\5\laissezVibrer>
  fis]
  % \once \tabSlur #`(0.8 0 -0.5 -0.5 0.5 0 -1.0 0)
  % \chordSlurT #28 #0.1 #-2.7 
  < a'\1 fis\4\laissezVibrer \invTNH cis\4~ >[ < fis'\2
  d\5\laissezVibrer> < cis\4 fis\3> a'\1 fis'\2] |
  % Bar 77
  \set Timing.beatStructure = #'(6 6 4 4) 
  cis,\6\laissezVibrer[ gis'\1 f'\2 < cis\5\laissezVibrer fis> gis'\1
  f'\2]
  < fis f\4\laissezVibrer \invTNH d\4~ >[ gis'\1 <
  cis\5\laissezVibrer f'\2> < fis cis\4 \invTNH d\4>] |
  % Bar 78
  \set Timing.beatStructure = #'(6 4 6 4) 
  < gis'\1 cis,\6\laissezVibrer>[ f'\2 fis < gis'\1
  cis\5\laissezVibrer> f'\2]
  < fis f\4\laissezVibrer \invTNH d\4~ >[ < gis'\1
  cis\5\laissezVibrer> < cis\4 f'\2 \invTNH d\4> < fis
  cis,\6\laissezVibrer> a'\1] |
  % Bar 79
  \set Timing.beatStructure = #'(6 6 4 4) 
  < fis'\2 d,\6\laissezVibrer>[ fis a'\1 < fis'\2 d\5\laissezVibrer>
  fis a'\1] 
  < fis'\2 fis\4\laissezVibrer \invTNH cis\4~ >[ fis < a'\1
  d\5\laissezVibrer> < fis'\2 cis\4>] |
  % Bar 80
  \set Timing.beatStructure = #'(6 4 6 4) 
  < fis d,\6\laissezVibrer>[ a'\1 fis'\2 < fis d\5\laissezVibrer>
  a'\1]
  < fis'\2 fis\4\laissezVibrer \invTNH cis\4~ >[ < fis
  d\5\laissezVibrer> < a'\1 cis\4> fis'\2 cis] |
  % Bar 81
  \time 16/16
  \set Timing.beatStructure = #'(6 6 6 8) 
  \set subdivideBeams = ##f
  < gis'\1 cis,\6\laissezVibrer>[ < f'\2 cis\5\laissezVibrer \invTNH
  gis,\5~ > < gis,\5~ fis>]
  < gis'\1 cis\5 \invTNH gis,\5>[ < f'\2 cis,\6\laissezVibrer \invTNH
  a,,\6~ > < a,,\6~ fis>]
  < gis'\1 d\5\laissezVibrer d,\6 \invTNH a,,\6>^glissando[ < f'\2
  cis\5 cis,\6> < gis,\5 cis\4>]
  r16 r16 r16 b'\1
  % Bar 82







  

}
% Score
  \book {
    \score {
      <<
        \new GrandStaff = "tab with traditional" \with {
          systemStartDelimiter = #'SystemStartBar
          \override SystemStartBar #'thickness = #5
          \override SystemStartBar #'X-offset = #-1
          \override StaffSymbol #'staff-space = #(magstep -2)
          fontSize = #-2
        }  <<
          \new Staff = "guitar traditional" <<
            \clef "treble_8"
            \context Voice = "upper" \upper
          >>
          \new Staff = "guitar traditional" <<
            \clef "bass_8"
            \context Voice = "lower" \lower
          >>
        >>
        \new TabStaff = "guitar tab" 
        <<
          \clef "moderntabII"
          \set Staff.stringTunings = \stringTuning < a,, gis, cis fis b cis'>
          \new TabVoice = "dynamicsone" \dynamicsone
          \new TabVoice = "dynamicstwo" \dynamicstwo
          \new TabVoice = "dynamicsthree" \dynamicsthree
          \new TabVoice = "tab" \tab
          \new TabVoice = "dynamicsfour" \dynamicsfour 
          \new TabVoice = "dynamicsfive" \dynamicsfive  
          \new TabVoice = "dynamicssix" \dynamicssix
          \new TabVoice = "lhOne" \lhOne
          \new TabVoice = "lhTwo" \lhTwo
          \new TabVoice = "lhThree" \lhThree
          \new TabVoice = "lhFour" \lhFour
          \new TabVoice = "sixstr" \sixstr
        >>
      >>
      %% Layout
      \layout {
        indent = 0\cm
        \context { 
          \Staff \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
        }
        \context {
          \Staff
          % \override TimeSignature #'space-alist #'first-note = #'(extra-space .  4.9) 
          }
        \context {
      \TabStaff
      \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
    }
      }
      \midi {}
    }
  }
