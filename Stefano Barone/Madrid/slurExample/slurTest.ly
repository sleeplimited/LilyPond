\version "2.18.2"

\new TabStaff {
  \tabFullNotation
  \set tieWaitForNote = ##t
  < bis'\1 g\4 \tweak TabNoteHead.color #white \tweak
  TabNoteHead.layer #-1 d\4~>16[ < fis'\2
  ees\5> < g\3 d\4>]
}
