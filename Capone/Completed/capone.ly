\version "2.16.2"
\pointAndClickOff

\paper { 
  #(set-paper-size "letter")
  % see:  http://code.google.com/p/lilypond/issues/detail?id=2576

  #(define (not-last-page layout props arg) 
  (if (not (book-last-page? layout props)) 
    (interpret-markup layout props arg) 
    empty-stencil)) 

tocItemMarkup = \tocItemWithDotsMarkup 

oddHeaderMarkup = ""

evenHeaderMarkup = \oddHeaderMarkup 

oddFooterMarkup = 
\markup \fill-line { 
  % using \line removes empty-stencils 
  % produced by #not-first-page etc 
  \line { 
    % page-number not on first-page 
    \on-the-fly #not-first-page 
    % page-number not on last-page 
    \on-the-fly #not-last-page 
    \concat { Capone " " 07/04/13 " " \fromproperty #'page:page-number-string /13
  } 
  % copyright on first page 
  \on-the-fly #first-page \fromproperty #'header:copyright 
  % tagline on last page 
  \on-the-fly #last-page \fromproperty #'header:tagline 
} 
  } 
  evenFooterMarkup = \oddFooterMarkup 
} 
\header {
  title = "Capone"
  composer = "Rachael"
  poet = \markup \concat { \fontsize #-1 { C\sub{1} G\sub{2} E\flat\sub{3} G\sub{3} C\sub{4} E\flat\sub{4} } }
  copyright = \markup {  \general-align #Y #DOWN {
    \epsfile #X #10 #"/mnt/7FB647806677FD2E/SleepLimitedPublishing/LilyPond/Capone/by-nd.eps" } } 
    tagline = \markup { \with-url #"http://www.sleeplimited.org"
    \line { Engraved with Lilypond by Rachael Thomas Carlson for Sleep Limited Publications <rtc@sleeplimited.org>. } 
  }
 }
  rhc = \markup { \fontsize #-5 \italic "c" }
  rha = \markup { \fontsize #-5 { \italic "a" } }
  rhm = \markup { \fontsize #-5 \italic "m" }
  rhi = \markup { \fontsize #-5 \italic "i" }
  rhp = \markup { \fontsize #-5 \italic "p" }
  lhone = \markup { \fontsize #-6 \circle "1" }
  lhtwo = \markup { \fontsize #-6 \circle "2" }
  lhthree = \markup { \fontsize #-6 \circle "3" }
  lhfour = \markup { \fontsize #-6 \circle "4" }
  lhthumb = \markup { \fontsize #-6 \circle "t" }
  lhguideone = \markup { \fontsize #-6 \circle "-1" }
  lhguidetwo = \markup { \fontsize #-6 \circle "-2" }
  lhguidethree = \markup { \fontsize #-6 \circle "-3" }
  lhguidefour = \markup { \fontsize #-6 \circle "-4" }
  lhguidethumb = \markup { \fontsize #-6 \circle "-T" }


  startAcciaccaturaMusic = {
    s1*0(
    \override Stem #'stroke-style = #"grace"
    \override Stem #'length = #3
    \override Slur #'transparent = ##t
  }
  stopAcciaccaturaMusic = {
    \revert Stem #'stroke-style
    \revert Stem #'length
    \override Slur #'transparent = ##f
    \slurSolid
    s1*0)
  }

  top = {
    \numericTimeSignature
    \time 4/4
    \tempo 4 = 128
    \key c \minor
    \voiceOne
    % Bar 1
    \override Staff.NoteHead  #'style = #'harmonic-mixed
    s4. c''2 ees''8~ |
    % Bar 2
    ees''4. c''2 ees''8~ |
    % Bar 3
    ees''4. c''2 ees''8~ |
    % Bar 4
    ees''4. c''2 ees''8~ |
    % Bar 5
    ees''4. c''2 ees''8~ |
    % Bar 6
    ees''4. c''2 ees''8~ |
    % Bar 7
    ees''4. c''2 ees''8~ |
    % Bar 8
    ees''4. c''2 ees''8~ |
    % Bar 9
    ees''4. c''2 ees''8~ |
    % Bar 10
    ees''4. c''2 ees''8~ |
    % Bar 11
    ees''4. c''2 ees''8~ |
    % Bar 12
    ees''4. c''2 ees''8~ |
    % Bar 13
    ees''4. c''2 ees''8~ |
    % Bar 14
    ees''4. c''2 ees''8~ |
    % Bar 15
    ees''4. c''2 ees''8~ |
    % Bar 16
    ees''4. c''2 ees''8~ |
    % Bar 17
    ees''4. c''2 \ottava #0 \revert Staff.NoteHead #'style ees'8~ |
    % Bar 18
    ees'2 r4 r8 ees'8~ |
    % Bar 19
    ees'2. |
    % Bar 20
    s4 s4 r8 g'8~ |
    % Bar 21
    g'2 g'8( ees')~ |
    % Bar 22
    ees'2. |
    % Bar 23
    s2 \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 \slurDown g''8( bes''~ |
    % Bar 24
    <bes'' g''>2.) |
    % Bar 25
    s2 \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1 \slurUp ees'''8( c'''~ |
    % Bar 26
    <c''' ees'''>2.) |
    % Bar 27
    \override Staff.NoteHead #'style = #'harmonic-mixed \ottava #1  <c''' ees'''>2-\repeatTie \ottava #0 \revert Staff.NoteHead #'style ees'8 c' |
    %%
    %% Bar 28
    %%
    \time 2/4
    aes'8 \glissando bes'( g'4)~ |
    % Bar 29
    \time 3/4
    g'2~ g'8 g'8~ |
    % Bar 30
    \time 2/4
    g'2 |
    % Bar 31
    aes'8 \glissando bes'( ees'4)~ |
    % Bar 32
    \compoundMeter #'((1 4) (3 8))
    ees'2~ ees'8 |
    % Bar 33
    \time 2/4
    s2 |
    % Bar 34
    \time 6/4
    s4 f'8 ees'8~ ees'8 r8 f'8 ees'8~ ees'8 r8 f'8 g'8~ |
    % Bar 35
    g'2   \slurDown f'8( g'8~ |
    % Bar 36
    <g' f'>2) f'8 ees'8~ |
    % Bar 37
    ees'2. |
    % Bar 38
    s2. |
    %%
    %% Bar 39
    %%
    \time 5/4
    \repeat volta 2 {
      < \parenthesize aes' \parenthesize c'>2.-\repeatTie ees'8( f') \grace f'8 \glissando g'4~ |
      % Bar 40
      \time 3/4
      g'2~ g'8 g'8~ |
      % Bar 41
      \time 4/4
      g'2 aes'8 \glissando bes' \grace bes'8 \glissando aes'4~ |
      % Bar 42
      aes'4. r8 c'8( aes'8~ |
      % Bar 43
      <aes' c'>2) aes'8 \glissando g'8 g'4~ |
      % Bar 44
      g'2 c'8( aes'8~ |
    }
    % Bar 45
    <aes' c'>2.) |
    % Bar 46
    \time 2/4
    \repeat volta 2 {
      \grace aes'8 \glissando bes'4 \grace aes'8 \glissando bes'4~ |
      % Bar 47
      bes'2 c'8( bes'~ |
      % Bar 48
      <bes' c'>2) bes'4\staccato |
      % Bar 49
      aes'2. |
      % Bar 50
      \time 2/4
      aes'8 \glissando g'8 g'4~ |
      % Bar 51
      g'2 |
      % Bar 52
      \grace ees'8 \glissando f'4 \grace ees'8 \glissando f'4~ |
      % Bar 53
      f'2 |
      % Bar 54
      \override Staff.NoteHead #'style = #'harmonic-mixed g'4 \revert Staff.NoteHead #'style ees'4~ |
      % Bar 55
      ees'2. |
      % Bar 56
      s2. |
    }
    %%
    %% Bar 57
    %%
    \time 4/4
    s4. c'2 ees'8~ |
    % Bar 58
    ees'4. c'2 ees'8~ |
    % Bar 59
    ees'4. c'2 ees'8~ |
    % Bar 60
    ees'4. c'2 ees'8~ |
    % Bar 61
    ees'4. c'2 ees'8~ |
    % Bar 62
    ees'4. c'2 ees'8~ |
    % Bar 63
    ees'4. c'2 ees'8~ |
    % Bar 64
    ees'4. c'2 ees'8~ |
    % Bar 65
    ees'4. c'2 ees'8~ |
    % Bar 66
    ees'4. c'2 ees'8~ |
    % Bar 67
    ees'4. c'2 ees'8~ |
    % Bar 68
    ees'4. c'2 ees'8~ |
    % Bar 69
    ees'4. c'2 ees'8~ |
    % Bar 70
    ees'4. c'2 ees'8~ |
    % Bar 71
    ees'4. c'2 ees'8~ |
    % Bar 72
    ees'4. c'2 ees'8~ |
    % Bar 73
    ees'4. c'2 ees'8~ |
    % Bar 74
    ees'4. c'2 ees'8~ |
    % Bar 75
    ees'4. c'2 ees'8~ |
    % Bar 76
    ees'4. c'2 ees'8~ |
    % Bar 77
    ees'4. c'2 ees'8 |
    %%
    %% Bar 78
    %%
    s2 r8 c'4. ~ |
    % Bar 79
    c'4. ees'2~ ees'8~ |
    % Bar 80
    ees'2 r8 c'4.~ |
    % Bar 81
    c'4. ees'2~ ees'8~ |
    % Bar 82
    ees'2 r8 c'4.~ |
    % Bar 83
    c'4. ees'2~ ees'8~ |
    % Bar 84
    ees'2 r8 c'4.~ |
    % Bar 85
    c'4. ees'2~ ees'8~ |
    %%
    %% Bar 86
    %%
    ees'2 r8 c'8\staccato r4 |  
    % Bar 87
    r4 r8 ees'2~ ees'8~ |
    % Bar 88
    ees'2 r8 c'8\staccato r4 |  
    % Bar 89
    r4 r8 ees'2~ ees'8~ |
    % Bar 90
    ees'2 r8 c'8\staccato r4 |  
    % Bar 91
    r4 r8 ees'2~ ees'8~ |
    % Bar 92
    ees'2 r8 c'8\staccato r4 |  
    % Bar 93
    r4 r8 ees'2~ ees'8~ |
    % Bar 94
    ees'2 r8 c'8\staccato r4 |  
    % Bar 95
    r4 r8 ees'2~ ees'8~ |
    % Bar 96
    ees'2 r8 c'8\staccato r4 |  
    % Bar 97
    r4 r8 ees'2~ ees'8~ |
    % Bar 98
    ees'2 r8 c'8\staccato r4 |  
    % Bar 99
    r4 r8 ees'2~ ees'8~ |
    % Bar 100
    ees'2 r8   \override Staff.NoteHead  #'style = #'harmonic-mixed <c'' ees''>4.~ |  
    % Bar 101
    \override Voice.NoteHead  #'style = #'harmonic-mixed <c'' ees''>4. \revert Voice.NoteHead #'style <c' ees'>2~ <c' ees'>8~ |
    % Bar 102
    <c' ees'>2 r8 \override Staff.NoteHead  #'style = #'harmonic-mixed <c'' ees''>4.~ |  
    % Bar 103
    \override Staff.NoteHead  #'style = #'harmonic-mixed  <c'' ees''>4. \revert Staff.NoteHead #'style <c' ees'>2~ <c' ees'>8 |
    %%
    %% 104
    %%
    \override Staff.NoteHead  #'style = #'harmonic-mixed <c'' ees''>1\arpeggio  |
    % Bar 105
    \time 3/4
    \revert Staff.NoteHead #'style   <aes' f'>4. <aes' f'>8 <aes' f'>4 |
    % Bar 106
    \time 2/4
    \appoggiatura <c' ees'>8\arpeggio  \override Staff.NoteHead  #'style = #'harmonic-mixed \ottava #1 bes''4.\fermata \revert Staff.NoteHead #'style \ottava #0 bes'8\fermata |
    % Bar 107
    \time 3/4
    bes'2 ees'8( bes'8~ |
    % Bar 108
    <bes' ees'>2) ees'8 bes'8~ |
    % Bar 109
    bes'2 bes'8( aes')~ |
    % Bar 110
    aes'2 bes'8 \glissando c'' |
    % Bar 111
    \time 4/4
    bes'2. d''4 |
    % Bar 112
    \time 3/4
    \override Staff.NoteHead  #'style = #'harmonic-mixed ees''2.~ |
    %%
    %% Bar 113
    %%
    \override Staff.NoteHead  #'style = #'harmonic-mixed ees''2. |
    % Bar 114
    \revert Staff.NoteHead #'style  s2. |
    % Bar 115
    s2 des'8( g'8~ |
    % Bar 116
    <g' des'>2) g'8 \glissando aes'8( |
    % Bar 117
    f'2) f'8( g'8)~ |
    % Bar 118
    g'2. |
    % Bar 119
    s2. |
    %%
    %% Bar 120
    %%
    \time 2/4
    aes'8 \glissando bes'8( g'4)~ |
    % Bar 121
    g'2 r8 g'8~ |
    % Bar 122
    g'2 |
    % Bar 123
    aes'8 \glissando bes'8( ees'4)~ |
    % Bar 124
    \compoundMeter #'((1 4) (3 8))
    ees'2~ ees'8 |
    % Bar 125
    \time 2/4
    s2
    % Bar 126
    \time 6/4
    s4 f'8 ees'8~ ees'8 r8 f'8 ees'8~ ees'8 r8 f'8 g'8~ |
    % Bar 127
    \time 3/4
    g'2 f'8( g'8~ |
    % Bar 128
    <g' f'>2) f'8 ees'8~ |
    % Bar 129
    ees'2. |
    % Bar 130
    s2. |
    % Bar 131
    \grace aes'8 \glissando bes'4 \grace aes'8 \glissando bes'4~ |
    % Bar 132
    bes'2 c'8( bes'8~ |
    % Bar 133
    <bes' c'>2) bes'4\staccato |
    % Bar 134
    aes'2. |
    % Bar 135
    aes'8 \glissando g'8 g'4~ |
    % Bar 136
    g'2 |
    % Bar 137
    \time 4/4
    d'2( ees') \bar "|."


  }

  upper = {
    \voiceTwo
    \numericTimeSignature
    \time 4/4
    \tempo 4 = 128
    \key c \minor
    % Bar 1
    \override Staff.NoteHead  #'style = #'harmonic-mixed
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 2
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 3
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 4
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 5
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 6
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 7
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 8
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 9
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 10
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 11
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 12
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 13
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 14
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 15
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 16
    ees'8 g' ees' c'' ees' g' ees' ees'' |
    % Bar 17
    ees'8 g' ees' c'' ees' g' ees' ees' |

    %%
    %% Bar 18
    %%
    \revert Staff.NoteHead #'style
    r8 c'2 c'4 r8 |
    % Bar 19
    \time 3/4
    b8\rest c'8 b8\rest bes8 b8\rest g8 |
    % Bar 20
    r8 c'4 c'4. |
    % Bar 21
    r8 c'4 c'4. |
    % Bar 22
    b8\rest c'8 b8\rest bes8 b8\rest g8 |
    % Bar 23
    s4 aes2 |
    % Bar 24
    s4 \revert Staff.NoteHead #'style \ottava #0 aes4 s4 |
    % Bar 25
    s4 g2 |
    % Bar 26
    s4 g4 s4 |
    % Bar 27
    s4 g2 |
    %%
    %% Bar 28
    %%
    s2 |
    % Bar 29
    b8\rest c'4 c'4 s8 |
    % Bar 30
    b8\rest c'4 c'8 |
    % Bar 31
    s2 |
    % Bar 32
    s4 aes4. |
    % Bar 33
    s8 aes4. |
    % Bar 34
    s2 s2 s2 |
    % Bar 35
    s4 g2 |
    % Bar 36
    s4 g2 |
    % Bar 37
    s4 g4 g4 |
    % Bar 38
    s4 g4 g4|
    % Bar 39
    s4 g4 g4 s2 |
    % BAr 40
    s8 c'4 c'4. |
    % Bar 41
    s8 c'4 c'4~ c'4. |
    % Bar 42
    s4 aes2 |
    % Bar 43
    s4 aes2 r4 |
    % Bar 44
    s4 g2 |
    % Bar 45
    s4 g4 g4 |
    %%
    %% Bar 46
    %%
    s2 |
    % BAr 47
    s4 d'2 |
    % Bar 48
    s4 d'2 |
    % Bar 49
    s2 d'4 |
    % Bar 50
    s2 |
    % Bar 51
    s4 d'4 |
    % Bar 52
    s2 |
    % Bar 53
    s4 ees4 |
    % Bar 54
    s2 |
    % Bar 55
    s4 d'4 d'8 c'8 |
    % Bar 56
    s4 d'4 d'8 c'8 |
    %%
    %% Bar 57
    %%
    d'4 d' d' d' |
    % Bar 58
    d'4 d' d' d' |
    % Bar 59
    s4 d' d' d' |
    % Bar 60
    d'4 d' d' d' |
    % Bar 61
    s4 d' d' d' |
    % Bar 62
    d'4 d' d' d' |
    % Bar 63
    s4 d' d' d' |
    % Bar 64
    s4 d' d' d' |
    % Bar 65
    d'4 d' d' d' |	
    % Bar 66
    s4 d' d' d' |
    % Bar 67
    s4 d' d' d' |
    % Bar 68
    d'4 d' d' d' |	
    % Bar 69
    s4 d' d' d' |
    %%
    %% Bar 70
    %%
    s4 ees' ees' ees' |
    % Bar 71
    ees'4 ees' ees' ees' |
    % Bar 72
    d' d' d' d' |
    % Bar 73
    bes bes bes bes |
    % Bar 74
    aes aes aes aes |
    % Bar 75
    g g g g |
    % Bar 76
    s4 g g g |
    % Bar 77
    s4 g g g |
    %%
    %% Bar 78
    %%
    s4 aes4 aes2 |
    % Bar 79
    aes4 aes2 aes8 s8 |
    % Bar 80
    s4 aes4 aes2 |
    % Bar 81
    aes4 aes2 aes8 s8 |
    % Bar 82
    s4 g4 g2 |
    % Bar 83
    g4 g2 g8 s8 |
    % Bar 84
    s4 g4 g2 |
    % Bar 85
    g4 g2 g8 s8 |
    % Bar 86
    s4 aes4 aes2 |
    % Bar 87
    aes4 aes2 aes8 s8 |
    % BAr 88
    s4 aes4 aes2 |
    % Bar 89
    aes4 aes2 aes8 s8 |
    % Bar 90
    s4 g4 g2 |
    % Bar 91
    g4 g2 g8 s8 |
    % Bar 92
    s4 g4 g2 |
    % Bar 93
    g4 g2 g8 s8 |
    % Bar 94
    s4 aes4 aes2 |
    % Bar 95
    aes4 aes2 aes8 s8 |
    % Bar 96
    s4 aes4 aes2 |
    % Bar 97
    aes4 aes2 aes8 s8 |
    % Bar 98
    s4 bes4 bes2 |
    % Bar 99
    bes4 bes2 bes8 s8 |
    % Bar 100
    s4 c'4 c'2 |
    % Bar 101
    c'4 c'2 c'8 s8 |
    % Bar 102
    s4 d'4 d'2 |
    % Bar 103
    \once \override Voice.NoteHead #'style = #'default d'4 d'2 d'8 s8 |
    %%
    %% Bar 104
    %%
    \harmonicByRatio #1/2 ees1 |
    % Bar 105
    aes4. aes8 aes4 |
    % Bar 106
    \appoggiatura ees8 \ottava #1 \harmonicByRatio #1/3 ees2 |
    % Bar 107
    \ottava #0 s2. |
    % Bar 108
    s2. |
    % Bar 109
    s2. |
    % Bar 110
    s2. |
    % Bar 111
    s1 |
    % Bar 112
    s2. |
    % Bar 113
    s4 \revert Staff.NoteHead #'style f4 f4 |
    % Bar 114
    s4 f4 f4 |
    % Bar 115
    s4 f2 |
    % Bar 116
    s4 f4 s4 |
    % Bar 117
    s4 g2 |
    % Bar 118
    s4 g4 g4 |
    % Bar 119
    s4 g4 g4 |
    %%
    %% Bar 120
    %%
    s2 |
    % Bar 121
    b8\rest c'4 c'4 s8 |
    % Bar 122
    b8\rest c'4 c'8 |
    % Bar 123
    s2 |
    % Bar 124
    s4 aes4. |
    % Bar 125
    s8 aes4. |
    % Bar 126
    s2 s2 s2 |
    % Bar 127
    s4 g2 |
    % Bar 128
    s4 g2 |
    % Bar 129
    s4 g4 g4 |
    % Bar 130
    s4 g4 g4 |
    % Bar 131
    s2 |
    % Bar 132
    s4 d'2 |
    % Bar 133
    s4 d'2 |
    % Bar 134
    s2 d'4 |
    % Bar 135
    s2 |
    % Bar 136
    s4 d'4 |
    % Bar 137
    ees'1 \bar "|."



  }

  lower = {
    \numericTimeSignature
    \time 4/4
    \clef "treble_8"
    \key c \minor
    \voiceThree
    % Bar 1
    \override Staff.NoteHead  #'style = #'harmonic-mixed
    s1 |
    % Bar 2
    s1 |
    % Bar 3
    s1 |
    % Bar 4
    s1 |
    % Bar 5
    \override Staff.NoteHead  #'style = #'harmonic-mixed
    s1 |
    % Bar 6
    s1 |
    % Bar7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    s1 |
    % Bar 10
    s1 |
    % Bar 11
    s1 |
    % Bar 12
    s1 |
    % Bar 13
    s1 |
    % Bar 14
    s1 |
    % Bar 15
    s1 |
    % Bar 16
    s1 |
    % Bar 17
    s1 |

    %%
    %% Bar 18
    %%
    \revert Staff.NoteHead #'style
    s1 |
    % Bar 19
    \time 3/4
    s2. |
    % Bar 20
    r4 c'2  |
    % Bar 21
    s4 c'2 |
    % Bar 22
    s2. |
    % Bar 23
    b8\rest g4 g4. |
    % Bar 24
    b8\rest   \revert Staff.NoteHead #'style \ottava #0 g4 g8 b8\rest g8 |
    % Bar 25
    b8\rest g4 g4. |
    % Bar 26
    b'8\rest   \revert Staff.NoteHead #'style \ottava #0 g4 g8 b8\rest g8 |
    % Bar 27
    b'8\rest \revert Staff.NoteHead #'style \ottava #0 g4 g4. |
    %%
    %% Bar 28
    %%
    \time 2/4
    s2 |
    % Bar 29
    \time 3/4
    s4 c'4. b8\rest |
    % Bar 30
    \time 2/4
    s4  c'4 |
    % Bar 31
    s2 |
    % Bar 32
    \compoundMeter #'((1 4) (3 8))
    b8\rest g8~ g8 \slurDown g8( c'~ |
    % Bar 33
    \time 2/4
    <c' g>8) s8 g8( c'~ |
    % Bar 34
    \time 6/4
    <c' g>8) \stemDown g2 g2 g4. | 
    % Bar 35
    \time 3/4
    \stemNeutral
    b4\rest s8 g8~ g4 |
    % Bar 36
    g4\rest s8 g8~ g4 |
    % Bar 37
    g4\rest s8 g4 g8 |
    % Bar 38
    b4\rest s8 g4 g8 |
    %%
    %% Bar 39
    %%
    \time 5/4
    e4\rest s8 g4 g8~ g2 |
    % Bar 40
    \time 3/4
    b8\rest s8 c'2 |
    % Bar 41
    \time 4/4
    b8\rest s8 c'2. |
    % Bar 42
    \time 3/4
    b8\rest g4 g4. |
    % Bar 43
    \time 4/4
    b,8\rest g4 g2~ g8  |
    % Bar 44
    \time 3/4
    b4\rest s8 g4. |
    % Bar 45
    d4\rest s8 g4 g8 |
    % Bar 46
    s2 |
    % Bar 47
    \time 3/4
    b8\rest g4 \tieDown g4.~ |
    % Bar 48
    g8 \tieNeutral g4 g4. |
    % Bar 49
    b4\rest b8\rest g4 g8 |
    % Bar 50
    \time 2/4
    s2 |
    % Bar 51
    b8\rest g4 g8 |
    % Bar 52
    s2 |
    % Bar 53
    b8\rest ees'4. |
    % Bar 54
    s2 |
    % Bar 55
    \time 3/4
    b8\rest ees'4 ees'4.~ |
    % Bar 56
    ees'8 ees'4 ees'4. |
    %%
    %% Bar 57
    %%
    \time 4/4
    s8 g2 g4. |
    % Bar 58
    s8 g2 g4. |
    % Bar 59
    b8\rest g2 g4. |
    % Bar 60
    s8 g2 g4. |
    % Bar 61
    b8\rest g2 g4. |
    % Bar 62
    s8 g2 g4. |
    % Bar 63
    b8\rest g2 g4. |
    % Bar 64
    b8\rest g2 g4. |
    % Bar 65
    s8 g2 g4. |
    % Bar 66
    b8\rest g2 g4. |
    % Bar 67
    b8\rest g2 g4. |
    % Bar 68
    s8 g2 g4. |
    % Bar 69
    b8\rest g2 g4. |
    % Bar 70
    b8\rest g2 g4. |
    % Bar 71
    s8 g2 g4. |
    % Bar 72
    s8 g2 g4. |
    % Bar 73
    s8 g2 g4. |
    % Bar 74
    s8 g2 g4. |
    % Bar 75
    s8 g2 g4. |
    % Bar 76
    b8\rest g2 g4. |
    % Bar 77
    b8\rest g2 g4. |
    %%
    %% Bar 78
    %%
    b8\rest g8 s8 g8 s4 b8\rest \stemDown g8 |
    % Bar 79
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 80
    g8 g8 s8 \stemNeutral g8 s4 b8\rest \stemDown g8 |
    % Bar 81
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 82
    g8 g8 s8 \stemNeutral g8 s4 b8\rest \stemDown g8 |
    % Bar 83
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 84
    g8 g8 s8 \stemNeutral g8 s4 b8\rest \stemDown g8 |
    % Bar 85
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 86
    g8 g8 s8 \stemNeutral g8 s4 g8\rest \stemDown g8 |
    % Bar 87
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 88
    g8 g8 s8 \stemNeutral g8 s4 g8\rest \stemDown g8 |
    % Bar 89
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 90
    g8 g8 s8 \stemNeutral g8 s4 g8\rest \stemDown g8 |
    % Bar 91
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 92
    g8 g8 s8 \stemNeutral g8 s4 g8\rest \stemDown g8 |
    % Bar 93
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 94
    g8 g8 s8 \stemNeutral g8 s4 g8\rest \stemDown g8 |
    % Bar 95
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 96
    g8 g8 s8 \stemNeutral g8 s4 g8\rest \stemDown g8 |
    % Bar 97
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 98
    g8 g8 s8 \stemNeutral g8 s4 g8\rest \stemDown g8 |
    % Bar 99
    s8 \stemNeutral g8 s4 s8 g8 s8 \stemDown g8~ |
    % Bar 100
    g8 g4 \stemNeutral g8 s4 g8\rest \stemDown \revert Staff.NoteHead #'style g8 |  
    % Bar 101
    s8 \revert Staff.NoteHead #'style g2 g4 g8~ |
    % Bar 102
    g8 g4 \stemNeutral g8 s4 g8\rest \stemDown \revert Staff.NoteHead #'style g8 |  
    % Bar 103
    s8 \revert Staff.NoteHead #'style g2 g4 g8 |
    % Bar 104
    \harmonicByRatio #1/2 g1 |
    % 105
    \revert Staff.NoteHead #'style
    c'4. c'8 c'4 
    % Bar 106
    \time 2/4
    \appoggiatura g8 \ottava #1 \harmonicByRatio #1/3 <g c'>2 |
    %%
    %% Bar 107
    %%
    \ottava #0 b4\rest g8( bes~ <bes g>4) |
    % Bar 108
    b4\rest g8( bes~ <bes g>4) |
    % Bar 109
    b4\rest aes8( c'~ <c' aes>4) |
    % Bar 110
    b4\rest aes8 c' b4\rest |
    % Bar 111
    b4\rest b8\rest bes8~ <bes d'>2 |
    % Bar 112
    s2. |
    % Bar 113
    b4\rest s8 g4 g8 |
    % Bar 114
    b4\rest s8 aes4 aes8 |
    % Bar 115
    b4\rest s8 aes4. |
    % Bar 116
    e4\rest s8 aes8 e4\rest |
    % Bar 117
    e4\rest s8 g4. |
    % Bar 118
    b4\rest s8 g4 g8 |
    % Bar 119
    b4\rest s8 g4 g8 |
    % Bar 120 Same as Bar 28
    \time 2/4
    s2 |
    % Bar 121
    \time 3/4
    \stemUp
    s4 c'4. b8\rest |
    % Bar 122
    \time 2/4
    s4  c'4 |
    % Bar 123
    s2 |
    % Bar 124
    \compoundMeter #'((1 4) (3 8))
    b8\rest g8~ g8 \slurDown g8( c'~ |
    % Bar 125
    \time 2/4
    <c' g>8) s8 g8( c'~ |
    % Bar 126
    \time 6/4
    <c' g>8) \stemDown g2 g2 g4. | 
    % Bar 127
    \time 3/4
    \stemNeutral
    g4\rest s8 g8~ g4 |
    % Bar 128
    g4\rest s8 g8~ g4 |
    % Bar 129
    g4\rest s8 g4 g8 |
    % Bar 130
    g4\rest s8 g4 g8 |
    % Bar 131
    s2 |
    % Bar 132
    \time 3/4
    b8\rest g4 \tieDown g4.~ |
    % Bar 133
    g8 \tieNeutral g4 g4. |
    % Bar 134
    b4\rest b8\rest g4 g8 |
    % Bar 135
    \time 2/4
    s2 |
    % Bar 136
    b8\rest g4 g8 |
    % Bar 137
    s1 \bar "|."

  }

  bottom = {
    \numericTimeSignature
    \time 4/4
    \clef "treble_8"
    \key c \minor
    % Bar 1
    R1 |
    % Bar 2
    R1 |
    % Bar 3
    R1 |
    % Bar 4
    R1 |
    % Bar 5
    \override Staff.NoteHead #'style = #'harmonic-mixed
    g1 |
    % Bar 6
    R1 |
    % Bar 7
    \revert Staff.NoteHead #'style
    f1 |
    % Bar 8
    R1 |
    % Bar 9
    \revert Staff.NoteHead #'style
    ees1 |
    % Bar 10
    s1 |
    % Bar 11
    \override Staff.NoteHead #'style = #'harmonic-mixed
    c1~ |
    % Bar 12
    c1 |
    % Bar 13
    R1 |
    % Bar 14
    R1 |
    % Bar 15
    g1 |
    % Bar 16
    \revert Staff.NoteHead #'style
    f1 |
    % Bar 17
    \revert Staff.NoteHead #'style
    ees1 |

    %%
    %% Bar 18
    %%
    \revert Staff.NoteHead #'style
    c4 ees4 c4 ees4 |
    % Bar 19
    \time 3/4
    \clef "bass_8"
    c bes, g, |
    % Bar 20
    \repeat volta 2 {
      c2 ees4 |
      % Bar 21
      c2. |
      % Bar 22
      c4 bes, g, |
      % Bar 23
      f,2. |
      % Bar 24
      f,2 g,4 |
      % Bar 25
      ees,2.
    }
    % Bar 26
    \alternative {
      {ees,2 g,4 }
      % Bar 27
      {ees,2.}
    }

    %%
    %% Bar 28
    %%
    \repeat volta 2 {
      \time 2/4
      r4 g, |
      % Bar 29
      c2 ees4 |
      % Bar 30
      \time 2/4
      c2 |
      % Bar 31
      r4 g,4 |
      % Bar 32
      \compoundMeter #'((1 4) (3 8))
      f,2~ f,8 |
      % Bar 33
      \time 2/4
      f,2 |
      % Bar 34
      \time 6/4
      f,2 f,2 f,2 |
      % Bar 35
      \time 3/4
      \slurDown
      ees,8( bes,~ <bes, ees,>2)
      % Bar 36
      \slurDown
      ees,8( bes,~ <bes, ees,>2)
      % Bar 37
      \slurDown
      ees,8( bes,~ <bes, ees,>2)
    }
    % Bar 38
    \slurDown
    ees,8( bes,~ <bes, ees,>2)
    % Bar 39
    \repeat volta 2 {
      \time 5/4
      \slurDown
      ees,8( bes,~ <bes, ees,>2)~ <bes, ees,>2 |
      % Bar 40
      \time 3/4
      c2 ees4 |
      % Bar 41
      \time 4/4
      c2 r2 |
      % Bar 42
      \time 3/4
      f,2. |
      % Bar 43 
      \time 4/4
      f,2 r2 |
      % Bar 44
      \time 3/4
      \slurDown
      ees,8( bes,~ <bes, ees,>2)  
    }
    % Bar 45
    \slurDown
    ees,8( bes,~ <bes, ees,>2)
    %%
    %% Bar 46
    %%
    R2 |
    % Bar 47
    \time 3/4
    g,2. |
    % Bar 48
    g,2. |
    % Bar 49
    aes,2.~ |
    % Bar 50
    \time 2/4
    aes,2 |
    % Bar 51
    aes,2 |
    % Bar 52
    R2 |
    % Bar 53
    bes,2 |
    % Bar 54
    R2 |
    % Bar 55
    \time 3/4
    aes,2. |
    % Bar 56
    aes,2. | 

    %%
    %% Bar 57
    %%
    \time 4/4
    R1 |
    % Bar 58
    R1 |
    % Bar 59
    aes,1 |
    % Bar 60
    R1 |
    % Bar 61
    g,1 |
    % Bar 62
    R1 |
    % Bar 63
    g,1 |
    % Bar 64
    f,1~ |
    % Bar 65
    f,1 |
    % Bar 66
    g,1 |
    % Bar 67
    ees,1~ |
    % Bar 68
    ees,1 |
    % Bar 69
    g,1 |
    %%
    %% Bar 70
    %%
    c,1~ |
    % Bar 71
    c,1 |
    % Bar 72
    R1 |
    % Bar 73
    R1 |
    % Bar 74
    R1 |
    % Bar 75
    R1 |
    % Bar 76
    ees,1 |
    % Bar 77
    ees,1 |
    %%
    %% Bar 78
    %%
    \repeat volta 2 {
      f,1~ |
      % Bar 79
      f,1 |
      % Bar 80
      f,1~ |
      % Bar 81
      f,1 |
      % Bar 82
      ees,1~ |
      % Bar 83
      ees,1 |
      % Bar 84
      ees,1~ |
      % Bar 85
      ees,1 | }
      % Bar 86
      f,1~ |
      % Bar 87
      f,1 |
      % Bar 88
      f,1~ |
      % Bar 89
      f,1 |
      % Bar 90
      ees,1~ |
      % Bar 91
      ees,1 |
      % Bar 92
      ees,1~ |
      % Bar 93
      ees,1 |
      % Bar 94
      f,1~ |
      % Bar 95
      f,1 |
      % Bar 96
      f,1~ |
      % Bar 97
      f,1 |
      % Bar 98
      g,1~ |
      % Bar 99
      g,1 |
      % Bar 100
      aes,1~ |
      % Bar 101
      aes,1 |
      % Bar 102
      bes,1~ |
      % Bar 103
      bes,1 |
      %%
      %% Bar 104
      %%
      \clef "treble_8"
      \override Staff.NoteHead #'style = #'harmonic-mixed
      <c g>1\arpeggio |
      % Bar 105
      \clef "bass_8"
      \revert Staff.NoteHead #'style
      \time 3/4
      <f, c>4. <f, c>8 <f, c>4 |
      % Bar 106
      \time 2/4
      \appoggiatura <c, g,>8\arpeggio   
      \clef "treble_8"
      \override Staff.NoteHead #'style = #'harmonic-mixed <g d'>2 |
      % Bar 107
      \time 3/4
      \revert Staff.NoteHead #'style  
      \clef "bass_8"
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 108
      ees,8( bes,8~ <bes, ees,>4.) r8 |
      % Bar 109
      f,8( c8~ <f, c>2) |
      % Bar 110
      f,8( c8~ <f, c>4) r4 |
      % Bar 111
      g,4~ <g, d>2. |
      % Bar 112
      R2. |
      % Bar 113
      des,8( aes,8~ <aes, des,>2) |
      % Bar 114
      des,8( aes,8~ <aes, des,>2) |
      % Bar 115
      des,8( aes,8~ <aes, des,>2) |
      % Bar 116
      des,8( aes,8~ <aes, des,>4) r4 |
      % Bar 117
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 118
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 119
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 120
      \time 2/4
      r4 g,4 |
      % Bar 121
      \time 3/4
      c2 ees4
      % Bar 122
      \time 2/4
      c2 |
      % Bar 123
      r4 g,4 |
      % Bar 124
      \compoundMeter #'((1 4) (3 8))
      f,2~ f,8 |
      % Bar 125
      \time 2/4
      f,2 |
      % Bar 126
      \time 6/4
      f,2 f,2 f,2 |
      % Bar 127
      \time 3/4
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 128
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 129
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 130
      ees,8( bes,8~ <bes, ees,>2) |
      % Bar 131
      R2 |
      % Bar 132
      \time 3/4
      g,2. |
      % Bar 133
      g,2. |
      % Bar 134
      aes,2.-"rit."~ |
      % Bar 135
      \time 2/4
      aes,2
      % Bar 135
      R2 |
      % Bar 136
      \time 4/4
      c,1 \bar "|."


    }

    tab = {
      \key c \minor
      \numericTimeSignature
      \time 4/4
      \override Beam #'damping = #100000
      \tabFullNotation
      \stemDown
      % bar 1
      \once \override TextScript #'(extra-offset) = #'(-0.9 . -4.3)
      \harmonicByRatio #1/2 ees8\4^\rhp 
      \once \override TextScript #'(extra-offset) = #'(-0.9 . -2.4)
      \harmonicByRatio #1/2 g\3^\rhi
      \once \override TextScript #'(extra-offset) = #'(-0.9 . -4.3)
      \harmonicByRatio #1/2 ees\4^\rhp
      \once \override TextScript #'(extra-offset) = #'(-1.2 . -1.4)
      \harmonicByRatio #1/2 c'\2^\rhm
      \once \override TextScript #'(extra-offset) = #'(-0.9 . -4.3)
      \harmonicByRatio #1/2 ees\4^\rhp
      \once \override TextScript #'(extra-offset) = #'(-0.9 . -2.4)
      \harmonicByRatio #1/2 g\3^\rhi
      \once \override TextScript #'(extra-offset) = #'(-0.9 . -4.3)
      \harmonicByRatio #1/2 ees\4^\rhp
      \once \override TextScript #'(extra-offset) = #'(-1.0 . -0.65)
      \harmonicByRatio #1/2 ees'\1^\rha |

      % Bar 2
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      \break

      % Bar 3
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 4
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 5
      \once \override TextScript #'(extra-offset) = #'(-0.9 . -5.3)
      \harmonicByRatio #1/2 g,8\5^\rhp
      \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      \break

      % Bar 6
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 7
      \once \override TextScript #'(extra-offset) = #'(-0.8 . -5.3)
      f\5^\rhp \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 8
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      \break

      % Bar 9
      \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
      ees\5^\rhp \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 10
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 11
      \once \override TextScript #'(extra-offset) = #'(-1.0 . -6.3)
      \harmonicByRatio #1/2 c,8\6^\rhp \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      \break

      % Bar 12
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 13
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 14
      \harmonicByRatio #1/2 ees8\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      \break

      % Bar 15
      \harmonicByRatio #1/2 g,8\5 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 16
      f\5 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 ees'\1 |

      % Bar 17
      ees\5 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 c'\2 \harmonicByRatio #1/2 ees\4 \harmonicByRatio #1/2 g\3 \harmonicByRatio #1/2 ees\4 
      \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.5)
      ees'\1^\rha |

      \break

      %%
      %% Bar 18
      %%
      \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
      c\5^\rhp[ c'\3] 
      \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.3)
      ees\4^\rhp[ c'\2] c\5[ c'\3] ees\4[ ees'\1] |

      % Bar 19
      \time 3/4
      \set Timing.beamExceptions = #'()
      \set Score.beatStructure = #'(1 1 1)
      \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
      c\5^\rhp c'\3 
      \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
      bes,\5^\rhp bes\3 
      \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
      g,\5^\rhp g\3 |

      % Bar 20
      \repeat volta 2 {
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
        c\5^\rhp 

        c'\3 

        c'\2 
        \once \override TextScript #'(extra-offset) = #'(-0.3 . -2.4)
        c'\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.3)
        ees\4^\rhp 
        g'\1 |

        \break

        % Bar 21
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
        c\5^\rhp
        \once \override TextScript #'(extra-offset) = #'(-0.3 . -2.4)
        c'\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-0.7 . -1.4)
        c'\2^\rhm 
        \once \override TextScript #'(extra-offset) = #'(-0.3 . -2.4)
        c'\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-0.4 . -1.3)
        g'\1^\rha( ees'\1) |

        % Bar 22
        c\5 c'\3 bes,\5 bes\3 g,\5 g\3 |

        % Bar 23
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
        f,\6^\rhp 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
        g\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.3)
        aes\4^\rhp 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
        g\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-1.0 . -1.4)
        \harmonicByRatio #1/3 g'\2^\rhm
        \once \override TextScript #'(extra-offset) = #'(-0.7 . -0.65)
        \harmonicByRatio #1/3 bes'\1^\rha |

        \break

        % Bar 24
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
        f,\6^\rhp 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
        g\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.3)
        aes\4^\rhp 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
        g\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
        g,\5^\rhp 
        g\3 |

        % Bar 25
        \once \override TextSpanner #'style = #'line
        \once \override TextSpanner #'(bound-details right text) =
        \markup { \draw-line #'(0 . -0.5) }
        \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "1/3 C III " } 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
        ees,\6^\rhp\startTextSpan g\3 
        \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
        g\4^\rhp 
        \once \override TextScript #'(extra-offset) = #'(-0.3 . -4.0)
        g\3^\rhi 
        \once \override TextScript #'(extra-offset) = #'(-0.7 . -2.0)
        \harmonicByRatio #1/4 ees'\1^\rha 
        \once \override TextScript #'(extra-offset) = #'(-0.9 . -3.0)
        \harmonicByRatio #1/4 c'\2^\rhm |
      }

      % Bar 26
      \alternative {
        {
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
          ees,\6^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.3 . -4.0)
          g\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
          g\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.3 . -4.0)
          g\3^\rhi\stopTextSpan 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
          g,\5^\rhp 

          g\3}

          % Bar 27
          {
            \once \override TextSpanner #'style = #'line
            \once \override TextSpanner #'(bound-details right text) =
            \markup { \draw-line #'(0 . -0.5) }
            ees,\6\startTextSpan g\3 g\4 g\3\stopTextSpan 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.6)
            ees'\1^\rha 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -1.4)
            c'\2^\rhm }
          }

          \break

          % Bar 28
          \repeat volta 2 {
            \time 2/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1)
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -0.6)
            aes'\1^\rhm \glissando bes'\1( 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.4)
            <g, g'>4^\rhp) |

            % Bar 29
            \time 3/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1)
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
            c8\5^\rhp c'\3 c'\2 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            c'\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.3)
            ees\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.6)
            g'\1^\rha |

            % Bar 30
            \time 2/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1)
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.3)
            c\5^\rhp 

            c'\3

            c'\2
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            c'\3^\rhi |

            \break

            % Bar 31
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -0.6)
            aes'\1^\rhm \glissando bes'\1( 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.4)
            <g, ees'>4\5\1^\rhp) |

            % Bar 32
            \compoundMeter #'((1 4) (3 8))
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
            f,8\6^\rhp g\3
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.3)
            aes\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g\3^\rhi 

            c'\2 |

            % Bar 33
            \time 2/4
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
            f,\6^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.3)
            aes\4^\rhp g\3 c'\2 |

            \break

            % Bar 34
            \time 6/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(2 2 2)
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
            f,\6^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g\3^\rhi f'\2 ees'\1 

            f,\6 g\3 f'\2 ees'\1 f,\6 g\3 f'\2 g'\1 |

            % Bar 35
            \time 3/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1)
            \once \override TextSpanner #'style = #'line
            \once \override TextSpanner #'(bound-details right text) =
            \markup { \draw-line #'(0 . -0.5) }
            \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "1/3 C III " } 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
            ees,\6^\rhp\startTextSpan 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
            bes,\5^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
            g\4^\rhp g\3 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -2.9)
            f'\2^\rhm 
            \once \override TextScript #'(extra-offset) = #'(-0.3 . -1.9)
            g'\1^\rha |

            \break

            % Bar 36
            ees,\6 bes,\5 g\4 g\3 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -2.9)
            f'\2^\rhm 
            \once \override TextScript #'(extra-offset) = #'(-0.4 . -1.9)
            ees'\1^\rha |

            % Bar 37
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
            ees,\6^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
            bes,\5^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
            g\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.4 . -3.9)
            g\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
            g\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.4 . -3.9)
            g\3^\rhi |
          }

          % Bar 38
          ees,\6 bes,\5 g\4 g\3 g\4 g\3 |

          \break

          % Bar 39
          \repeat volta 2 {
            \time 5/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1 1 1)
            ees,\6 bes,\5 g\4 g\3 g\4 g\3\stopTextSpan 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -1.2)
            ees'\1^\rha( f'\1) 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.1)
            \acciaccatura 
            f'8^\rha \glissando g'4\1 |

            % Bar 40
            \time 3/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1)
            c8\5 c'\3 c'\2 c'\3 ees\4 g'\1 |

            \break

            % Bar 41
            \time 4/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1 1)
            c8\5 c'\3 c'\2 c'\3 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.55)
            aes'\1^\rha \glissando bes'\1 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.1)
            \acciaccatura bes'8^\rha \glissando aes'4\1 |

            % Bar 42
            \time 3/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1)
            f,8\6 g\3 aes\4 g\3 c'\2 aes'\1 |

            % Bar 43
            \time 4/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1 1)
            f,\6 g\3 aes\4 g\3 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.55)
            aes'\1^\rha \glissando g'\1 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.55)
            g'4\1^\rha |

            \break

            % Bar 44
            \time 3/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1)
            \once \override TextSpanner #'style = #'line
            \once \override TextSpanner #'(bound-details right text) =
            \markup { \draw-line #'(0 . -0.5) }
            \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "1/3 C III " } 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
            ees,8\6^\rhp\startTextSpan 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
            bes,\5^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
            g\4^\rhp g\3 c'\2 g'\1 |
          }

          % Bar 45
          ees,8\6 bes,\5 g\4 g\3 g\4 g\3\stopTextSpan |

          % Bar 46
          \time 2/4
          \repeat volta 2 {
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1)
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.1)
            \acciaccatura aes'8\1^\rha \glissando bes'4\1 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.1)
            \acciaccatura aes'8\1^\rha \glissando bes'4\1 |

            \break

            % Bar 47
            \time 3/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1)
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
            g,8\6^\rhp
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g\3^\rhi
            \once \override TextScript #'(extra-offset) = #'(-0.7 . -4.3)
            d'\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -1.4)
            c'\2^\rhm 
            \once \override TextScript #'(extra-offset) = #'(-0.7 . -0.6)
            bes'\1^\rha |

            % Bar 48
            g,8\6 g\3 d'\4 g\3 
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -1.2)
            bes'4\1^\rha\staccato |

            % Bar 49
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
            <aes, aes'>4.\6\2^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g8\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.7 . -4.3)
            d'\4^\rhp
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g\3^\rhi |

            \break

            % Bar 50
            \time 2/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1)
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -1.4)
            aes'8\2^\rhm \glissando g'\2 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -1.4)
            g'4\2^\rhm |

            % Bar 51
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.3)
            aes,8\6^\rhp
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g\3^\rhi
            \once \override TextScript #'(extra-offset) = #'(-0.7 . -4.3)
            d'\4^\rhp
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            g\3^\rhi |

            % Bar 52
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -2.1)
            \acciaccatura ees'8\2^\rhm \glissando f'4\2 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            \acciaccatura ees'8\3^\rhi \glissando f'4\3 |

            \break

            % Bar 53
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -6.3)
            bes,8\6^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -0.65)
            ees'\1^\rha 
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -4.3)
            ees4\4^\rhp |

            % Bar 54
            \once \override TextScript #'(extra-offset) = #'(-1.0 . -2.4)
            \harmonicByRatio #1/2 g4\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            ees'\3^\rhi |

            % Bar 55
            \time 3/4
            \set Timing.beamExceptions = #'()
            \set Score.beatStructure = #'(1 1 1)
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -6.3)
            bes,8\6^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            ees'\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
            d'\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            ees'\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
            d'\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -0.65)
            ees'\1^\rha |

            % Bar 56
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -6.3)
            bes,8\6^\rhp
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            ees'\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
            d'\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
            ees'\3^\rhi 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
            d'\4^\rhp 
            \once \override TextScript #'(extra-offset) = #'(-0.8 . -1.4)
            c'\2^\rhm |
          }

          \break

          % Bar 57
          \time 4/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(2 2)
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
          d'8\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
          g\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
          d'\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -1.4)
          c'\2^\rhm 
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
          d'8\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.4)
          g\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -4.3)
          d'\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -0.65)
          ees'\1^\rha |

          % Bar 58
          d'8\4 g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 59
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -6.3)
          aes,\6^\rhp g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          \break

          % Bar 60
          d'8\4 g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 61
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -6.3)
          g,\6^\rhp g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 62
          d'8\4 g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          \break

          % Bar 63
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -5.3)
          g,\5^\rhp g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 64
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -6.3)
          f,\6^\rhp g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 65
          d'8\4 g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          \break

          % Bar 66
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -5.3)
          g,\5^\rhp g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 67
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -6.3)
          ees,\6^\rhp g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 68
          d'8\4 g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          \break

          % Bar 69
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -5.3)
          g,\5^\rhp g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          %%
          %% Bar 70
          %%
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -6.3)
          c,\6^\rhp g\3 ees'\4 c'\2 ees'\4 g\3 ees'\4 ees'\1 |

          % Bar 71
          ees'\4 g\3 ees'\4 c'\2 ees'\4 g\3 ees'\4 ees'\1 |

          \break

          % Bar 72
          d'8\4 g\3 d'\4 c'\2 d'8\4 g\3 d'\4 ees'\1 |

          % Bar 73
          bes\4 g\3 bes\4 c'\2 bes\4 g\3 bes\4 ees'\1 |

          % Bar 74
          aes\4 g\3 aes\4 c'\2 aes\4 g\3 aes\4 ees'\1 |

          \break

          % Bar 75
          g\4 g\3 g\4 c'\2 g\4 g\3 g\4 ees'\1 |

          % Bar 76
          \once \override TextScript #'(extra-offset) = #'(-0.6 . -6.3)
          ees,\6^\rhp g\3 g\4 c'\2 g\4 g\3 g\4 ees'\1| 

          % Bar 77
          ees,\6 g\3 g\4 c'\2 g\4 g\3 g\4 ees'\1| 

          \break

          %%
          %% Bar 78
          %%
          \repeat volta 2 {
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -6.3)
            f,8\6^\rhp 
            g\3
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -4.3)
            aes\4^\rhp 
            g\3
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -4.3)
            aes\4^\rhp 
            c'\2~ c'\2 
            g\3 |

            % Bar 79
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -4.3)
            aes\4^\rhp 
            g\3
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -4.3)
            aes\4^\rhp 
            ees'\1~ ees'\1 
            g\3
            \once \override TextScript #'(extra-offset) = #'(-0.6 . -4.3)
            aes\4^\rhp 
            g\3 |
            % Bar 80
            f,8\6 g\3 aes\4 g\3 aes\4 c'\2~ c'\2 g\3 |

            \break

            % Bar 81
            aes\4 g\3 aes\4 ees'\1~ ees'\1 g\3 aes\4 g\3 |

            % Bar 82
            ees,\6 g\3 g\4 g\3 g\4 c'\2~ c'\2 g\3 |

            % Bar 83
            g\4 g\3 g\4 ees'\1~ ees'\1 g\3 g\4 g\3 |

            \break

            % Bar 84
            ees,\6 g\3 g\4 g\3 g\4 c'\2~ c'\2 g\3 |

            % Bar 85
            g\4 g\3 g\4 ees'\1~ ees'\1 g\3 g\4 g\3 |
          }

          %%
          %% Bar 86
          %%
          f,8\6 g\3 aes\4 g\3 aes\4 c'4\2\staccato g8\3 |

          \break

          % Bar 87
          aes\4 g\3 aes\4 ees'\1~ ees'\1 g\3 aes\4 g\3 |

          % Bar 88
          f,8\6 g\3 aes\4 g\3 aes\4 c'4\2\staccato g8\3 |

          % Bar 89
          aes\4 g\3 aes\4 ees'\1~ ees'\1 g\3 aes\4 g\3 |

          \break

          % Bar 90
          ees,\6 g\3 g\4 g\3 g\4 c'4\2\staccato g8\3 |

          % Bar 91
          g\4 g\3 g\4 ees'\1~ ees'\1 g\3 g\4 g\3 |

          % Bar 92
          ees,\6 g\3 g\4 g\3 g\4 c'4\2\staccato g8\3 |

          \break

          % Bar 93
          g\4 g\3 g\4 ees'\1~ ees'\1 g\3 g\4 g\3 |

          % Bar 94
          f,8\6 g\3 aes\4 g\3 aes\4 c'4\2\staccato g8\3 |

          % Bar 95
          aes\4 g\3 aes\4 ees'\1~ ees'\1 g\3 aes\4 g\3 |

          \break

          % Bar 96
          f,8\6 g\3 aes\4 g\3 aes\4 c'4\2\staccato g8\3 |

          % Bar 97 
          aes\4 g\3 aes\4 ees'\1~ ees'\1 g\3 aes\4 g\3 |

          %%
          %% Bar 98
          %%
          g,8\6 g\3 bes\4 g\3 bes\4 c'4\2\staccato g8\3 |

          \break

          % Bar 99
          bes\4 g\3 bes\4 ees'\1~ ees'\1 g\3 bes\4 g\3 |

          % Bar 100
          aes,\6 g\3 c'\4 g\3 c'\4 
          \once \override TextScript #'(extra-offset) = #'(-1.0 . -1.55)
          \harmonicByRatio #1/2 <ees' c'>\1\2^\rha~ \harmonicByRatio #1/2 <ees' c'>\1\2 g\3 | 

          % Bar 101
          c'\4 g\3 c'\4 <ees' c'>\1\2~ <ees' c'>\1\2 g\3 c'\4 g\3 |

          \break

          % Bar 102
          bes,\6 g\3 d'\4 g\3 d'\4 \harmonicByRatio #1/2 <ees' c'>\1\2~ \harmonicByRatio #1/2 <ees' c'>\1\2 g\3 | 

          % Bar 103
          d'\4 g\3 d'\4 <ees' c'>\1\2~ <ees' c'>\1\2 g\3 d'\4 g\3 |

          %%
          %% Bar 104
          %%
          \once \override TextScript #'(extra-offset) = #'(-1.4 . -6.9)
          \arpeggioArrowUp
          \harmonicByRatio #1/2 <c, g, ees g c' ees'>1\6\5\4\3\2\1^\rhp\arpeggio |

          \break

          % Bar 105
          \time 3/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1 1)
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "C V " } 
          <f, c aes c' f' aes'>4.\6\5\4\3\2\1\startTextSpan <f, c aes c' f' aes'>8\6\5\4\3\2\1 <f, c aes c' f' aes'>4\6\5\4\3\2\1\stopTextSpan |

          % Bar 106
          \time 2/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1)
          \once \override TextScript #'(extra-offset) = #'(-0.9 . -8.3)
          \arpeggioArrowUp \acciaccatura <c, g, ees g c' ees'>8^\lhone\arpeggio
          \arpeggioArrowUp
          \harmonicByRatio #1/3 <g, d bes d' g' bes'>4.\6\5\4\3\2\1\arpeggio\fermata 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.6)
          bes'8\1^\rha\fermata |

          %%
          %% Bar 107
          %%
          \time 3/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1 1)
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "C III " } 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
          <ees,  bes'>8\6\1^\rhp\startTextSpan 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
          bes,\5^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
          g\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -3.9)
          bes\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -2.9)
          ees'\2^\rhm 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -1.9)
          bes'\1^\rha |

          \break

          % Bar 108
          ees,\6 bes,\5 g\4 bes\3 ees'\2 bes'\1\stopTextSpan |

          % Bar 109
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "C V " } 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -8.9)
          f,\6^\rhp\startTextSpan 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
          c\5^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
          aes\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.9)
          c'\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.9)
          bes'\1^\rha( aes'\1) |

          % Bar 110
          f,\6 c\5 aes\4 c'\3\stopTextSpan 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.5)
          bes'\1^\rha \glissando c''\1 |

          \break

          % Bar 111
          \time 4/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1 1 1)
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "C VII " } 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
          <g, bes'>4\6\1^\rhp\startTextSpan 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
          d8\5^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
          bes\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -3.9)
          d'4\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -1.9)
          d''\1^\rha\stopTextSpan |

          % Bar 112
          \time 3/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1 1)
          \once \override TextScript #'(extra-offset) = #'(-1.0 . -1.3)
          \harmonicByRatio #1/2 ees'4\1^\rha~ \harmonicByRatio #1/2 ees'4\1~ \harmonicByRatio #1/2 ees'4\1 |

          % Bar 113
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "1/3 C I " } 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -8.2)
          des,8\6^\rhp\startTextSpan
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
          aes,\5^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
          f\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -3.9)
          g\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -5.9)
          f\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -3.9)
          g\3^\rhi\stopTextSpan |

          \break

          % Bar 114
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "C I " } 
          des,\6\startTextSpan aes,\5 f\4 aes\3 f\4 aes\3 |

          % Bar 115
          des,\6 aes,\5 f\4 aes\3 
          \once \override TextScript #'(extra-offset) = #'(-0.8 . -2.9)
          des'\2^\rhm 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -1.9)
          g'\1^\rha |

          % Bar 116
          des,\6 aes,\5 f\4 aes\3\stopTextSpan 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -0.4)
          g'\1^\rha \glissando aes'\1( |

          \break

          % Bar 117
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "1/3 C III " } 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -9.2)
          <ees, f'>\6\1^\rhp\startTextSpan) 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -7.9)
          bes,\5^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -6.9)
          g\4^\rhp 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -4.9)
          g\3^\rhi 
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.9)
          f'\1^\rha( g'\1) |

          % Bar 118
          ees,\6 bes,\5 g\4 g\3 g\4 g\3 |

          % Bar 119
          ees,\6 bes,\5 g\4 g\3 g\4 g\3\stopTextSpan |

          \break

          %%
          %% Bar 120 Same As Bar 28
          %%
          \time 2/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1)
          aes'\1 \glissando bes'\1( <g, g'>4) |

          % Bar 121 Bar 29
          \time 3/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1 1)
          c8\5 c'\3 c'\2 c'\3 ees\4 g'\1 |

          % Bar 122 Bar 30
          \time 2/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1)
          c\5 c'\3 c'\2 c'\3 |

          \break

          % Bar 123 Bar 31
          aes'\1 \glissando bes'\1( <g, ees'>4\5\1) |

          % Bar 124 Bar 32
          \compoundMeter #'((1 4) (3 8))
          f,8\6 g\3 aes\4 g\3 c'\2 |

          % Bar 125 Bar 33
          \time 2/4
          f,\6 aes\4 g\3 c'\2 |

          \break

          % Bar 126Bar 34
          \time 6/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(2 2 2)
          f,\6 g\3 f'\2 ees'\1 f,\6 g\3 f'\2 ees'\1 f,\6 g\3 f'\2 g'\1 |

          % Bar 127Bar 35
          \time 3/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1 1)
          \once \override TextSpanner #'style = #'line
          \once \override TextSpanner #'(bound-details right text) =
          \markup { \draw-line #'(0 . -0.5) }
          \once \override TextSpanner #'(bound-details left text) =  \markup { \fontsize #-5 "1/3 C III " } 
          ees,\6\startTextSpan bes,\5 g\4 g\3 f'\2 g'\1 |

          \break

          % Bar 128
          ees,\6 bes,\5 g\4 g\3 f'\2 ees'\1 |

          % Bar 129
          ees,\6 bes,\5 g\4 g\3 g\4 g\3 |

          % Bar 130
          ees,\6 bes,\5 g\4 g\3 g\4 g\3\stopTextSpan |

          \break

          %%
          %% Bar 131 same as Bar 46
          %%
          \time 2/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1)
          \acciaccatura aes'8\1 \glissando bes'4\1 \acciaccatura aes'8\1 \glissando bes'4\1 |

          % Bar 132
          \time 3/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1 1)
          g,8\6 g\3 d'\4 g\3 c'\2 bes'\1 |

          % Bar 133
          g,8\6 g\3 d'\4 g\3 bes'4\1\staccato |

          \break

          % Bar 134
          <aes, aes'>4.\6\2_"rit." g8\3 d'\4 g\3 |

          % Bar 135
          \time 2/4
          \set Timing.beamExceptions = #'()
          \set Score.beatStructure = #'(1 1)
          aes'8\2 \glissando g'\2 g'4\2~ |

          % Bar 136
          g'8\2 g\3 d'\4 g\3 |

          % Bar 137
          \time 4/4
          \once \override TextScript #'(extra-offset) = #'(-0.5 . -2.6)
          <d'~ c, ees'>4\3\6\1^\rhi d'\3( <\parenthesize ees'>\3)~ <\parenthesize ees'>\3 \bar "|."
        }

        dynamicsone = {
          \override TextSpanner #'style = #'line
          \override TextSpanner #'thickness = #8
          \override TextSpanner #'color = #(x11-color "plum")
          \override TextSpanner #'layer = #-1
          \override TextScript #'extra-offset = #'(-0.0 . 13.0)
          % Bar 1
          \once \override TextScript #'extra-offset = #'(-1.5 . 8.7)
          s8^\markup { \left-brace #45 } s4. s4. 

          s8 |
          % Bar 2
          s1 |
          % Bar 3
          s1 |
          % Bar 4
          s1 |
          % Bar 5
          s1 |
          % Bar 6
          s1 |
          % Bar 7
          s1 |
          % Bar 8
          s1 |
          % Bar 9
          s1 |
          % Bar 10
          s1 |
          % Bar 11
          s1 |
          % Bar 12
          s1 |
          % Bar 13
          s1 |
          % Bar 14
          s1 |
          % Bar 15
          s1 |
          % Bar 16
          s1 |
          % Bar 17
          s2. s8 

          s8 |
          % Bar 18
          s2
          \once \override TextScript #'extra-offset = #'(-1.0 . 11.4)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 12.12)
          s4.\startTextSpan^\rha s8\stopTextSpan |
          % Bar 19
          % 3/4
          s2. |
          % Bar 20
          \once \override TextScript #'extra-offset = #'(-1.0 . 11.4)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 12.12)
          s2\startTextSpan^\rha s8 
          \once \override TextScript #'extra-offset = #'(0.2 . 13.0)
          s8\stopTextSpan^\lhone |
          % Bar 21
          s2. |
          % Bar 22
          s2. |
          % Bar 23
          s2 
          \once \override TextScript #'extra-offset = #'(-1.8 . 8.35)
          s8^\markup { \left-brace #10.5 } s8 |
          % Bar 24
          s2. |
          % Bar 25
          s2. |
          % Bar 26
          s2. |
          % Bar 27
          s2. |
          % Bar 28
          % \time 2/4
          \once \override TextScript #'extra-offset = #'(0.2 . 14.0)
          s8^\lhfour 
          \once \override TextScript #'extra-offset = #'(0.2 . 14.0)
          s8^\lhguidefour 
          \once \override TextScript #'extra-offset = #'(0.2 . 14.0)
          s4^\lhone |
          % Bar 29
          % \time 3/4
          s2. |
          % Bar 30
          % \time 2/4
          s2 |
          % Bar 31
          \once \override TextScript #'extra-offset = #'(0.2 . 11.3)
          s8^\lhfour 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.3)
          s8^\lhguidefour s4 |
          % Bar 32
          % compound 1/4 3/8
          s4 s4. |
          % Bar 33
          % \time 2/4
          s2 |
          % Bar 34
          % \time 6\4
          s8 
          \once \override TextScript #'extra-offset = #'(-1.0 . 13.5)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 14.13)
          s4\startTextSpan^\rha s8\stopTextSpan s8 
          \once \override TextScript #'extra-offset = #'(-1.0 . 13.5)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 14.13)
          s4\startTextSpan s8\stopTextSpan s8 
          \once \override TextScript #'extra-offset = #'(-1.0 . 13.5)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 14.13)
          s4\startTextSpan 
          \once \override TextScript #'extra-offset = #'(0.2 . 14.4)
          s8\stopTextSpan^\lhthree |
          % Bar 35
          % \time 3/4
          s2. |
          % Bar 36
          % \time 3/4
          s2. |
          % Bar 37
          % \time 3/4
          s2. |
          % Bar 38
          % \time 3/4
          s2. |
          % Bar 39
          % \time 5/4
          s2. s8 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.4)
          s8^\lhone 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.3)
          s4^\lhguideone |
          % Bar 40
          % \time 3/4
          s2. |
          % Bar 41 
          % \time 4/4
          s2 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.4)
          s8^\lhfour 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.3)
          s8^\lhguidefour 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.3)
          s4^\lhguidefour |
          % Bar 42
          % \time 3/4
          s2. |
          % Bar 43
          % \time 4/4
          s2  s8 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.0)
          s8^\lhguidefour s4 |
          % Bar 44
          % \time 3/4
          s2. |
          % Bar 45
          s2. |
          % Bar 46
          % \time 2/4
          \grace s8 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.0)
          s4^\lhguidefour \grace s8^\lhone 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.0)
          s4^\lhguideone |
          % Bar 47
          % \time 3/4
          s2. |
          % Bar 48
          % \time 3/4
          s2. |
          % Bar 49
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(0.2 . 13.7)
          s2.^\lhone |
          % Bar 50
          % \time 2/4
          s2 |
          % Bar 51
          % \time 2/4
          s2 |
          % Bar 52
          % \time 2/4
          s2 |
          % Bar 53
          % \time 2/4
          s2 |
          % Bar 54
          % \time 2/4
          s2 |
          % Bar 55
          % \time 3/4
          s2. |
          % Bar 56
          % \time 3/4
          s2. |
          % Bar 57
          % \time 4/4
          s1 |
          % Bar 58
          s1 |
          % Bar 59
          s1 |
          % Bar 60
          s1 |
          % Bar 61
          s1 |
          % Bar 62
          s1 |
          % Bar 63
          s1 |
          % Bar 64
          s1 |
          % Bar 65
          s1 |
          % Bar 66
          s1 |
          % Bar 67
          s1 |
          % Bar 68
          s1 |
          % Bar 69
          s1 |
          % Bar 70
          s1 |
          % Bar 71
          s1 |
          % Bar 72
          s1 |
          % Bar 73
          s1 |
          % Bar 74
          s1 |
          % Bar 75
          s1 |
          % Bar 76
          s1 |
          % Bar 77
          s1 |
          % Bar 78
          \once \override TextScript #'extra-offset = #'(-1.0 . 12.8)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 13.45)
          s1\startTextSpan^\rha |
          % Bar 79
          s4. s8\stopTextSpan s2 |
          % Bar 80
          s1 |
          % Bar 81
          s1 |
          % Bar 82
          s1 |
          % Bar 83
          s1 |
          % Bar 84
          s1 |
          % Bar 85
          s1 |
          % Bar 86
          s1 |
          % Bar 87
          s1 |
          % Bar 88
          s1 |
          % Bar 89
          s1 |
          % Bar 90
          s1 |
          % Bar 91
          s1 |
          % Bar 92
          s1 |
          % Bar 93
          s1 |
          % Bar 94
          s1 |
          % Bar 95
          s1 |
          % Bar 96
          s1 |
          % Bar 97
          s1 |
          % Bar 98
          s1 |
          % Bar 99
          s1 |
          % Bar 100
          s2 s8 
          \once \override TextScript #'extra-offset = #'(-1.8 . 9.45)
          s8^\markup { \left-brace #10.5 } s4 |
          % Bar 101
          s1 |
          % Bar 102
          s2 s8 
          \once \override TextScript #'extra-offset = #'(-1.0 . 9.45)
          s8^\markup { \left-brace #10.5 } s4 |
          % Bar 103
          s1 |
          % Bar 104
          s1 |
          % Bar 105
          % \time 3/4
          s2. |
          % Bar 106
          % \time 2/4
          s4 s8 
          \once \override TextScript #'extra-offset = #'(1.6 . 12.9)
          s8^\lhfour |
          % Bar 107
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-1.0 . 13.0)
          s8^\rha s8 s2 |
          % Bar 108
          % \time 3/4
          s2. |
          % Bar 109
          % \time 3/4
          s2. |
          % Bar 110
          % \time 3/4
          s2 
          \once \override TextScript #'extra-offset = #'(0.2 . 10.8)
          s8^\lhfour 
          \once \override TextScript #'extra-offset = #'(0.2 . 10.8)
          s8^\lhguidefour |
          % Bar 111
          % \time 4/4
          \once \override TextScript #'extra-offset = #'(-0.8 . 13.0)
          s8^\rha s8 s2 
          \once \override TextScript #'extra-offset = #'(2.0 . 12.9)
          s4^\lhfour |
          % Bar 112
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(0.2 . 13.9)
          s4^\lhfour s2 |
          % Bar 113
          % \time 3/4
          s2. |
          % Bar 114
          % \time 3/4
          s2. |
          % Bar 115
          % \time 3/4
          s2 s8 
          \once \override TextScript #'extra-offset = #'(1.8 . 9.8)
          s8^\lhfour |
          % Bar 116
          % \time 3/4
          s2 
          \once \override TextScript #'extra-offset = #'(0.2 . 10.8)
          s8^\lhfour 
          \once \override TextScript #'extra-offset = #'(0.2 . 11.5)
          s8^\lhguidefour |
          % Bar 117
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(1.8 . 13.8)
          s2^\lhone s8 
          \once \override TextScript #'extra-offset = #'(1.8 . 13.8)
          s8^\lhfour |
          % Bar 118
          % \time 3/4
          s2. |
          % Bar 119
          % \time 3/4
          s2. |
          % Bar 120
          % \time 2/4
          s2 |
          % Bar 121
          % \time 3/4
          s2. |
          % Bar 122
          % \time 2/4
          s2 |
          % Bar 123
          s2 |
          % Bar 124
          % 1/4 3/8
          s4 s4. |
          % Bar 125
          % \time 2/4
          s2 |
          % Bar 126
          % \time 6/4
          s8 
          \override TextSpanner #'extra-offset = #'(-0.0 . 12.39)
          s8\startTextSpan s8 s8\stopTextSpan s8 s8\startTextSpan s8 s8\stopTextSpan s8 s8\startTextSpan s8 s8\stopTextSpan |
          % Bar 127
          % \time 3/4
          s2. |
          % Bar 128
          s2. |
          % Bar 129
          s2.|
          % Bar 130
          s2. |
          % Bar 131
          % \time 2/4
          s2 |
          % Bar 132
          % \time 3/4
          s2. |
          % Bar 133
          s2. |
          % Bar 134
          s2. |
          % Bar 135
          % \time 2/4
          s2 |
          % Bar 136
          s2 |
          % Bar 137
          % \time 4/4
          \override TextScript #'extra-offset = #'(-0.8 . 12.8)
          s1^\rha |
        }

        dynamicstwo = {
          \override TextSpanner #'style = #'line
          \override TextSpanner #'thickness = #8
          \override TextSpanner #'color = #(x11-color "plum")
          \override TextSpanner #'layer = #-1
          \override TextSpanner #'extra-offset = #'(0.0 . 13.85)
          \override TextScript #'extra-offset = #'(-1.0 . 13.4)
          % Bar 1
          \once \override TextScript #'extra-offset = #'(-3.2 . 13.85)
          s8^\lhfour s4 

          s8 s2 |
          % Bar 2
          s1 |
          % Bar 3
          s1 |
          % Bar 4
          s1 |
          % Bar 5
          s1 |
          % Bar 6
          s1 |
          % Bar 7
          s1 |
          % Bar 8
          s1 |
          % Bar 9
          s1 |
          % Bar 10
          s1 |
          % Bar 11
          s1 |
          % Bar 12
          s1 |
          % Bar 13
          s1 |
          % Bar 14
          s1 |
          % Bar 15
          s1 |
          % Bar 16
          s1 |
          % Bar 17
          s1 |
          % Bar 18
          \once \override TextScript #'extra-offset = #'(-1.2 . 11.75)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 12.45)
          s4.\startTextSpan^\rhm s8\stopTextSpan s2 |
          % Bar 19
          % 3/4
          s2. |
          % Bar 20
          \once \override TextScript #'extra-offset = #'(-1.2 . 11.75)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 12.45)
          s4\startTextSpan^\rhm s2\stopTextSpan |
          % Bar 21
          s2. |
          % Bar 22
          s2. |
          % Bar 23
          s2 
          \once \override TextScript #'extra-offset = #'(-3.25 . 10.025)
          s4^\lhfour |
          % Bar 24
          s2. |
          % Bar 25
          s2. |
          % Bar 26
          s2. |
          % Bar 27
          s2. |
          % Bar 28
          % \time 2/4
          s4 
          \once \override TextScript #'extra-offset = #'(-1.3 . 11.6)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 12.225) 
          s4\startTextSpan^\rhm |
          % Bar 29
          % \time 3/4
          s4 s4\stopTextSpan s8 
          \once \override TextScript #'extra-offset = #'(-1.3 . 11.6)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 12.225) 
          s8\startTextSpan^\rhm|
          % Bar 30
          % \time 2/4
          s4 s4\stopTextSpan |
          % Bar 31
          s4 
          \once \override TextScript #'extra-offset = #'(-1.3 . 10.8)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 11.43) 
          s4\startTextSpan^\rhm |
          % Bar 32
          % compound 1/4 3/8
          s2 s8\stopTextSpan |
          % Bar 33
          % \time 2/4
          s8 
          \once \override TextScript #'extra-offset = #'(-1.3 . 10.8)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 11.43) 
          s4\startTextSpan^\rhm s8\stopTextSpan|
          % Bar 34
          % \time 6\4
          s8 
          \once \override TextScript #'extra-offset = #'(-1.3 . 14.5)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 15.225) 
          s8\startTextSpan^\rhm 
          \once \override TextScript #'extra-offset = #'(1.5 . 14.45)
          s4\stopTextSpan^\lhfour s8 
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 15.225) 
          s8\startTextSpan s4\stopTextSpan s8 
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 15.225) 
          s8\startTextSpan s4\stopTextSpan |
          % Bar 35
          % \time 3/4
          s2. |
          % Bar 36
          % \time 3/4
          s2. |
          % Bar 37
          % \time 3/4
          s2. |
          % Bar 38
          % \time 3/4
          s2. |
          % Bar 39
          % \time 5/4
          s2. s2 |
          % Bar 40
          % \time 3/4
          s2. |
          % Bar 41 
          % \time 4/4
          s1 |
          % Bar 42
          % \time 3/4
          s4 
          \once \override TextScript #'extra-offset = #'(-1.3 . 8.5)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 9.125) 
          s4\startTextSpan^\rhm s4\stopTextSpan |
          % Bar 43
          % \time 4/4
          s1 |
          % Bar 44
          % \time 3/4
          s4 
          \once \override TextScript #'extra-offset = #'(-1.3 . 8.2)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 8.77) 
          s4\startTextSpan^\rhm s4\stopTextSpan |
          % Bar 45
          s2. |
          % Bar 46
          % \time 2/4
          s2 |
          % Bar 47
          % \time 3/4
          s2. |
          % Bar 48
          % \time 3/4
          s2. |
          % Bar 49
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-1.3 . 12.5)
          s2.^\rhm |
          % Bar 50
          % \time 2/4
          s8 
          \once \override TextScript #'extra-offset = #'(0.2 . 12.7)
          s8^\lhone s4 |
          % Bar 51
          % \time 2/4
          s2 |
          % Bar 52
          % \time 2/4
          \once \override TextScript #'extra-offset = #'(0.2 . 14.0)
          \grace s8^\lhone 
          \once \override TextScript #'extra-offset = #'(0.2 . 12.7)
          s4^\lhguideone s4 |
          % Bar 53
          % \time 2/4
          s2 |
          % Bar 54
          % \time 2/4
          s2 |
          % Bar 55
          % \time 3/4
          s2. |
          % Bar 56
          % \time 3/4
          s2. |
          % Bar 57
          % \time 4/4
          s1 |
          % Bar 58
          s1 |
          % Bar 59
          s1 |
          % Bar 60
          s1 |
          % Bar 61
          s1 |
          % Bar 62
          s1 |
          % Bar 63
          s1 |
          % Bar 64
          s1 |
          % Bar 65
          s1 |
          % Bar 66
          s1 |
          % Bar 67
          s1 |
          % Bar 68
          s1 |
          % Bar 69
          s1 |
          % Bar 70
          s1 |
          % Bar 71
          s1 |
          % Bar 72
          s1 |
          % Bar 73
          s1 |
          % Bar 74
          s1 |
          % Bar 75
          s1 |
          % Bar 76
          s1 |
          % Bar 77
          s1 |
          % Bar 78
          \once \override TextSpanner #'extra-offset = #'(0.0 . 13.78)
          \once \override TextScript #'extra-offset = #'(-1.2 . 13.2)
          s2\startTextSpan^\rhm s8 s4.\stopTextSpan |
          % Bar 79
          s1 |
          % Bar 80
          s1 |
          % Bar 81
          s1 |
          % Bar 82
          s1 |
          % Bar 83
          s1 |
          % Bar 84
          s1 |
          % Bar 85
          s1 |
          % Bar 86
          s2 s8 
          \once \override TextScript #'(extra-offset) = #'(0.0 . 0.0)
          s16_\markup { \halign #CENTER \fontsize #-2 "note 3"}
          \once \override TextScript #'(extra-offset) = #'(-1.1 . 9.8)
          \override TextSpanner #'extra-offset = #'(0.0 . 10.45)
          \override TextSpanner #'to-barline = ##t
          s16\startTextSpan^\rhm s4 |
          % Bar 87
          \override TextSpanner #'extra-offset = #'(0.0 . 12.78)
          s1\stopTextSpan\startTextSpan |
          % Bar 88
          s2 s8 s16\stopTextSpan s16\startTextSpan s4 |
          % Bar 89
          s1|
          % Bar 90
          s2\stopTextSpan\startTextSpan s8 s16\stopTextSpan s16\startTextSpan s4 |
          % Bar 91
          s1 |
          % Bar 92
          s2 s8 s16\stopTextSpan s16\startTextSpan s4 |
          % Bar 93
          \override TextSpanner #'extra-offset = #'(0.0 . 12.45)
          s1\stopTextSpan\startTextSpan |
          % Bar 94
          s2 s8 s16\stopTextSpan s16\startTextSpan s4 |
          % Bar 95
          s1 |
          % Bar 96
          \override TextSpanner #'extra-offset = #'(0.0 . 15.89)
          s2\stopTextSpan\startTextSpan s8 s16\stopTextSpan s16\startTextSpan s4 |
          % Bar 97
          s1 |
          % Bar 98
          s2 s8 s16\stopTextSpan s16\startTextSpan s4 |
          % Bar 99
          \override TextSpanner #'extra-offset = #'(0.0 . 10.88)
          s1\stopTextSpan\startTextSpan |
          % Bar 100
          s2 s8 
          \once \override TextScript #'extra-offset = #'(-1.8 . 10.3)
          s16\stopTextSpan^\rhm s16 s8 s8 |
          % Bar 101
          s1 |
          % Bar 102
          s1 |
          % Bar 103
          s1 |
          % Bar 104
          \once \override TextScript #'extra-offset = #'(3.0 . 8.8)
          s1^\markup { \right-brace #45 } |
          % Bar 105
          % \time 3/4
          s2. |
          % Bar 106
          % \time 2/4
          \once \override TextScript #'extra-offset = #'(3.5 . 10.25)
          s2^\markup { \right-brace #45 } |
          % Bar 107
          % \time 3/4
          s2. |
          % Bar 108
          % \time 3/4
          s2. |
          % Bar 109
          % \time 3/4
          s2. |
          % Bar 110
          % \time 3/4
          s2. |
          % Bar 111
          % \time 4/4
          s1 |
          % Bar 112
          % \time 3/4
          s2. |
          % Bar 113
          % \time 3/4
          s2. |
          % Bar 114
          % \time 3/4
          s2. |
          % Bar 115
          % \time 3/4
          s2. |
          % Bar 116
          % \time 3/4
          s2. |
          % Bar 117
          % \time 3/4
          s2. |
          % Bar 118
          % \time 3/4
          s2. |
          % Bar 119
          % \time 3/4
          s2. |
          % Bar 120
          % \time 2/4
          s4 
          \override TextSpanner #'extra-offset = #'(0.0 . 10.42)
          s4\startTextSpan |
          % Bar 121
          % \time 3/4
          s4 s4\stopTextSpan s8 s8\startTextSpan |
          % Bar 122
          % \time 2/4
          s4 s4\stopTextSpan |
          % Bar 123
          s4 
          \override TextSpanner #'extra-offset = #'(0.0 . 12.62)
          s4\startTextSpan |
          % Bar 124
          % 1/4 3/8
          s4 s4 s8\stopTextSpan |
          % Bar 125
          % \time 2/4
          s8 s8\startTextSpan s8 s8\stopTextSpan |
          % Bar 126
          % \time 6/4
          s8 
          \override TextSpanner #'extra-offset = #'(0.0 . 11.69)
          s8\startTextSpan s8\stopTextSpan s8 s8 s8\startTextSpan s8\stopTextSpan s8 s8 s8\startTextSpan s8\stopTextSpan s8
          % Bar 127
          % \time 3/4
          s2. |
          % Bar 128
          s2. |
          % Bar 129
          s2.|
          % Bar 130
          s2. |
          % Bar 131
          % \time 2/4
          s2 |
          % Bar 132
          % \time 3/4
          s2. |
          % Bar 133
          s2. |
          % Bar 134
          s2. |
          % Bar 135
          % \time 2/4
          s2 |
          % Bar 136
          s2 |
          % Bar 137
          % \time 4/4
          s1 |

        }

        dynamicsthree = {
          \override TextSpanner #'style = #'line
          \override TextSpanner #'thickness = #8
          \override TextSpanner #'color = #(x11-color "plum")
          \override TextSpanner #'layer = #-1
          \override TextSpanner #'extra-offset = #'(0.0 . 13.75)
          \override TextScript #'(extra-offset) = #'(-0.5 . 14.0)
          % Bar 1
          s1  |
          % Bar 2
          s1 |
          % Bar 3
          s1 |
          % Bar 4
          s1 |
          % Bar 5
          s1 |
          % Bar 6
          s1 |
          % Bar 7
          s1 |
          % Bar 8
          s1 |
          % Bar 9
          s1 |
          % Bar 10
          s1 |
          % Bar 11
          s1 |
          % Bar 12
          s1 |
          % Bar 13
          s1 |
          % Bar 14
          s1 |
          % Bar 15
          s1 |
          % Bar 16
          s1 |
          % Bar 17
          s1 |
          % Bar 18
          \once \override TextScript #'extra-offset = #'(-1.0 . 12.9)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 13.54)
          s8\startTextSpan^\rhi 
          \once \override TextScript #'extra-offset = #'(1.5 . 12.75)
          s8^\lhthree\stopTextSpan s2. |
          % Bar 19
          % 3/4
          \once \override TextScript #'extra-offset = #'(-1.2 . 12.9)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 13.54)
          s8^\rhm\startTextSpan

          s8\stopTextSpan
          \once \override TextScript #'extra-offset = #'(-1.2 . 12.9)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 13.54)
          s8^\rhm\startTextSpan
          \once \override TextScript #'extra-offset = #'(1.35 . 12.6)
          s8^\lhguidethree\stopTextSpan
          \once \override TextScript #'extra-offset = #'(-1.2 . 12.9)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 13.54)
          s8^\rhm\startTextSpan
          s8\stopTextSpan


          |
          % Bar 20
          \once \override TextScript #'extra-offset = #'(-1.0 . 12.9)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 13.54)
          s8\startTextSpan^\rhi 
          \once \override TextScript #'extra-offset = #'(1.5 . 12.75)
          s8\stopTextSpan^\lhthree s2 |
          % Bar 21
          s2. |
          % Bar 22
          \once \override TextSpanner #'extra-offset = #'(0.0 . 9.54)
          s8\startTextSpan s8\stopTextSpan 
          \once \override TextSpanner #'extra-offset = #'(0.0 . 9.54)
          s8\startTextSpan s8\stopTextSpan 
          \once \override TextSpanner #'extra-offset = #'(0.0 . 9.54)
          s8\startTextSpan s8\stopTextSpan  |
          % Bar 23
          s2. |
          % Bar 24
          s2 
          \once \override TextScript #'extra-offset = #'(-1.2 . 16.3)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 16.97)
          s8\startTextSpan^\rhm s8\stopTextSpan |
          % Bar 25
          \once \override TextScript #'extra-offset = #'(-0.8 . 16.3)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 16.97)
          s8\startTextSpan^\rhi s8\stopTextSpan s2 |
          % Bar 26
          s2 
          \once \override TextScript #'extra-offset = #'(-0.8 . 16.3)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 16.96)
          s8\startTextSpan^\rhi s8\stopTextSpan |
          % Bar 27
          s2. |
          % Bar 28
          % \time 2/4
          s4 
          \once \override TextScript #'extra-offset = #'(-0.8 . 12.3)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 12.9)
          s4\startTextSpan^\rhi |
          % Bar 29
          % \time 3/4
          s8 
          s8\stopTextSpan s4 s8 
          \once \override TextScript #'extra-offset = #'(-0.8 . 12.3)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 12.9)
          s8\startTextSpan^\rhi |
          % Bar 30
          % \time 2/4
          s8 s8\stopTextSpan s4 |
          % Bar 31
          s4 
          \once \override TextScript #'extra-offset = #'(-0.8 . 11.4)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 12.125)
          s4\startTextSpan^\rhi |
          % Bar 32
          % compound 1/4 3/8
          s8 s8\stopTextSpan s8 s4 |
          % Bar 33
          % \time 2/4
          s8 
          \once \override TextScript #'extra-offset = #'(-0.8 . 11.4)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 12.125)
          s8\startTextSpan^\rhi s4\stopTextSpan |
          % Bar 34
          % \time 6\4
          s2 s2 s2 |
          % Bar 35
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-0.8 . 14.1)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 14.74)
          s4\startTextSpan^\rhi s8 s8\stopTextSpan  s4 |
          % Bar 36
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-0.8 . 11.7)
          \once \override TextSpanner #'extra-offset = #'(0.0 . 12.3)
          s4\startTextSpan^\rhi s8 s8\stopTextSpan  s4 |
          % Bar 37
          % \time 3/4
          s2. |
          % Bar 38
          % \time 3/4
          s2. |
          % Bar 39
          % \time 5/4
          s2. s2 |
          % Bar 40
          % \time 3/4
          s2. |
          % Bar 41 
          % \time 4/4
          s1 |
          % Bar 42
          % \time 3/4
          s4 
          \once \override TextScript #'extra-offset = #'(-0.8 . 9.1)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 9.83) 
          s8\startTextSpan^\rhi s8\stopTextSpan s4 |
          % Bar 43
          % \time 4/4
          s1 |
          % Bar 44
          % \time 3/4
          s4 
          \once \override TextScript #'extra-offset = #'(-0.8 . 8.9)
          \once \override TextSpanner #'extra-offset = #'(-0.0 . 9.43) 
          s8\startTextSpan^\rhi s8\stopTextSpan s4 |
          % Bar 45
          s2. |
          % Bar 46
          % \time 2/4
          s2 |
          % Bar 47
          % \time 3/4
          s2. |
          % Bar 48
          % \time 3/4
          s2. |
          % Bar 49
          % \time 3/4
          s2. |
          % Bar 50
          % \time 2/4
          s2 |
          % Bar 51
          % \time 2/4
          s2 |
          % Bar 52
          % \time 2/4
          s4
          \once \override TextScript #'extra-offset = #'(0.2 . 13.2)
          \grace s8^\lhthree 
          \once \override TextScript #'extra-offset = #'(0.2 . 13.2)
          s4^\lhguidethree |
          % Bar 53
          % \time 2/4
          s2 |
          % Bar 54
          % \time 2/4
          \once \override TextScript #'extra-offset = #'(2.5 . 9.2)
          s4^\lhfour 
          \once \override TextScript #'extra-offset = #'(1.5 . 9.2)
          s4^\lhone |
          % Bar 55
          % \time 3/4
          s2. |
          % Bar 56
          % \time 3/4
          s2. |
          % Bar 57
          % \time 4/4
          s1 |
          % Bar 58
          s1 |
          % Bar 59
          s1 |
          % Bar 60
          s1 |
          % Bar 61
          s1 |
          % Bar 62
          s1 |
          % Bar 63
          s1 |
          % Bar 64
          s1 |
          % Bar 65
          s1 |
          % Bar 66
          s1 |
          % Bar 67
          s1 |
          % Bar 68
          s1 |
          % Bar 69
          s1 |
          % Bar 70
          s1 |
          % Bar 71
          s1 |
          % Bar 72
          s1 |
          % Bar 73
          s1 |
          % Bar 74
          s1 |
          % Bar 75
          s1 |
          % Bar 76
          s1 |
          % Bar 77
          s1 |
          % Bar 78
          \override TextSpanner #'extra-offset = #'(0.0 . 14.48)
          \override TextScript #'(extra-offset) = #'(-0.9 . 13.9)
          s8\startTextSpan^\rhi s8\stopTextSpan 
          s8\startTextSpan^\rhi s8\stopTextSpan 
          s8\startTextSpan^\rhi s4 s8\stopTextSpan  |
          % Bar 79
          s8\startTextSpan^\rhi s8\stopTextSpan s8\startTextSpan^\rhi s4 s8\stopTextSpan s8\startTextSpan^\rhi  s8\stopTextSpan |
          % Bar 80
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 81
          \override TextSpanner #'extra-offset = #'(0.0 . 10.95)
          s8\startTextSpan s8\stopTextSpan 
          s8\startTextSpan s4 s8\stopTextSpan 
          s8\startTextSpan  s8\stopTextSpan |
          % Bar 82
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 83
          s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan s8\startTextSpan  s8\stopTextSpan |
          % Bar 84
          s4 
          \override TextSpanner #'extra-offset = #'(0.0 . 11.51)
          s8\startTextSpan s8\stopTextSpan 
          s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 85
          s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan s8\startTextSpan  s8\stopTextSpan |
          % Bar 86
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 87
          \override TextSpanner #'extra-offset = #'(0.0 . 12.09)
          s8\startTextSpan s8\stopTextSpan 
          s8\startTextSpan s4 s8\stopTextSpan
          s8\startTextSpan  s8\stopTextSpan |
          % Bar 88
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 89
          s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan s8\startTextSpan  s8\stopTextSpan |
          % Bar 90
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 91
          s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan s8\startTextSpan  s8\stopTextSpan |
          % Bar 92
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 93
          \override TextSpanner #'extra-offset = #'(0.0 . 11.74)
          s8\startTextSpan s8\stopTextSpan 
          s8\startTextSpan s4 s8\stopTextSpan
          s8\startTextSpan  s8\stopTextSpan |
          % Bar 94
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 95
          s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan s8\startTextSpan  s8\stopTextSpan |
          % Bar 96
          s4 
          \override TextSpanner #'extra-offset = #'(0.0 . 15.4)
          s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 97
          s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan s8\startTextSpan  s8\stopTextSpan |
          % Bar 98
          s4 s8\startTextSpan s8\stopTextSpan s8\startTextSpan s4 s8\stopTextSpan  |
          % Bar 99
          \override TextSpanner #'extra-offset = #'(0.0 . 11.17)
          s8\startTextSpan s8\stopTextSpan 
          s8\startTextSpan s4 s8\stopTextSpan
          s8\startTextSpan  s8\stopTextSpan |
          % Bar 100
          s2 s8 
          \override TextScript #'(extra-offset) = #'(-3.4 . 12.7)
          s4.^\lhfour |
          % Bar 101
          s1 |
          % Bar 102
          s2 s8 
          \override TextScript #'(extra-offset) = #'(-2.5 . 17.0)
          s4.^\lhfour |
          % Bar 103
          s1 |
          % Bar 104
          \override TextScript #'(extra-offset) = #'(3.4 . 14.0)
          s1^\lhthree |
          % Bar 105
          % \time 3/4
          s2. |
          % Bar 106
          % \time 2/4
          \override TextScript #'(extra-offset) = #'(3.9 . 15.45)
          s2^\lhthree |
          % Bar 107
          % \time 3/4
          s2. |
          % Bar 108
          % \time 3/4
          s2. |
          % Bar 109
          % \time 3/4
          s2. |
          % Bar 110
          % \time 3/4
          s2. |
          % Bar 111
          % \time 4/4
          s1 |
          % Bar 112
          % \time 3/4
          s2. |
          % Bar 113
          % \time 3/4
          s2. |
          % Bar 114
          % \time 3/4
          s2. |
          % Bar 115
          % \time 3/4
          s2. |
          % Bar 116
          % \time 3/4
          s2. |
          % Bar 117
          % \time 3/4
          s2. |
          % Bar 118
          % \time 3/4
          s2. |
          % Bar 119
          % \time 3/4
          s2. |
          % Bar 120
          % \time 2/4
          s4 
          \override TextSpanner #'extra-offset = #'(0.0 . 9.72)
          s4\startTextSpan |
          % Bar 121
          % \time 3/4
          s8 s8\stopTextSpan s4. s8\startTextSpan |
          % Bar 122
          % \time 2/4
          s8 s8\stopTextSpan s4 |
          % Bar 123
          s4 
          \override TextSpanner #'extra-offset = #'(0.0 . 11.9)
          s4\startTextSpan |
          % Bar 124
          % 1/4 3/8
          s8 s8\stopTextSpan s4. |
          % Bar 125
          % \time 2/4
          s8 s8\startTextSpan s8\stopTextSpan s8 |
          % Bar 126
          % \time 6/4
          s2 s2 s2 |
          % Bar 127
          % \time 3/4
          s2. |
          % Bar 128
          s2. |
          % Bar 129
          s2.|
          % Bar 130
          s2. |
          % Bar 131
          % \time 2/4
          s2 |
          % Bar 132
          % \time 3/4
          s2. |
          % Bar 133
          s2. |
          % Bar 134
          s2. |
          % Bar 135
          % \time 2/4
          s2 |
          % Bar 136
          s2 |
          % Bar 137
          % \time 4/4
          s4 
          \override TextScript #'(extra-offset) = #'(3.5 . 15.45)
          s4^\markup { \fontsize #-2 "b" } s4 s4 |
        }

        dynamicsfour = {
          \override TextScript #'(extra-offset) = #'(-0.5 . 14.0)
          \override TextSpanner #'style = #'line
          \override TextSpanner #'thickness = #8
          \override TextSpanner #'color = #(x11-color "plum")
          \override TextSpanner #'layer = #-1
          \override TextSpanner #'extra-offset = #'(0.0 . 13.75)
          % Bar 1
          s1  |
          % Bar 2
          s1 |
          % Bar 3
          s1 |
          % Bar 4
          s1 |
          % Bar 5
          s1 |
          % Bar 6
          s1 |
          % Bar 7
          s1 |
          % Bar 8
          s1 |
          % Bar 9
          s1 |
          % Bar 10
          s1 |
          % Bar 11
          s1 |
          % Bar 12
          s1 |
          % Bar 13
          s1 |
          % Bar 14
          s1 |
          % Bar 15
          s1 |
          % Bar 16
          s1 |
          % Bar 17
          s1 |
          % Bar 18
          s1 |
          % Bar 19
          % 3/4
          s2. |
          % Bar 20
          s2. |
          % Bar 21
          s2. |
          % Bar 22
          s2. |
          % Bar 23
          s4 
          \once \override TextScript #'(extra-offset) = #'(1.8 . 7.55)
          s4^\lhthree s4 |
          % Bar 24
          s2. |
          % Bar 25
          \once \override TextScript #'(extra-offset) = #'(1.8 . 14.6)
          s4^\markup { \right-brace #10.5 } 
          \once \override TextScript #'(extra-offset) = #'(1.8 . 16.55)
          s4^\lhtwo s4 |
          % Bar 26
          s2. |
          % Bar 27
          s2. |
          % Bar 28
          % \time 2/4
          s2 |
          % Bar 29
          % \time 3/4
          s2. |
          % Bar 30
          % \time 2/4
          s2 |
          % Bar 31
          s2 |
          % Bar 32
          % compound 1/4 3/8
          s4 s4. |
          % Bar 33
          % \time 2/4
          s2 |
          % Bar 34
          % \time 6\4
          s2 s2 s2 |
          % Bar 35
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-0.8 . 12.425)
          s4^\markup { \left-brace #10.5 } 
          \once \override TextScript #'extra-offset = #'(1.8 . 14.37)
          s4^\lhtwo s4 |
          % Bar 36
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-0.3 . 9.98)
          s4^\markup { \left-brace #10.5 } 
          \once \override TextScript #'extra-offset = #'(1.8 . 11.95)
          s2^\lhtwo |
          % Bar 37
          % \time 3/4
          s2. |
          % Bar 38
          % \time 3/4
          s2. |
          % Bar 39
          % \time 5/4
          s2. s2 |
          % Bar 40
          % \time 3/4
          s2. |
          % Bar 41 
          % \time 4/4
          s1 |
          % Bar 42
          % \time 3/4
          s2. |
          % Bar 43
          % \time 4/4
          s1 |
          % Bar 44
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-1.0 . 5.15)
          s4^\markup { \left-brace #10.5 } s2 |
          % Bar 45
          s2. |
          % Bar 46
          % \time 2/4
          s2 |
          % Bar 47
          % \time 3/4
          s4
          \once \override TextScript #'extra-offset = #'(2.0 . 8.0)
          s2^\lhfour |
          % Bar 48
          % \time 3/4
          s2. |
          % Bar 49
          % \time 3/4
          s2. |
          % Bar 50
          % \time 2/4
          s2 |
          % Bar 51
          % \time 2/4
          s2 |
          % Bar 52
          % \time 2/4
          s2 |
          % Bar 53
          % \time 2/4
          s2 |
          % Bar 54
          % \time 2/4
          s2 |
          % Bar 55
          % \time 3/4
          s4 
          \once \override TextScript #'extra-offset = #'(2.0 . 6.55)
          s2^\lhfour |
          % Bar 56
          % \time 3/4
          s2. |
          % Bar 57
          % \time 4/4
          s1 |
          % Bar 58
          s1 |
          % Bar 59
          s1 |
          % Bar 60
          s1 |
          % Bar 61
          s1 |
          % Bar 62
          s1 |
          % Bar 63
          s1 |
          % Bar 64
          s1 |
          % Bar 65
          s1 |
          % Bar 66
          s1 |
          % Bar 67
          s1 |
          % Bar 68
          s1 |
          % Bar 69
          s1 |
          % Bar 70
          s4
          \once \override TextScript #'extra-offset = #'(2.0 . 9.17)
          s2.^\lhguidefour |
          % Bar 71
          s1 |
          % Bar 72
          \once \override TextScript #'extra-offset = #'(2.0 . 8.0)
          s1^\lhguidefour |
          % Bar 73
          \once \override TextScript #'extra-offset = #'(2.0 . 8.0)
          s1^\lhguidefour |
          % Bar 74
          \once \override TextScript #'extra-offset = #'(2.0 . 8.2)
          s1^\lhtwo |
          % Bar 75
          \once \override TextScript #'extra-offset = #'(2.0 . 6.8)
          s1^\lhguidetwo |
          % Bar 76
          s1 |
          % Bar 77
          s1 |
          % Bar 78
          s4 
          \once \override TextScript #'extra-offset = #'(1.8 . 13.3)
          s4^\lhthree s2 |
          % Bar 79
          s2 s4.
          \once \override TextScript #'(extra-offset) = #'(0.0 . 6.0)
          s8_\markup { \halign #CENTER \fontsize #-2 "note 2"} |
          % Bar 80
          s1 |
          % Bar 81
          s1 |
          % Bar 82
          s4 
          \once \override TextScript #'extra-offset = #'(1.8 . 9.7)
          s4^\lhtwo s2 |
          % Bar 83
          s1 |
          % Bar 84
          s1 |
          % Bar 85
          s1 |
          % Bar 86
          s1 |
          % Bar 87
          s1 |
          % Bar 88
          s1 |
          % Bar 89
          s1 |
          % Bar 90
          s1 |
          % Bar 91
          s1 |
          % Bar 92
          s1 |
          % Bar 93
          s1 |
          % Bar 94
          s1 |
          % Bar 95
          s1 |
          % Bar 96
          s1 |
          % Bar 97
          s1 |
          % Bar 98
          s4 
          \once \override TextScript #'extra-offset = #'(1.8 . 15.8)
          s4^\lhguidethree s2 |
          % Bar 99
          s1 |
          % Bar 100
          s4 
          \once \override TextScript #'extra-offset = #'(1.8 . 9.2)
          s4^\lhtwo s2 |
          % Bar 101
          s1 |
          % Bar 102
          s4 
          \once \override TextScript #'extra-offset = #'(2.0 . 12.9)
          s4^\lhguidetwo s2 |
          % Bar 103
          s1 |
          % Bar 104
          s1 |
          % Bar 105
          % \time 3/4
          s2. |
          % Bar 106
          % \time 2/4
          s2 |
          % Bar 107
          % \time 3/4
          s4 
          \once \override TextScript #'extra-offset = #'(1.8 . 14.95)
          s4^\lhtwo s4 |
          % Bar 108
          % \time 3/4
          s2. |
          % Bar 109
          % \time 3/4
          s2. |
          % Bar 110
          % \time 3/4
          s2. |
          % Bar 111
          % \time 4/4
          s1 |
          % Bar 112
          % \time 3/4
          s4 s4 s4 |
          % Bar 113
          % \time 3/4
          s2. |
          % Bar 114
          % \time 3/4
          s2. |
          % Bar 115
          % \time 3/4
          s2. |
          % Bar 116
          % \time 3/4
          s2. |
          % Bar 117
          % \time 3/4
          s4 
          \once \override TextScript #'extra-offset = #'(1.8 . 7.6)
          s4^\lhthree s4 |
          % Bar 118
          % \time 3/4
          s2. |
          % Bar 119
          % \time 3/4
          s2. |
          % Bar 120
          % \time 2/4
          s2 |
          % Bar 121
          % \time 3/4
          s2. |
          % Bar 122
          % \time 2/4
          s2 |
          % Bar 123
          s2 |
          % Bar 124
          % 1/4 3/8
          s4 s4. |
          % Bar 125
          % \time 2/4
          s2 |
          % Bar 126
          % \time 6/4
          s2 s2 s2 |
          % Bar 127
          % \time 3/4
          s2. |
          % Bar 128
          s2. |
          % Bar 129
          s2.|
          % Bar 130
          s2. |
          % Bar 131
          % \time 2/4
          s2 |
          % Bar 132
          % \time 3/4
          s2. |
          % Bar 133
          s2. |
          % Bar 134
          s2. |
          % Bar 135
          % \time 2/4
          s2 |
          % Bar 136
          s2 |
          % Bar 137
          % \time 4/4
          \override TextScript #'(extra-offset) = #'(1.8 . 11.42)
          s1^\lhthree |

        }

        dynamicsfive = {
          \override TextScript #'(extra-offset) = #'(-0.5 . 14.0)
          \override TextSpanner #'style = #'line
          \override TextSpanner #'thickness = #8
          \override TextSpanner #'color = #(x11-color "plum")
          \override TextSpanner #'layer = #-1
          \override TextSpanner #'extra-offset = #'(0.0 . 13.75)
          % Bar 1
          s1 |
          % Bar 2
          s1 |
          % Bar 3
          s1 |
          % Bar 4
          s1 |
          % Bar 5

          s1 |
          % Bar 6
          s1 |
          % Bar 7
          \override TextScript #'(extra-offset) = #'(1.9 . 7.35)
          s8^\lhone

          s8 s2.|
          % Bar 8
          s1 |
          % Bar 9

          s8 
          \once \override TextScript #'(extra-offset) = #'(-1.9 . 4.35)
          s8^\lhone s2.|
          % Bar 10
          s1 |
          % Bar 11
          s1 |
          % Bar 12
          s1 |
          % Bar 13
          s1 |
          % Bar 14
          s1 |
          % Bar 15

          s1 |
          % Bar 16

          s1 |
          % Bar 17

          s1 |
          % Bar 18 
          \once \override TextScript #'(extra-offset) = #'(1.6 . 11.7)
          s8^\lhtwo s8 s2. |
          % Bar 19
          % 3/4

          s16 s8. 

          s16 
          \once \override TextScript #'(extra-offset) = #'(-1.6 . 11.55)
          s16^\lhguidetwo s8 

          s16 s8. |
          % Bar 20 
          \once \override TextScript #'(extra-offset) = #'(1.6 . 11.7)
          s2.^\lhtwo |
          % Bar 21

          s2. |
          % Bar 22
          s2. |
          % Bar 23
          s2. |
          % Bar 24
          s2. |
          % Bar 25
          \once \override TextScript #'(extra-offset) = #'(2.2 . 16.35)
          s4^\lhone s4
          \once \override TextScript #'extra-offset = #'(-1.2 . 21.9)
          s16^\markup { \left-brace #10.5 }
          \once \override TextScript #'(extra-offset) = #'(-5.2 . 22.35)
          s16^\lhfour s8 |
          % Bar 26
          s2. |
          % Bar 27
          s2. |
          % Bar 28
          % \time 2/4
          s2 |
          % Bar 29
          % \time 3/4
          \once \override TextScript #'(extra-offset) = #'(1.6 . 10.85)
          s2.^\lhtwo |
          % Bar 30
          % \time 2/4
          s2 |
          % Bar 31
          s2 |
          % Bar 32
          % compound 1/4 3/8
          s4 s4. |
          % Bar 33
          % \time 2/4
          s2 |
          % Bar 34
          % \time 6\4
          s2 s2 s2 |
          % Bar 35
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-2.3 . 14.125)
          s2.^\lhone |
          % Bar 36
          % \time 3/4
          s2. |
          % Bar 37
          % \time 3/4
          s2. |
          % Bar 38
          % \time 3/4
          s2. |
          % Bar 39
          % \time 5/4
          s2. s2 |
          % Bar 40
          % \time 3/4
          s2. |
          % Bar 41 
          % \time 4/4
          s1 |
          % Bar 42
          % \time 3/4
          s2. |
          % Bar 43
          % \time 4/4
          s1 |
          % Bar 44
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-2.5 . 6.85)
          s2.^\lhone |
          % Bar 45
          s2. |
          % Bar 46
          % \time 2/4
          s2 |
          % Bar 47
          % \time 3/4
          s2. |
          % Bar 48
          % \time 3/4
          s2. |
          % Bar 49
          % \time 3/4
          s2. |
          % Bar 50
          % \time 2/4
          s2 |
          % Bar 51
          % \time 2/4
          s2 |
          % Bar 52
          % \time 2/4
          s2 |
          % Bar 53
          % \time 2/4
          s2 |
          % Bar 54
          % \time 2/4
          s2 |
          % Bar 55
          % \time 3/4
          s2. |
          % Bar 56
          % \time 3/4
          s2. |
          % Bar 57
          % \time 4/4
          s1 |
          % Bar 58
          s1 |
          % Bar 59
          s1 |
          % Bar 60
          s1 |
          % Bar 61
          s1 |
          % Bar 62
          s1 |
          % Bar 63
          s1 |
          % Bar 64
          s1 |
          % Bar 65
          s1 |
          % Bar 66
          s1 |
          % Bar 67
          \once \override TextScript #'extra-offset = #'(0.0 . -0.0)
          s1_\markup { \halign #CENTER \fontsize #-2 "note 1"} | 
          % Bar 68
          s1 |
          % Bar 69
          s1 |
          % Bar 70
          s1 |
          % Bar 71
          s1 |
          % Bar 72
          s1 |
          % Bar 73
          s1 |
          % Bar 74
          s1 |
          % Bar 75
          s1 |
          % Bar 76
          s1 |
          % Bar 77
          s1 |
          % Bar 78
          s1 |
          % Bar 79
          s1 |
          % Bar 80
          s1 |
          % Bar 81
          s1 |
          % Bar 82
          s1 |
          % Bar 83
          s1 |
          % Bar 84
          s1 |
          % Bar 85
          s1 |
          % Bar 86
          s1 |
          % Bar 87
          s1 |
          % Bar 88
          s1 |
          % Bar 89
          s1 |
          % Bar 90
          s1 |
          % Bar 91
          s1 |
          % Bar 92
          s1 |
          % Bar 93
          s1 |
          % Bar 94
          s1 |
          % Bar 95
          s1 |
          % Bar 96
          s1 |
          % Bar 97
          s1 |
          % Bar 98
          s1 |
          % Bar 99
          s1 |
          % Bar 100
          s1 |
          % Bar 101
          s1 |
          % Bar 102
          s1 |
          % Bar 103
          s1 |
          % Bar 104
          s1 |
          % Bar 105
          % \time 3/4
          \once \override TextScript #'extra-offset = #'(-1.0 . 21.4)
          s16^\markup { \fontsize #0 {
            \general-align #Y #DOWN {
              \arrow-head #Y #UP ##f
            }
          }
        }
        \once \override TextScript #'extra-offset = #'(-3.02 . 13.45)
        s16^\markup { \draw-line #'(0 . 8.5)
      }
      s8 s8
        \once \override TextScript #'extra-offset = #'(-0.8 . 13.4)
      s16^\markup { \fontsize #0 {
        \general-align #Y #DOWN {
          \arrow-head #Y #DOWN ##f
        }
      }
    }
        \once \override TextScript #'extra-offset = #'(-4.19 . 13.8)
    s16^\markup { \draw-line #'(0 . 8.5)
  }
  s8
        \once \override TextScript #'extra-offset = #'(-5.6 . 21.4)
  s16^\markup { \fontsize #0 {
    \general-align #Y #DOWN {
      \arrow-head #Y #UP ##f
    }
  }
}
        \once \override TextScript #'extra-offset = #'(-8.13 . 13.45)
        s16^\markup { \draw-line #'(0 . 8.5)
        } |
        % Bar 106
        % \time 2/4
        s2 |
    % Bar 107
    % \time 3/4
    s2. |
    % Bar 108
    % \time 3/4
    s2. |
    % Bar 109
    % \time 3/4
    s2. |
    % Bar 110
    % \time 3/4
    s2. |
    % Bar 111
    % \time 4/4
    s1 |
    % Bar 112
    % \time 3/4
    s2. |
    % Bar 113
    % \time 3/4
    \override TextScript #'(extra-offset) = #'(-0.3 . 6.45)
    s2.^\markup { \left-brace #10.5 } |
    % Bar 114
    % \time 3/4
    s2. |
    % Bar 115
    % \time 3/4
    s2. |
    % Bar 116
    % \time 3/4
    s2. |
    % Bar 117
    % \time 3/4
    \override TextScript #'(extra-offset) = #'(-0.3 . 7.73)
    s2.^\markup { \left-brace #10.5 }|
    % Bar 118
    % \time 3/4
    s2. |
    % Bar 119
    % \time 3/4
    s2. |
    % Bar 120
    % \time 2/4
    s2 |
    % Bar 121
    % \time 3/4
    s2. |
    % Bar 122
    % \time 2/4
    s2 |
    % Bar 123
    s2 |
    % Bar 124
    % 1/4 3/8
    s4 s4. |
    % Bar 125
    % \time 2/4
    s2 |
    % Bar 126
    % \time 6/4
    s2 s2 s2 |
    % Bar 127
    % \time 3/4
    \override TextScript #'(extra-offset) = #'(-0.3 . 5.8)
    s2.^\markup { \left-brace #10.5 } |
    % Bar 128
    s2. |
    % Bar 129
    s2.|
    % Bar 130
    s2. |
    % Bar 131
    % \time 2/4
    s2 |
    % Bar 132
    % \time 3/4
    s2. |
    % Bar 133
    s2. |
    % Bar 134
    s2. |
    % Bar 135
    % \time 2/4
    s2 |
    % Bar 136
    s2 |
    % Bar 137
    % \time 4/4
    s1 |

  }

  dynamicssix = {
    \override TextScript #'extra-offset = #'(-0.7 . 9.5)
    % Bar 1
    s1 |
    % Bar 2
    s1 |
    % Bar 3
    s1 |
    % Bar 4
    s1 |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    s1 |
    % Bar 10
    s1 |
    % Bar 11
    s1 |
    % Bar 12
    s1 |
    % Bar 13
    s1 |
    % Bar 14
    s1 |
    % Bar 15
    s1 |
    % Bar 16
    s1 |
    % Bar 17
    s1 |
    % Bar 18
    s1 |
    % Bar 19
    % 3/4
    s2. |
    % Bar 20
    s2. |
    % Bar 21
    s2. |
    % Bar 22
    s2. |
    % Bar 23
    \once \override TextScript #'(extra-offset) = #'(1.6 . 7.0)
    s2.^\lhtwo |
    % Bar 24
    s2. |
    % Bar 25
    s2. |
    % Bar 26
    s2. |
    % Bar 27
    s2. |
    % Bar 28
    % \time 2/4
    s2 |
    % Bar 29
    % \time 3/4
    s2. |
    % Bar 30
    % \time 2/4
    s2 |
    % Bar 31
    s2 |
    % Bar 32
    % compound 1/4 3/8
    s4 s4. |
    % Bar 33
    % \time 2/4
    s2 |
    % Bar 34
    % \time 6\4
    s2 s2 s2 |
    % Bar 35
    % \time 3/4
    s2. |
    % Bar 36
    % \time 3/4
    s2. |
    % Bar 37
    % \time 3/4
    s2. |
    % Bar 38
    % \time 3/4
    s2. |
    % Bar 39
    % \time 5/4
    s2. s2 |
    % Bar 40
    % \time 3/4
    s2. |
    % Bar 41 
    % \time 4/4
    s1 |
    % Bar 42
    % \time 3/4
    s2. |
    % Bar 43
    % \time 4/4
    s1 |
    % Bar 44
    % \time 3/4
    s2. |
    % Bar 45
    s2. |
    % Bar 46
    % \time 2/4
    s2 |
    % Bar 47
    % \time 3/4
    \once \override TextScript #'(extra-offset) = #'(1.6 . 6.1)
    s2.^\lhtwo |
    % Bar 48
    % \time 3/4
    s2. |
    % Bar 49
    % \time 3/4
    \once \override TextScript #'(extra-offset) = #'(1.6 . 6.1)
    s2.^\lhguidetwo |
    % Bar 50
    % \time 2/4
    s2 |
    % Bar 51
    % \time 2/4
    s2 |
    % Bar 52
    % \time 2/4
    s2 |
    % Bar 53
    % \time 2/4
    \once \override TextScript #'(extra-offset) = #'(2.0 . 6.6)
    s2^\lhtwo |
    % Bar 54
    % \time 2/4
    s2 |
    % Bar 55
    % \time 3/4
    s2. |
    % Bar 56
    % \time 3/4
    s2. |
    % Bar 57
    % \time 4/4
    s1 |
    % Bar 58
    s1 |
    % Bar 59
    \once \override TextScript #'(extra-offset) = #'(1.7 . 6.4)
    s1^\lhone |
    % Bar 60
    s1 |
    % Bar 61
    \once \override TextScript #'(extra-offset) = #'(1.7 . 6.9)
    s1^\lhguideone |
    % Bar 62
    s1 |
    % Bar 63
    s1 |
    % Bar 64
    \once \override TextScript #'(extra-offset) = #'(1.7 . 7.1)
    s1^\lhone |
    % Bar 65
    s1 |
    % Bar 66
    s1 |
    % Bar 67
    \once \override TextScript #'(extra-offset) = #'(1.7 . 7.1)
    s1^\lhthumb | 
    % Bar 68
    s1 |
    % Bar 69
    s1 |
    % Bar 70
    s1 |
    % Bar 71
    s1 |
    % Bar 72
    s1 |
    % Bar 73
    s1 |
    % Bar 74
    s1 |
    % Bar 75
    s1 |
    % Bar 76
    \once \override TextScript #'extra-offset = #'(2.0 . 6.2)
    s1^\lhone |
    % Bar 77
    s1 |
    % Bar 78
    \once \override TextScript #'extra-offset = #'(1.7 . 10.2)
    s1^\lhtwo |
    % Bar 79
    s1 |
    % Bar 80
    s1 |
    % Bar 81
    s1 |
    % Bar 82
    \once \override TextScript #'extra-offset = #'(1.7 . 7.2)
    s1^\lhone |
    % Bar 83
    s1 |
    % Bar 84
    s1 |
    % Bar 85
    s1 |
    % Bar 86
    s1 |
    % Bar 87
    s1 |
    % Bar 88
    s1 |
    % Bar 89
    s1 |
    % Bar 90
    s1 |
    % Bar 91
    s1 |
    % Bar 92
    s1 |
    % Bar 93
    s1 |
    % Bar 94
    s1 |
    % Bar 95
    s1 |
    % Bar 96
    s1 |
    % Bar 97
    s1 |
    % Bar 98
    \once \override TextScript #'extra-offset = #'(1.7 . 13.2)
    s1^\lhguidetwo |
    % Bar 99
    s1 |
    % Bar 100
    \once \override TextScript #'extra-offset = #'(1.8 . 8.0)
    s1^\lhone |
    % Bar 101
    s1 |
    % Bar 102
    \once \override TextScript #'extra-offset = #'(1.8 . 10.7)
    s1^\lhguideone|
    % Bar 103
    s1 |
    % Bar 104
    s1 |
    % Bar 105
    % \time 3/4
    \once \override TextScript #'extra-offset = #'(-1.5 . 11.7)
    s8^\rhp 
    \once \override TextScript #'extra-offset = #'(-5.4 . 12.7)
    s8^\rhi s8 
    \once \override TextScript #'extra-offset = #'(-1.5 . 11.7)
    s16^\rhp 
    \once \override TextScript #'extra-offset = #'(-4.7 . 12.7)
    s16^\rhi 
    \once \override TextScript #'extra-offset = #'(-1.0 . 11.9)
    s8^\rhp 
    \once \override TextScript #'extra-offset = #'(-5.8 . 12.9)
    s8^\rhi |
    % Bar 106
    % \time 2/4
    \once \override TextScript #'extra-offset = #'(-1.8 . 13.9)
    s2^\rhp |
    % Bar 107
    % \time 3/4
    s2. |
    % Bar 108
    % \time 3/4
    s2. |
    % Bar 109
    % \time 3/4
    s2. |
    % Bar 110
    % \time 3/4
    s2. |
    % Bar 111
    % \time 4/4
    s1 |
    % Bar 112
    % \time 3/4
    s2. |
    % Bar 113
    % \time 3/4
    \once \override TextScript #'extra-offset = #'(-1.8 . 8.15)
    s2.^\lhone |
    % Bar 114
    % \time 3/4
    s2. |
    % Bar 115
    % \time 3/4
    s2. |
    % Bar 116
    % \time 3/4
    s2. |
    % Bar 117
    % \time 3/4
    \once \override TextScript #'extra-offset = #'(-1.8 . 9.45)
    s2.^\lhtwo |
    % Bar 118
    % \time 3/4
    s2. |
    % Bar 119
    % \time 3/4
    s2. |
    % Bar 120
    % \time 2/4
    s2 |
    % Bar 121
    % \time 3/4
    s2. |
    % Bar 122
    % \time 2/4
    s2 |
    % Bar 123
    s2 |
    % Bar 124
    % 1/4 3/8
    s4 s4. |
    % Bar 125
    % \time 2/4
    s2 |
    % Bar 126
    % \time 6/4
    s2 s2 s2 |
    % Bar 127
    % \time 3/4
    s2. |
    % Bar 128
    s2. |
    % Bar 129
    s2.|
    % Bar 130
    s2. |
    % Bar 131
    % \time 2/4
    s2 |
    % Bar 132
    % \time 3/4
    s2. |
    % Bar 133
    s2. |
    % Bar 134
    s2. |
    % Bar 135
    % \time 2/4
    s2 |
    % Bar 136
    s2 |
    % Bar 137
    % \time 4/4
    \once \override TextScript #'extra-offset = #'(-0.8 . 9.2)
    s1^\rhp |
  }
  sixstrlhfinger = {
    % Bar 1
    s1 |
    % Bar 2
    s1 |
    % Bar 3
    s1 |
    % Bar 4
    s1 |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    s1 |
    % Bar 10
    s1 |
    % Bar 11
    s1 |
    % Bar 12
    s1 |
    % Bar 13
    s1 |
    % Bar 14
    s1 |
    % Bar 15
    s1 |
    % Bar 16
    s1 |
    % Bar 17
    s1 |
    % Bar 18
    s1 |
    % Bar 19
    % 3/4
    s2. |
    % Bar 20
    s2. |
    % Bar 21
    s2. |
    % Bar 22
    s2. |
    % Bar 23
    s2. |
    % Bar 24
    s2. |
    % Bar 25
    s2. |
    % Bar 26
    s2. |
    % Bar 27
    s2. |
    % Bar 28
    % \time 2/4
    s2 |
    % Bar 29
    % \time 3/4
    s2. |
    % Bar 30
    % \time 2/4
    s2 |
    % Bar 31
    s2 |
    % Bar 32
    % compound 1/4 3/8
    s4 s4. |
    % Bar 33
    % \time 2/4
    s2 |
    % Bar 34
    % \time 6\4
    s2 s2 s2 |
    % Bar 35
    % \time 3/4
    s2. |
    % Bar 36
    % \time 3/4
    s2. |
    % Bar 37
    % \time 3/4
    s2. |
    % Bar 38
    % \time 3/4
    s2. |
    % Bar 39
    % \time 5/4
    s2. s2 |
    % Bar 40
    % \time 3/4
    s2. |
    % Bar 41 
    % \time 4/4
    s1 |
    % Bar 42
    % \time 3/4
    s2. |
    % Bar 43
    % \time 4/4
    s1 |
    % Bar 44
    % \time 3/4
    s2. |
    % Bar 45
    s2. |
    % Bar 46
    % \time 2/4
    s2 |
    % Bar 47
    % \time 3/4
    s2. |
    % Bar 48
    % \time 3/4
    s2. |
    % Bar 49
    % \time 3/4
    s2. |
    % Bar 50
    % \time 2/4
    s2 |
    % Bar 51
    % \time 2/4
    s2 |
    % Bar 52
    % \time 2/4
    s2 |
    % Bar 53
    % \time 2/4
    s2 |
    % Bar 54
    % \time 2/4
    s2 |
    % Bar 55
    % \time 3/4
    s2. |
    % Bar 56
    % \time 3/4
    s2. |
    % Bar 57
    % \time 4/4
    s1 |
    % Bar 58
    s1 |
    % Bar 59
    s1 |
    % Bar 60
    s1 |
    % Bar 61
    s1 |
    % Bar 62
    s1 |
    % Bar 63
    s1 |
    % Bar 64
    s1 |
    % Bar 65
    s1 |
    % Bar 66
    s1 |
    % Bar 67
    s1 |
    % Bar 68
    s1 |
    % Bar 69
    s1 |
    % Bar 70
    s1 |
    % Bar 71
    s1 |
    % Bar 72
    s1 |
    % Bar 73
    s1 |
    % Bar 74
    s1 |
    % Bar 75
    s1 |
    % Bar 76
    s1 |
    % Bar 77
    s1 |
    % Bar 78
    s1 |
    % Bar 79
    s1 |
    % Bar 80
    s1 |
    % Bar 81
    s1 |
    % Bar 82
    s1 |
    % Bar 83
    s1 |
    % Bar 84
    s1 |
    % Bar 85
    s1 |
    % Bar 86
    s1 |
    % Bar 87
    s1 |
    % Bar 88
    s1 |
    % Bar 89
    s1 |
    % Bar 90
    s1 |
    % Bar 91
    s1 |
    % Bar 92
    s1 |
    % Bar 93
    s1 |
    % Bar 94
    s1 |
    % Bar 95
    s1 |
    % Bar 96
    s1 |
    % Bar 97
    s1 |
    % Bar 98
    s1 |
    % Bar 99
    s1 |
    % Bar 100
    s1 |
    % Bar 101
    s1 |
    % Bar 102
    s1 |
    % Bar 103
    s1 |
    % Bar 104
    s1 |
    % Bar 105
    % \time 3/4
    s2. |
    % Bar 106
    % \time 2/4
    s2 |
    % Bar 107
    % \time 3/4
    s2. |
    % Bar 108
    % \time 3/4
    s2. |
    % Bar 109
    % \time 3/4
    s2. |
    % Bar 110
    % \time 3/4
    s2. |
    % Bar 111
    % \time 4/4
    s1 |
    % Bar 112
    % \time 3/4
    s2. |
    % Bar 113
    % \time 3/4
    s2. |
    % Bar 114
    % \time 3/4
    s2. |
    % Bar 115
    % \time 3/4
    s2. |
    % Bar 116
    % \time 3/4
    s2. |
    % Bar 117
    % \time 3/4
    s2. |
    % Bar 118
    % \time 3/4
    s2. |
    % Bar 119
    % \time 3/4
    s2. |
    % Bar 120
    % \time 2/4
    s2 |
    % Bar 121
    % \time 3/4
    s2. |
    % Bar 122
    % \time 2/4
    s2 |
    % Bar 123
    s2 |
    % Bar 124
    % 1/4 3/8
    s4 s4. |
    % Bar 125
    % \time 2/4
    s2 |
    % Bar 126
    % \time 6/4
    s2 s2 s2 |
    % Bar 127
    % \time 3/4
    s2. |
    % Bar 128
    s2. |
    % Bar 129
    s2.|
    % Bar 130
    s2. |
    % Bar 131
    % \time 2/4
    s2 |
    % Bar 132
    % \time 3/4
    s2. |
    % Bar 133
    s2. |
    % Bar 134
    s2. |
    % Bar 135
    % \time 2/4
    s2 |
    % Bar 136
    s2 |
    % Bar 137
    % \time 4/4
    s1 |
  }

  \score {
    <<
      \new StaffGroup = "tab with traditional" <<
        \new Staff = "guitar traditional" <<
          \clef "treble_8"
          \context Voice = "top" \top
          \context Voice = "upper" \upper
          \context Voice = "lower" \lower
        >>
        \new Staff = "guitar Traditional bass" <<
          \context Voice = "bottom" \bottom
        >>
        \new TabStaff = "guitar tab" <<
          \set Staff.stringTunings = \stringTuning <c, g, ees g c' ees'>
          \new TabVoice = "tab" \tab
          \new Dynamics = "dynamicsone" \dynamicsone
          \new Dynamics = "dynamicstwo" \dynamicstwo
          \new Dynamics = "dynamicsthree" \dynamicsthree
          \new Dynamics = "dynamicsfour" \dynamicsfour
          \new Dynamics = "dynamicsfive" \dynamicsfive
          \new Dynamics = "dynamicssix" \dynamicssix
          \new Dynamics = "sixstrlhfinger" \sixstrlhfinger
        >>
      >>
    >>
    \layout {
      indent = 0\mm
      \context {
        \Staff
        \override TimeSignature #'space-alist #'first-note = #'(extra-space . 2.5)}
        \context {
          \Score
          \consists "Span_arpeggio_engraver"
        }
      }
      \midi {}


    }
