% Tab
  tab = {
%% stuff
    \textLengthOff
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextScript #'outside-staff-priority = ##f
    \set Staff.midiInstrument = #"acoustic grand"
    \override TabStaff.StaffSymbol #'thickness = #'1
    \key d \minor
    \numericTimeSignature
    \time 4/4
    \override Beam #'damping = #100000
    \override TabNoteHead #'whiteout = ##t
    \tabFullNotation
    \stemDown
    \override Rest #'font-size = #2 
    \override TabStaff.TimeSignature #'X-offset = #-1
    \override TabStaff.TimeSignature #'font-size = #5
    \override TabStaff.TabNoteHead #'font-name = #"Tex Gyre Heros"
    \override TabStaff.Glissando #'thickness = #0.5
    \override Staff.Stem #'stemlet-length = #2.75
    \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
    \override TupletBracket #'thickness = #'1
    \override TupletNumber #'text = \markup { \sans "3" }
    \override TupletNumber #'font-shape = #'upright
    \override TupletNumber #'font-size = #'-1
    \override TupletBracket #'edge-height = #'(0.5 . 0.5)
    \override TupletBracket #'extra-offset = #'(0 . -0.1)
    \override Score.BarNumber #'font-size = #'-6
    \override Score.OttavaBracket #'thickness = #'0.5
    \set Timing.baseMoment = #(ly:make-moment 1 8)
    \set Timing.beatStructure = #'(2 2 2 2)
    \set Timing.beamExceptions = #'()
    \override TabStaff.StaffSymbol #'thickness = #'0.75
    \override TabStaff.Beam #'beam-thickness = #'0.38
%% Music
    % Page 1
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 13))
    % Bar 1
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % bar 2
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % bar 3
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 4
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 56))
    \repeat volta 2 {
    % Bar 5
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 cis'\2 |
    % Bar 6
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 e'\1 |
    % Bar 7
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 8
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 97))
    % bar 9
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 b\2 |
    % Bar 10
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 e'\1 |
    % Bar 11
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 12
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    \break
    % Page2
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 8))
    % Bar 13
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 cis'\2 |
    % Bar 14
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 e'\1 |
    % Bar 15
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 16
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 50))
    % Bar 17
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 b\2 |
    % Bar 18
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 e'\1 |
    %% Check 1
    % Bar 19
    e, b, gis\4 e\3 b\2 gis\4 e\3 b\2 |
    % Bar 20
    e, b, gis\4 e\3 b\2 gis\4 e\3 b\2 |
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 91))
    % Bar 21
    \tieUp
    e, b, gis\4 e\3 < gis\4 gis\3 > \glissando < fis\4 fis\3 \fakeSlur
    g\4 \fakeSlur g\3  > ~ 
    < \fakeSlur g\4 \fakeSlur g\4 e\4 e\3 > ~ < \fakeSlur g\4
    \fakeSlur g\3 fis\4 fis\3 > | 
    % Bar 22
    cis, gis, fis\4 e\3 b fis\4 e\3 b |
    % Bar 23
    cis, gis, fis\4 e\3 b fis\4 e\3 b |
    % Bar 24
    dis\5 b\4 gis\3 dis' gis' dis' gis\3 gis' |
    \break
    % Page 3
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 8))
    % Bar 25
    dis\5 b\4 gis\3 dis' gis' dis' gis\3 gis' |
    % Bar 26
    cis\5 b\4 gis\3 dis' gis' dis' gis\3 gis' |
    % Bar 27
    cis\5 b\4 gis\3 dis' gis' dis' r8 a' |
    % Bar 28
    cis b\4 a\3 e'\2 a' e'\2 a\3 a' |
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 51))
    % Bar 29
    cis b\4 a\3 e'\2 a' e'\2 a\3 a' |
    % Bar 30
    cis b\4 a\3 e'\2 fis'\2 \glissando gis'\2 b' gis'\2 |
    % Bar 31
    a,\6 e\5 cis'\4 e\3 gis'\2 e\3 b' gis'\2 |
    % Bar 32
    a,\6 e\5 cis'\4 e\3 gis'\2 e\3 e' fis'\2 |
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 91))
    % Bar 33
    a,\6 e\5 cis'\4 e\3 fis'\2 e\3 e' fis'\2 |
    % Bar 34
    a,\6 e\5 cis'\4 e\3 fis'\2 e\3 e' dis'\2 |
    % Bar 35
    e, b, gis\4 e\3 dis'\2 e\3 e' dis'\2 |
    % Bar 36
    e, b, gis\4 e\3 dis'\2 e\3 e' dis'\2 |
    \break
    % Page 4
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 8))
    % Bar 37
    cis, gis, gis\4 e\3 dis'\2 e\3 e' dis'\2 |
    % Bar 38
    cis, gis, gis\4 e\3 dis'\2 e\3 e' cis'\2 |
    % Bar 39
    cis, gis, gis\4 e\3 cis'\2 e\3 e' cis'\2 |
    % Bar 40
    cis, gis, gis\4 e\3 cis'\2 e\3 e' cis'\2 |
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 50))
    % Bar 41
    cis, a, gis\4 e\3 cis'\2 e\3 e' cis'\2 |
    % Bar 42
    cis, a, gis\4 e\3 cis'\2 e\3 b cis'\2 |
  }
    % Bar 43
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 cis'\2 |
    % Bar 44
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 e'\1 |
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 91))
    % Bar 45
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 46
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % bar 47
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 b\2 |
    % Bar 48
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 e'\1 |
    \break
    % Page 5
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 8))
    % Bar 49
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 50
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 51
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 cis'\2 |
    % Bar 52
    e,\6 a, e\4 e\3 cis'\2 e\3 e\4 e'\1 |
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 50))
    % Bar 53
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 54
    gis,8\6 b,\5 e\4 e\3 b\2 e\3 e\4 b\2 | 
    % Bar 55
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 b\2 |
    % Bar 56
    a,\6 cis\5 cis'\4 e\3 b\2 e\3 cis'\4 e'\1 |
    \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 91))
    % Bar 57
    e, b, e\3 gis\4 b4 ~ b4 |
    % Bar 58
    e'4 ~ e' ~ e' ~ e' \bar "|." 
  }


