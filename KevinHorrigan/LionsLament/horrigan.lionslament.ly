\version "2.16.2"
%{ Declaration
=============================================================================
"Lion's Lament", by Kevin Horrigan

Pro Bono Transcription
The copyright of this transcription is not held by the transcriber.
Kevin Horrigan has not given permission for this transcription to be
sold by the transcriber.  Part of the agreement of this transcription is that 
Kevin Horrigan owns all parts of the transcription.  This means that 
permission needs to be obtained before any usage of this transcription.

This transcription is derived from Mark Grover's GuitarPro tab transcription
which was commissioned by Kevin Horrigan.  Use of Grover's transcription
was approved by Kevin Horrigan.

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  07/10/13
 __..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
           |                        
  .__    .  .        ,                
  [__). .|_ |* _. _.-+-* _ ._  __     
  |   (_|[_)||(_.(_] | |(_)[ )_)      

============================================================================%} 
\pointAndClickOff
#(set-global-staff-size 22.45)
% header
\header {
  title = \markup { \smallCaps "Lion's Lament" }
  composer = \markup { \smallCaps "Kevin Horrigan" }
  poet = \markup { \concat { \fontsize #-2 {
    A\sub{1}A\sub{2}D\sub{3}G\sub{3}B\sub{3}E\sub{4} }}}
  copyright = \markup { \center-column { \line { \concat { \fontsize #-2 { \char ##x00a9 " 2011 Kevin Horrigan" } } } \line { \concat { \fontsize #-2 { Transcription " " \char
  ##x00a9 " 2013 Sleep Limited Publications" }}}
} } 
  tagline = \markup { \center-column { \line { \concat { \fontsize #-2 { Lion's " " Lament " " " " \fromproperty #'page:page-number-string /16
}}}
\line { \concat { \fontsize #-2 { "Transcribed and Edited by Rachael Thomas Carlson for Sleep Limited Publications.  rtc [at] sleeplimited [dot] org" }}} }}
}
% paper
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  max-systems-per-page = 3
  first-page-number = 4
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
    \concat { \fontsize #-2 { Lion's " " Lament " " " " \fromproperty #'page:page-number-string /16
  } } 
  % copyright on first page 
  \on-the-fly #first-page \fromproperty #'header:copyright 
  % tagline on last page 
  \on-the-fly #last-page \fromproperty #'header:tagline 
} 
  } 
  evenFooterMarkup = \oddFooterMarkup 
} 
\layout {
     \context {
     \Score
       \override StaffGrouper #'staffgroup-staff-spacing =
       #'((basic-distance . 11)
          (padding . -10)
          (stretchability . 0))
   }
}

% Includes and functions
\include "functions.ly"
% Standard Notation
%% Upper
upper = {
  \numericTimeSignature
  \time 4/4
  \override Score.MetronomeMark #'padding = #3
  \tempo 4 = 124
  \key g \major
  % Bar 1
  b2\rest
   b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 2
  b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 3
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 4
  b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 5
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 6
  b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 7
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 8
  b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote g16 a16~
  a8 |
  % Bar 9
  << { <b, fis b>1 } \\ { b1 } >>
  % Bar 10
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b b } \\ { s16 s8 <b fis>4 } >>
  % Bar 11
  \stemNeutral
  <a, e a>1
  % Bar 12
  b16( cis'8)( b16)~ b8 a8 b16( cis'8)( b16)~ b8 a8 |
  % Bar 13
  << { <b, fis b>1 } \\ { b1 } >>
  % Bar 14
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b8 b8 } \\ { s16 s8 <b fis>4 } >>
  % Bar 15
  <<  { a2 \slurDown b16( \tieDown cis'8.)~ cis'4 \tieNeutral } \\ { <a, e>1 }  >> |
  % Bar 16
  b16( cis'8)( b16)~ b8 a8 b16( cis'8)( b16)~ b8 a8 |
  % Bar 17
  << { <b, fis b>1 } \\ { b1 } >>
  % Bar 18
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b8 b8 } \\ { s16 s8 <b fis>4 } >>
  % Bar 19
  <a, e a>1
  % Bar 20
  b16( cis'8)( b16)~ b8 a8 b16( cis'8) e'16~ e'8 e8 |
  % Bar 21 
  << { 
    % Bar 21
    b8\rest e16 e16 b16\rest e8.~ \stemDown e8 g a4 |
    % Bar 22
    e8\rest d16 d16 e16\rest d8.~ d2 |
    % Bar 23
    e8\rest e16 e e16\rest e8.~ e8 g a4 |
    % Bar 24
    e8\rest d16 d16 e16\rest d8.~ d8 e16 d~ d4 |
    % Bar 25
    c8\rest e16 e16 e16\rest e8.~ \stemDown e8 g a4 |
    % Bar 26
    e8\rest d16 d16 e16 d8.~ d2 |
    % Bar 27
    e8\rest e16 g~ g e8. b,4\rest b,8\rest e8 |
    % Bar 28
    e8\rest fis16 g~ g fis8. b,4\rest b,8\rest fis8 |
    % Bar 29
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 30
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 31
    e8\rest e16 g~ g e8. b,4\rest b,8\rest e8 |
    % Bar 32
    e8\rest fis16 g~ g fis8. b,4\rest b,8\rest fis8 |
    % Bar 33
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 34
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 35
    e8\rest e16 g~ g e8. b,4\rest b,8\rest e8 |
    % Bar 36
    e8\rest fis16 g~ g fis8. c2\rest 
    % Bar 37
    <a, e>2. b,8\rest a,16 a,16 |
    % Bar 38
    e8\rest gis16~ \tieDown < gis e'>~ < gis e'> \tieNeutral b16 cis8 <b, b fis>8
    s8 s4 | 
    % Bar 39
    s1|
    % Bar 40
    s1 |
    % Bar 41
    s1 |
    % Bar 42
    s1 |
    % Bar 43
    s1|
    % Bar 44
    s1 |
    % Bar 45
    s1 |
    % Bar 46
    s1 |







    % Bar 47
    e8\rest e16 g~ g e8. b,4\rest b,8\rest e8 |
    % Bar 48
    e8\rest fis16 g~ g fis8. b,4\rest b,8\rest fis8 |
    % Bar 49
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 50
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 51
    e8\rest e16 g~ g e8. b,4\rest b,8\rest e8 |
    % Bar 52
    e8\rest fis16 g~ g fis8. b,4\rest b,8\rest fis8 |
    % Bar 53
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 54
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 55
    e8\rest e16 g~ g e8. b,4\rest b,8\rest e8 |
    % Bar 56
    e8\rest fis16 g~ g fis8. b,4\rest b,8\rest fis8 |
    % Bar 57
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 58
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 59
    e8\rest e16 g~ g e8. b,4\rest b,8\rest e8 |
    % Bar 60
    e8\rest fis16 g~ g fis8. b,4\rest b,8\rest fis8 |
    % Bar 61
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 62
    e8\rest g16 g g g8. e2\rest |
    % Bar 63
    e8\rest c'16 b16~ b16 c'16 e8\rest e2\rest |
    % Bar 64
    e8\rest g16 g16~ g16 g8. c8\rest g8 a8 e8\rest |
    % Bar 65
    e8\rest c'16 b16~ b16 c'16 e8\rest e2\rest |
    % Bar 66
    e8\rest fis16 g16~ g16 fis8. g4 g4~ |
    % Bar 67
    g8 c'16 b16~ b16 c'16 e8\rest e2\rest |
    % Bar 68
    e8\rest g16 g16~ g16 g8. c8\rest g8 g4 |
    % Bar 69
    e8\rest e16 g16~ g16 e8. b8\rest fis16 g16 ~ g16 fis8. |
    % Bar 70
    b8\rest g16 g16~ g16 d16 <e g>8~ <e g>4 <e g>4 |
    % Bar 71
    c8\rest \tieDown e8 c16\rest e8. c8\rest fis8 c16\rest fis8. |
    % Bar 72
    e8\rest g8 e16\rest d16 \tieNeutral <e g>8~ <e g>4 <e g>4 | 
    % Bar 73
    e8\rest e8 e16\rest e8. e8\rest fis8 e16\rest fis8. |
    % Bar 74
    e8\rest g8~ g16 d16 \tieNeutral <e g>8~ <e g>4 <e g>4 | 
    % Bar 75
    \tieNeutral b8\rest b16 d'16~ d'16 b16 < b d' fis'>8~ < b d' fis'>4. < b d' fis'>8 |
    % Bar 76
    <e a a,>2. <e a>8. a,16 |
    % Bar 77
    e8\rest gis8 \tieUp e16\rest b~ < b cis>8
    \tieNeutral <b, fis b>4 <b fis>16 b8. |
    % Bar 78
    <e a a,>2. <e a>8. a,16 |
    % Bar 79
    e8\rest gis8 e16\rest e'16~ < e' cis>8 <b, fis b>4 \tieNeutral <b fis>16 b8. |
    % Bar 80
    <e a a,>2. <e a>8. a,16 |
    % Bar 81
    e8\rest gis8 e16\rest e'16~ < e' cis>8 <b, fis b>4 \tieNeutral <b fis>16
    b8. |
    % Bar 82
    <e a a,>2. a8 a,16 a,16 |
    % Bar 83
    e8\rest gis8 e16\rest b~ < b cis>8 <b, fis b>8 e8\rest e'4\rest |
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
    s2 




      } \\ { 
        % Bar 21
        \stemUp s2 d'16( b) g8( a8) b |
        % Bar 22
        d'2\rest fis'16( e') b8 \slashedGrace cis'8 \glissando d'8 e'16 b~ |
        % Bar 23
        b2 d'16( b) g8( a8) b |
        % Bar 24
        d'2\rest a16( g) e( d) \slashedGrace ais8 \glissando b8 b16 g~
        % Bar 25
        g2 d'16( b) g8( a) b8
        % Bar 26
        d'2\rest fis'16( e') b8 \slashedGrace cis'8 \glissando d'8 e'16 b~ |
        % Bar 27
        b2 g16( a) b8 a16( g) e8 |
        % Bar 28
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 29
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 30
        e'2 \slashedGrace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 31
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a)
        b8 a16( g) e8 |
        % Bar 32
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 33
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 34
        e'2 \slashedGrace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 35
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a)
        b8 a16( g) e8 |
        % Bar 36
        b2\rest g16( b) d'8 <b d'>4 |
        % Bar 37
        <a cis' e'>2. <e a cis'>4 |
        % Bar 38
        a'8.\rest \tieUp gis'16~ gis'4 \tieNeutral <b dis' fis'>8 b8\rest \ottava #1 \once \override
        Voice.NoteHead #'style = #'harmonic-mixed <fis'' b''>4~ |
        % Bar 39
        \once \override Voice.NoteHead #'style = #'harmonic-mixed  <fis''
        b''>2 \ottava #0 b8\rest \tieNeutral \deadNote d16 \slashedGrace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 40
        b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 41        
        b2\rest b8\rest \tieNeutral \deadNote d16 \slashedGrace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 42
        b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16
        \slashedGrace c8 \glissando cis16
        \deadNote a,16 \slashedGrace c8 \glissando cis16 |
        % Bar 43
        b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote g16
        g16 \deadNote
        d16 e16 |
        % Bar 44
        b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote d16
        d16
        \deadNote a,16 b,16 |
        % Bar 45
        b2\rest b8\rest \tieNeutral \deadNote d16 \slashedGrace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 46
        b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16 \deadNote g16 a16~
        a8 |

        
        % Bar 47
        b2^\repeatTie g16( a) b8 a16( g) e8 |
        % Bar 48
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 49
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 50
        e'2 fis'16( b) g8 d' e'~ |
        % Bar 51
        e'2 g16( a) b8 a16( g) e8 |
        % Bar 52
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 53
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 54
        e'2 \slashedGrace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 55
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a) b8 a16( g) e8 |
        % Bar 56
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 57
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 58
        e'2 \slashedGrace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 59
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a) b8 a16( g) e8 |
        % Bar 60
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 61
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 62
        e'2 fis'16( b) g8 d' e'~ |
        % Bar 63
        e'4. g'8~ g'4 a8 b~ |
        % Bar 64
        b2 d'16( g) g8 a b~ |
        % Bar 65
        b4. g'8~ g'4 a8 b~ |
        % Bar 66
        b2 <g b>4 f'4\rest |
        % Bar 67
        f'4.\rest g'8~ g'4 a8 b~ |
        % Bar 68
        b2 d'16( g) g8 <a g> b~ |
        % Bar 69
        b1 |
        % Bar 70
        s1 |
        % Bar 71
        f'8.\rest g16~ \tieUp g4~ g8. \tieNeutral b16~ b4 |
        % Bar 72
        f'8.\rest b16~ b8 d'8~ d'4 f'4\rest |
        % Bar 73
        f'8.\rest d'16 f'4\rest f'8.\rest e'16 f'4\rest |
        % Bar 74
        f'8.\rest fis'16~ fis'16 f'16\rest <b d'>8~ <b d'>2 | 
        % Bar 75
        s1 |
        % Bar 76
        <cis' e'>2. cis'4 |
        % Bar 77
        f'8.\rest e'16~ e'4 dis'4 dis'16 e'8. |
        % Bar 78
        <cis' e'>2. cis'4 |
        % Bar 79
        f'8.\rest \tieUp gis'16~ gis'4 \tieNeutral dis'4 dis'16 e'8. |
        % Bar 80
        <cis' a'>2. <cis' a'>4 |
        % Bar 81
        f'8.\rest \tieUp gis'16~ gis'4 \tieNeutral dis'4 dis'16 e'8. |
        % Bar 82
        <cis' e'>2. cis'4 |
        % Bar 83
        f'8.\rest e'16~ e'4 dis'8 f'8\rest \ottava #1 \once \override NoteHead
        #'style = #'harmonic-mixed <fis'' b''>4~ |
        % Bar 84
        \once \override Voice.NoteHead #'style = #'harmonic-mixed  <fis''
        b''>2 \ottava #0 b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 85
        b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 86
        b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 87
        b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 88
        b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 89
        b2\rest b8\rest \deadNote a,16 \slashedGrace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 90
        b2\rest b8\rest \deadNote d16 \slashedGrace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 91
        b2\rest b4\rest 




  } >> 

}


%% Lower
lower = {
  \numericTimeSignature
  \key g \major
  % Bar 1
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 2
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 3
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 4
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 5
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 6
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
 

  % Bar 7
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 8
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 9
  b,,4 d,16\rest b,,16 r8 b,,4 d,8\rest b,,8 |
  % Bar 10
  b,,4 d,16\rest b,,16 r8 b,,4 r4 |
  % Bar 11
  a,,4 d,16\rest a,,16 r8 a,,4 d,8\rest a,,8 |
  % Bar 12
  a,,4 d,8\rest a,,8 a,,4 d,8\rest a,,8 |
  % Bar 13
  b,,4 d,16\rest b,,16 r8 b,,4 d,8\rest b,,8 |
  % Bar 14
  b,,4 d,16\rest b,,16 s8 b,,4 r4 |
  % Bar 15
  a,,4 d,16\rest a,,16 r8 a,,4 d,8\rest a,,8 |
  % Bar 16
  a,,4 d,8\rest a,,8 a,,4 d,8\rest a,,8 |
  % Bar 17
  b,,4 d,16\rest b,,16 r8 b,,4 d,8\rest b,,8 |
  % Bar 18
  b,,4 d,16\rest b,,16 r8 b,,4 r4 |
  % Bar 19
  a,,4 d,16\rest a,,16 r8 a,,4 d,8\rest a,,8 |
  % Bar 20
  a,,4 d,8\rest a,,8 a,,4 d,4\rest |
  %%
  %% Bar 21
  %%
  a,,16( c,8.) d,8\rest c,4. d,4\rest |
  % Bar 22
  b,,4 r8 b,,8~ b,,4 r4 |
  % Bar 23
  c,4 r8 c,8~ c,4 r4 |
  % Bar 24
  b,,4 r8 b,,8~ b,,4 r4 |
  % Bar 25
  c,4 r8 c,8~ c,4 r4 |
  % Bar 26
  b,,4 r8 b,,8~ b,,4 r4 |
  % Bar 27
  c4. c8~ c4 r4 |
  % Bar 28
  d4. d8~ d2 |
  % Bar 29
  e4. e8~ e4 r4 |
  % Bar 30
  e4. e8 r4 a,,4( |
  % Bar 31
  c,4.) c,8~ c,4 r4 |
  % Bar 32
  d,4. d,8~ d,4 r4 |
  % Bar 33
  e,4. e,8~ e,4 r4 |
  % Bar 34
  e,4. e,8 r4 a,,4( |
  % Bar 35
  c,4.) c,8~ c,4 r4 |
  % Bar 36
  d,4. d,8~ d,4 r8 <d, d>16 <d, \deadNote a, \deadNote d> |
  % Bar 37
  a,,4 r16 a,,16 r8 a,,4 r4 |
  % Bar 38
  a,,16( cis,8.) r4 b,,8 r8 r4 |
  %%
  %% Bar 39
  %%
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 40
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 41
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 42
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 43
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 44
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 45
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 46
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  
  
  % Bar 47
  c4. c8~ c4 r4 |
  % Bar 48
  d4. d8~ d4 r4 |
  % Bar 49
  e4. e8~ e4 r4 |
  % Bar 50
  e4. e8~ e4 r4 |
  % Bar 51
  c4. c8~ c4 r4 |
  % Bar 52
  d4. d8~ d4 r4 |
  % Bar 53
  e4. e8~ e4 r4 |
  % Bar 54
  e4. e8 r4 a,,4( |
  % Bar 55
  c,4.) c,8~ c,4 r4 |
  % Bar 56
  d,4. d,8~ d,4 r4 |
  % Bar 57
  e,4. e,8~ e,4 r4 | 
  % Bar 58
  e,4. e,8 r4 a,,4( | 
  % Bar 59
  c,4.) c,8~ c,4 r4 |
  % Bar 60
  d,4. d,8~ d,4 r4 |
  % Bar 61
  e,4. e,8~ e,4 r4 | 
  % Bar 62
  e,4. e,8~ e,4 r4 | 
  % Bar 63
  a,4. a,8~ a,4 r4 |
  % Bar 64
  e,4. e,8~ e,4 r4 |
  % Bar 65
  a,4. a,8~ a,4 r4 |
  % Bar 66
  d,4. d,8 e,4 r4 |
  % Bar 67
  a,4. a,8~ a,4 r4 |
  % Bar 68
  e,4 r8 e,8~ e,4 r4 |
  % Bar 69
  a,,16( c,8.) r8 c,8 a,,16( d,8.) r8 d,8 |
  % Bar 70
  a,,16( e,8.) r8 c,8~ c,4 r4 |
  % Bar 71
  a,,16( c,8.) r8 c,8 a,,16( d,8.) r8 d,8 |
  % Bar 72
  a,,16( e,8.) r8 c,8~ c,4 r4 |
  % Bar 73
  a,,16( c,8.) r8 c,8 a,,16( d,8.) r8 d,8 |
  % Bar 74
  a,,16( e,8.) r8 c,8~ c,4 r4 |
  % Bar 75
  a,,16( b,,8.) r8 b,,8~ b,,4 b,,4 |
  % Bar 76
  a,,4 r16 a,,16 r8 a,,4 r8 a,,8 |
  % Bar 77
  a,,16( cis,8.) r4 b,,4 r4 |
  % Bar 78
  a,,4 r16 a,,16 r8 a,,4 r8 a,,8 |
  % Bar 79
  a,,16( cis,8.) r4 b,,4 r4 |
  % Bar 80
  a,,4 r16 a,,16 r8 a,,4 r8 a,,8 |
  % Bar 81
  a,,16( cis,8.) r4 b,,4 r4 |
  % Bar 82
  a,,4 r16 a,,16 r8 a,,4 r8 a,,8 |
  % Bar 83
  a,,16( cis,8.) r4 b,,8 r8 r4 |
  % Bar 84
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 85
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 86
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 87
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 88
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 89
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 90
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,> d,8\rest d,4\rest |
  % Bar 91
  <a,, a,>8 <b,, b,> \deadNotesOn <a,, a,>16 <a,, a,> \deadNotesOff <a,, a,>8
  <b,, b,>^\marcato d,8\rest \bar ".|"

}


% Tab
tab = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \override Beam #'damping = #100000
  \tabFullNotation
  \stemDown
  \override Staff.TabNoteHead #'font-series = #'narrow
  \override Staff.Stem #'stemlet-length = #2.75
  \override BreathingSign #'extra-offset = #'(0.5 . -2.0)
  % Bar 1

  <a,, a,>8-\mkTweak #-0.7 #2.3 _\rhi -\mkTweak #-0.7 #2.3 _\rhp [ 
  \leftBracketTwo <b,, b,>-\mkTweak #-1.1 #2.3 _\rhi -\mkTweak #-1.1 #2.3 _\rhp ] 
  \tick <a,, a,>16-\mkTweak #-0.7 #2.9 _\rhi -\mkTweak #-0.7 #2.9 _\rhp 
  \tick <a,, a,>16-\mkTweak #-0.6 #-3.4 ^\rhi 
  <a,, a,>8-\mkTweak #-0.7 #2.9 _\rhi -\mkTweak #-0.7 #2.9 _\rhp
  \leftBracketTwo <b,, b,>-\mkTweak #-1.1 #2.3 _\rhi -\mkTweak #-1.1 #2.3 _\rhp 
  \tick d16-\mkTweak #-0.7 #3.9 _\rhi -\mkTweak #-0.7 #3.8 _\rhp 
  \slashedGrace f8-\mkTweak #-0.6 #-2.4 ^\rhi 
  \glissando fis16 \tick d16-\mkTweak #-0.7 #5.3 _\rhi -\mkTweak #-0.7 #5.2 _\rhp 
  d16-\mkTweak #-0.6 #-2.4 ^\rhi 
  \tick a,16-\mkTweak #-1 #2.9 _\rhi -\mkTweak #-1 #2.8 _\rhp 
  b,16-\mkTweak #-0.6 #-3.4 ^\rhi |
  % Bar 2
  <a,, a,>8-\mkTweak #-0.6 #2.3 _\rhi -\mkTweak #-0.6 #2.3 _\rhp [ 
  \leftBracketTwo <b,, b,>-\mkTweak #-1 #-3.4 ^\rhi ] 
  \tick <a,, a,>16-\mkTweak #-0.7 #2.9 _\rhi -\mkTweak #-0.7 #2.9 _\rhp 
  \tick <a,, a,>16-\mkTweak #-0.6 #-3.4 ^\rhi 
  <a,, a,>8-\mkTweak #-0.7 #2.9 _\rhi -\mkTweak #-0.7 #2.9 _\rhp 
  \leftBracketTwo <b,, b,>-\mkTweak #-1 #2.4 _\rhi -\mkTweak #-1 #2.4 _\rhp 
  \tick a,16-\mkTweak #-0.7 #2.9 _\rhi -\mkTweak #-0.7 #2.9 _\rhp 
  \slashedGrace c8-\mkTweak #-0.5 #-3.4 ^\rhi
  \glissando cis16 \tick a,16-\mkTweak #-0.7 #4.3 _\rhi -\mkTweak #-0.7 #4.3 _\rhp 
  a,16-\mkTweak #-0.6 #-3.4 ^\rhi 
  \tick a,16-\mkTweak #-1 #2.4 _\rhi -\mkTweak #-1 #2.7 _\rhp 
  b,16-\mkTweak #-0.6 #-3.4 ^\rhi |
  % Bar 3
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 4
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,, a,>8
  \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick a,16 a,16
  \tick a,16 b,16 |
  % Bar 5
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 6
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 7
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 | 
  % Bar 8
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick g16
  a16~ a8 | 

  
  %%
  %% Bar 9
  %%
  \override BreathingSign #'extra-offset = #'(1.25 . -2.0) \arpeggioArrowUp
  \leftBracketTwo <b,, b, fis b\3 b\2>4-\mkTweak #-1 #-8 ^\rhp\arpeggio^\mark
  \markup { \fontsize #-2 \musicglyph #"scripts.segno" }  <\invTNH
  b,,\6>16-\mkTweak #-0.5 #-8.8 ^\rhp b,,16 <\invTNH b,,\6>8-\mkTweak #-0.5
  #-8.8 ^\rhp  b,,4 <\invTNH b,,\6>8-\mkTweak #-0.5 #-8.8 ^\rhp[  b,,8] |
  % Bar 10
  <b,, e'>4-\mkTweak #-0.5 #-8 ^\rhp -\mkTweak #-0.5 #-2.9 ^\rha <\invTNH
  b,,\6>16-\mkTweak #-0.5 #-8.8 ^\rhp[ <b,, b\2>-\mkTweak #-0.7 #-3.9 ^\rhm ~ <
  \fakeSlur b\2  dis'\2>-\mkTweak #-0.5 #-8.5 ^\rhp e'-\mkTweak #-0.5 #-2.6
  ^\rha] b,, dis'-\mkTweak #-0.7 #-2.75 ^\rhm ~ < \fakeSlur dis'\2 b\2>8
  <\invTNH b,,\6 fis\4 b\3>8 b8-\mkTweak #-0.4 #-4.45 ^\rhi |
  
  % Bar 11
  \arpeggioArrowUp <e a a, a,,>4\4\3\5\6-\mkTweak #-1 #-8.6 ^\rhp\arpeggio
  <\invTNH a,,\6>16-\mkTweak #-0.5 #-9.4 ^\rhp a,,16 <\invTNH a,,>8-\mkTweak
  #-0.5 #-9.4 ^\rhp a,,4 <\invTNH a,,\6>8-\mkTweak #-0.5 #-9.4 ^\rhp[ a,,8] |
  % Bar 12
  <a,, b\2 \fakeSlur d'\2>16-\mkTweak #-0.5 #-8 ^\rhp -\mkTweak #-0.7 #-3.9
  ^\rhm ~ < \fakeSlur d'\2 cis'\2>8~ < \fakeSlur cis'\2 b\2>16 <\invTNH
  a,,\6>8-\mkTweak #-0.5 #-8.5 ^\rhp[ <a,, a>8-\mkTweak #-0.4 #-4.5 ^\rhi] <a,,
  b\2 \fakeSlur d'\2>16-\mkTweak #-0.7 #-1.35 ^\rhm -\mkTweak #-0.5 #-7.05
  ^\rhp ~ < \fakeSlur d'\2 cis'\2>8~ < \fakeSlur cis'\2 b\2>16 <\invTNH
  a,,\6>8-\mkTweak #-0.6 #-9.75 ^\rhp[ <a,, a>8-\mkTweak #-0.4 #-5.75 ^\rhi] |
  % Bar 13
  \override BreathingSign #'extra-offset = #'(1.25 . -2.0) \arpeggioArrowUp
  \leftBracketTwo <b,, b, fis b b>4\6\5\4\3\2\arpeggio
  \override TextScript #'extra-offset = #'(-0.5 . -6.3) 
  <\invTNH b,,\6>16 b,,16 <\invTNH b,,>8  b,,4 
  <\invTNH b,,\6>8[  b,,8] |
  % Bar 14
  <b,, e'>4 <\invTNH b,,\6>16[ <b,, b>~ <\fakeSlur
  b\2 dis'\2> \once \override TextScript #'extra-offset = #'(-0.4 . -0.6) e']
  b,, dis'~ <\fakeSlur dis'\2 b\2>8 <\invTNH b,,\6 fis\4 b\3>8 b8 |

  % Bar 15
  \arpeggioArrowUp \once \override TextScript #'extra-offset = #'(-1.0 . -6.3)
  <e a a, a,,>4\4\3\5\6\arpeggio <\invTNH a,,\6>16 a,,16 <\invTNH a,,>8 <a,,
  b>16-\mkTweak #-0.7 #-2.45 ^\rhm ~ <\fakeSlur b\2 \dotUp cis'\2>8. <\invTNH
  a,,\6>8[ a,,8] |
  % Bar 16
  <a,, b\2 \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2
  b\2>16 <\invTNH a,,\6>8[ <a,, a>8] <a,, b\2
  \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2 b\2>16 
  <\invTNH a,,\6>8[ <a,, a>8] |
  % Bar 17
  \override TextScript #'extra-offset = #'(-1.0 . -6.3)
  \override BreathingSign #'extra-offset = #'(1.25 . -2.0) \arpeggioArrowUp
  \leftBracketTwo <b,, b, fis b b>4\6\5\4\3\2\arpeggio
  \override TextScript #'extra-offset = #'(-0.5 . -6.3)
  <\invTNH b,,\6>16 b,,16 <\invTNH b,,>8  b,,4 
  <\invTNH b,,\6>8[  b,,8] |
  % Bar 18
  <b,, e'>4 <\invTNH b,,\6>16[ <b,, b>~ <\fakeSlur
  b\2 dis'\2> 
  \once \override TextScript #'extra-offset = #'(-0.4 . -0.6)
  e'] b,, dis'~ <\fakeSlur dis'\2 b\2>8 <\invTNH b,,\6 fis\4 b\3>8 b8 |
  % Bar 19
  \arpeggioArrowUp
  \once \override TextScript #'extra-offset = #'(-1.0 . -6.3) <e a a,
  a,,>4\4\3\5\6\arpeggio <\invTNH a,,\6>16 a,,16 <\invTNH a,,>8 a,,4 <\invTNH a,,\6>8[ a,,8] |
  % Bar 20
  <a,, b\2 \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2
  b\2>16 <\invTNH a,,\6>8[ <a,, a>8] <a,, b>16~ <\fakeSlur b\2 cis'\2>8
  e'16-\mkTweak #-0.5 #-0.55 ^\rha <\invTNH b,,\6>8-\mkTweak #-0.7 #-9 ^\rhp [
  e8-\mkTweak #-0.4 #-4.7 ^\rhi ] | 
  %%%%%%%%%
  %% Bar 21
  %%%%%%%%
  \revert TextScript #'extra-offset
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp~ <\fakeSlur a,,\6 c,\6>16 e16-\mkTweak #-0.4
  #-3.3 ^\rhi e16-\mkTweak #-0.8 #-3.3 ^\rhm  <\invTNH a,,\6>16-\mkTweak #-0.7
  #-8.2 ^\rhp -\mkTweak #-0.4 #-7.1 ^\rhi [ e c,8-\mkTweak #-0.5 #-6.3 ^\rhp]
  d'16-\mkTweak #-0.5 #-2.7 ^\rha ~ <\fakeSlur d'\2 b\2> <\fakeSlur a\3
  g\3>8-\mkTweak #-0.7 #-2.3 ^\rhm ~ <a\3 \invTNH a,,>-\mkTweak #-0.7 #-6.25
  ^\rhp -\mkTweak #-0.5 #-4.15 ^\rha b |
  % Bar 22
  b,,8-\mkTweak #-0.5 #-7.45 ^\rhp -\mkTweak #-0.5 #-3.35 ^\rha <\parenthesize
  a d>16-\mkTweak #-0.5 #-6.8 ^\rhi d16-\mkTweak #-0.7 #-6.8 ^\rhm
  <\invTNH a,,\6>16-\mkTweak #-0.7 #-8.8 ^\rhp -\mkTweak #-0.4 #-7.7 ^\rhi[ d
  b,,8-\mkTweak #-0.6 #-9.8 ^\rhp ] fis'16-\mkTweak #-0.5 #-3.8 ^\rha ~
  <\fakeSlur fis'\1 e'\1>16 b8-\mkTweak #-0.7 #-4.8
  ^\rhm \slashedGrace cis'8-\mkTweak #-0.7 #-5.08 ^\oneStrMFlick \glissando d'8
  e'16-\mkTweak #-0.5 #-3 ^\rha b-\mkTweak
  #-0.7 #-1.3 ^\rhm |
  % Bar 23
  c,8 e16 e16 <\invTNH a,,\6>16[ e c,8] d'16~ <\fakeSlur d'\2 b\2> <\fakeSlur
  a\3 g\3>8 ~ <a\3 \invTNH a,,> b |
  % Bar 24
  b,,8 <\parenthesize a d>16 d16 <\invTNH b,,>16 d b,,8] a16-\mkTweak #-0.8
  #-4.9 ^\rhm ~ <\fakeSlur a\3 g\3>16 e16-\mkTweak #-0.4 #-4.8 ^\rhi ~
  <\fakeSlur e\4 d\4> \slashedGrace ais8-\mkTweak #-0.7 #-4.25 ^\rhm \glissando
  b8\3 b16-\mkTweak #-0.5 #-3.2 ^\rha g-\mkTweak #-0.7 #-2.35 ^\rhm | 
  % Bar 25
  c,8 e16 e16 <\invTNH c,> e c,8 d'16~ <\fakeSlur d'\2 b\2> <\fakeSlur a\3 g\3>8 ~
  <a\3 \invTNH a,,> b |
  % Bar 26
  b,,8 <\parenthesize a d>16 d16 <\invTNH b,,>16 d b,,8] fis'16~
  <\fakeSlur fis'\1 e'\1>16 b8 \slashedGrace cis'8 \glissando d'8 e'16 b^\mark \markup
  { \fontsize #-2 \italic "To Coda"}
  % Bar 27
  <c \parenthesize e>8-\mkTweak #-0.5 #-5.3 ^\rhp e16-\mkTweak #-0.3 #-3.3
  ^\rhi g-\mkTweak #-0.7 #-2.35 ^\rhm ~ g16 e-\mkTweak #-0.3 #-3.3 ^\rhi
  c8-\mkTweak #-0.5 #-5.3 ^\rhp g16-\mkTweak #-0.7 #-2.35 ^\rhm ~ <\fakeSlur
  g\3 a\3> b8-\mkTweak #-0.5 #-1.35 ^\rha < \invTNH a,, a>16-\mkTweak #-0.8
  #-8.4 ^\rhp ~ <\fakeSlur a\3 g\3>16 e8-\mkTweak #-0.3 #-6.4 ^\rhi -\mkTweak
  #-0.8 #-6.3 ^\rhm -\mkTweak #-0.5 #-6.1 ^\rha |
  % Bar 28
  \slashedGrace { \hideFretNumber c8 \glissando s } < d\5 \parenthesize
  fis>8-\mkTweak #-0.5 #-8.35 ^\rhp fis16-\mkTweak #-0.3 #-6.4 ^\rhi g ~ g16[
  fis16-\mkTweak #-0.3 #-3.35 ^\rhi d8\5-\mkTweak #-0.5 #-5.3 ^\rhp ]
  g16-\mkTweak #-0.7 #-2.3 ^\rhm ~ <\fakeSlur g\3 b\3> d'8-\mkTweak #-0.4
  #-5.85 ^\rha < \invTNH a,, b\3>16-\mkTweak #-0.8 #-12.45 ^\rhp ~ <\fakeSlur
  b\3 g\3>16 fis8-\mkTweak #-0.3 #-8.65 ^\rhi -\mkTweak #-0.8 #-8.6 ^\rhm
  -\mkTweak #-0.5 #-8.35 ^\rha |
  % Bar 29
  \slashedGrace { \hideFretNumber d8\5 \glissando s } e8\5-\mkTweak #-0.5 #-7.3
  ^\rhp g16\4-\mkTweak #-0.3 #-5.3 ^\rhi 
  g ~ g16 g\4-\mkTweak #-0.3 #-3.35 ^\rhi e8\5-\mkTweak #-0.5 #-5.3 ^\rhp
  fis'16\2-\mkTweak #-0.4 #-2.7 ^\rha ~ <\fakeSlur
  fis'\2 b\2> g8-\mkTweak #-0.6 #-2.3 ^\rhm <d'\3
  \invTNH a,,>8-\mkTweak #-0.8 #-8.4 ^\rhp e'-\mkTweak #-0.4 #-4.45 ^\rha |
  % Bar 30
  e8\5-\mkTweak #-0.4 #-5.3 ^\rhp g16\4-\mkTweak #-0.3 #-3.35 ^\rhi
  g\3-\mkTweak #-0.7 #-2.35 ^\rhm ~ g\3 g\4-\mkTweak #-0.3 #-3.35 ^\rhi e8\5-\mkTweak #-0.4 #-5.3 ^\rhp \slashedGrace
  fis'8\2-\mkTweak #-0.7 #-4 ^\rhm \glissando g'8\2 a'\1-\mkTweak #-0.4 #-1.75
  ^\rha <b'\2\harmonic a,,>4-\mkTweak #-0.5 #-7.7 ^\rhp -\mkTweak #-1.2 #-3.6 ^\rhm ~ 
  % Bar 31
  <\fakeSlur a,,\6 c,\6>8 e16 g~ g e c,8 \slurNeutral g16~ <\fakeSlur g\3 a\3>
  b8 < \tweak TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  % Bar 32
  \slashedGrace { \hideFretNumber c,8 \glissando s } <d, \parenthesize fis>8
  fis16 g~ g16 fis d,8 g16~ <\fakeSlur g\3 b\3> d'8 < \tweak
  TabNoteHead #'transparent ##t a,, b\3>16~ <\fakeSlur b\3 g\3> fis8 |
  % Bar 33
  \slashedGrace { \hideFretNumber d,8 \glissando s } e,8 g16\4 g\3~ g\3 g\4 e,8
  fis'16\2~ <\fakeSlur fis'\2 b\2> g8 < \tweak TabNoteHead #'transparent ##t
  a,, d'\3>8 e' | 
  % Bar 34
  e,8 g16\4 g\3~ g16 g\4 e,8 \slashedGrace
  fis'8\2 \glissando g'8\2 a' \slurDown <b'\2\harmonic a,,>4~ |
  \break
  % Bar 35
  \slurNeutral
  <\fakeSlur a,,\6 c,\6>8 e16 g~ g e c,8 g16~ <\fakeSlur g\3 a\3> b8 < \tweak
  TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  % Bar 36
  \slashedGrace { \hideFretNumber c,8 \glissando s } <d, \parenthesize fis>8
  fis16 g~ g16 fis16 d,8 g16~ <\fakeSlur g\3 b\3> d'8 <d'\2 b\3 \invTNH a,,>8
  <\tweakTabNoteHead \mutedString a, d, d>16-\mkTweak #-0.5 #-6.6 ^\rhp
  -\mkTweak #-0.6 #-6.8 ^\threestrdwnstrm <\tweakTabNoteHead \tickInChord d
  \tweakTabNoteHead \tickInChord a, d,>16-\mkTweak #-0.4 #-2.3 ^\rhi -\mkTweak
  #-0.6 #-6.8 ^\threestrupstrm  |
  %%
  %% Bar 37
  %%
  \once \override BreathingSign #'extra-offset = #'(2.6 . 0.0) \arpeggioArrowUp
  \rightBracketThree < e' cis' a e a, a,,>4-\footnote "*" #'(-1 . -1) \markup {
    \override #'(line-width . 90) \fontsize #-2 \italic \justify-string #"*
    This is a modified rasguedo where the pads of the thumb and index fingers
    are touching.  The thumb does not strum the strings but reinforces the
    strum of the index finger." } \arpeggio-\mkTweak #-0.9 #-14.7 ^\rhp
    -\mkTweak #-0.9 #-14.7 ^\rhi -\mkTweak #-0.9 #-14.7 ^\rhm -\mkTweak #-0.9
    #-14.7 ^\rha -\mkTweak #-0.9 #-14.7 ^\rhc <\invTNH a,,\6>16-\mkTweak #-0.7
    #-11.3 ^\rhp  a,,16 <\invTNH a,,>8-\mkTweak #-0.7 #-11.3 ^\rhp a,,4
    <\invTNH a,, e cis' a>8-\mkTweak #-0.7 #-10.3 ^\rhp a,16 a,-\mkTweak #-0.3
    #-9.4 ^\rhi |
  % Bar 38
  a,,16-\mkTweak #-0.6 #-6.3 ^\rhp ~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan
  <\parenthesize e'\2 gis\4>-\mkTweak #-0.6 #-7.3 ^\rhp <gis'\1 e'\2 >-\mkTweak
  #-0.7 #-4.3 ^\rhm -\mkTweak #-0.4 #-4.1 ^\rha <\invTNH a,,>16-\mkTweak #-0.8
  #-8.3 ^\rhp [ b\3-\mkTweak #-0.3 #-5.3 ^\rhi \once \override BreathingSign
  #'extra-offset = #'(3.8 .
  -2.0)
  \leftBracketTwo cis8\stopTextSpan -\mkTweak #-0.5 #-8.3 ^\rhp ] \once \override BreathingSign
  #'extra-offset = #'(0.45 . 0) \leftBracketThree <b,, b, fis b dis'>8-\mkTweak
  #-1.5 #-8.9 ^\rhp -\mkTweak #-0.5 #-3.5 ^\rha [
  r8-\mkTweak #-0.8 #-4.4 ^\rhm  ] \once \override BreathingSign
  #'extra-offset = #'(0.3 . 2) \leftBracketTwo \harmonicByRatio #1/3 <b' fis'>4
  % Bar 39
  \override BreathingSign #'extra-offset = #'(0.5 . -2) <a,, a,>8[
  \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,, a,>8
  \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16 d16
  \tick a,16 b,16 |
  % Bar 40
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 41
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 42
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick
  a,16 \slashedGrace c8 \glissando cis16 \tick a,16 \slashedGrace c8 \glissando cis16 |
  % Bar 43
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick
  g16 g16 \tick d16 e16 |
  % Bar 44
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,, a,>8
  \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick d16 d16
  \tick a,16 b,16 |
  % Bar 45
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 46
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick g16
  a16~ a8^\mark \markup { \fontsize #-2 \italic "D.S. al Coda"} \bar "||"
  %%
  % Bar 47
  %%
  \mark \markup \musicglyph #"scripts.coda"
  c8 e16 g~ g16 e c8 g16~ <\fakeSlur
  g\3 a\3> b8 <\tweak TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3
  g\3>16 e8 |
  % Bar 48 
  \slashedGrace { \hideFretNumber c8 \glissando s } d8\5 fis16 g~ g16 fis16
  d8\5 g16~ <\fakeSlur g\3 b\3> d'8 < \tweak TabNoteHead #'transparent ##t a,,
  b\3>16~ <\fakeSlur b\3 g\3>16 fis8 |
  % Bar 49
  \slashedGrace { \hideFretNumber d8\5 \glissando s } e8\5 g16\4 g~
  g16 g\4 e8\5 \once \override Tie #'extra-offset = #'(0 . -0.5) fis'16\2~ <\fakeSlur
  fis'\2 b\2> g8 <d'\3 \invTNH a,,>8 e' |
  % Bar 50
  e8\5 g16\4 g~ g16 g\4 e8\5 \once \override Tie #'extra-offset = #'(0 . -0.5)
  fis'16\2~ <\fakeSlur fis'\2 b\2> g8 <d'\3 \invTNH a,,>8 e' |
  % Bar 51
  c8 e16 g~ g16 e c8 g16~ <\fakeSlur g\3 a\3> b8 <\invTNH a,, a>16~ <\fakeSlur
  a\3 g\3>16 e8 |
  % Bar 52 
  \slashedGrace { \hideFretNumber c8 \glissando s } d8\5 fis16 g~ g16 fis16
  d8\5 g16~ <\fakeSlur g\3 b\3> d'8 < \invTNH a,, b\3>16~ <\fakeSlur b\3 g\3>16
  fis8 |
  % Bar 53
  \slashedGrace { \hideFretNumber d8\5 \glissando s } e8\5 g16\4 g~ g16 g\4
  e8\5 \once \override Tie #'extra-offset = #'(0 . -0.5) fis'16\2~ <\fakeSlur fis'\2 b\2> g8 <d'\3 \invTNH a,,>8 e' |
  % Bar 54
  e8\5 g16\4 g\3~ g16 g\4 e8\5 \slashedGrace
  fis'8\2 \glissando g'8\2 a' \slurDown <b'\2\harmonic a,,>4~ |
  % Bar 55
  <\fakeSlur a,,\6 c,\6>8 e16 g~ g16 e c,8 \slurNeutral g16~ <\fakeSlur g\3
  a\3> b8 < \invTNH a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  % Bar 56
  \slashedGrace { \hideFretNumber c,8 \glissando s } d,8 fis16 g~ g16 fis d,8
  g16~ <\fakeSlur g\3 b\3> d'8 < \invTNH a,, b\3>16~ <\fakeSlur b\3 g\3> fis8 |
  % Bar 57
  \slashedGrace { \hideFretNumber d,8 \glissando s } e,8 g16\4 g\3~ g g\4 e,8
  fis'16\2~ <\fakeSlur fis'\2 b\2> g8 < \invTNH a,, d'\3>8 e' |
  % Bar 58
  e,8 g16\4 g\3~ g16 g\4 e,8 \slashedGrace fis'8\2 \glissando g'8\2 a'
  \slurDown <b'\2\harmonic a,,>4~ |
  % Bar 59
  <\fakeSlur a,,\6 c,\6>8 e16 g~ g e c,8 \slurNeutral g16~ <\fakeSlur g\3 a\3>
  b8 < \invTNH a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  \break
  % Bar 60
  \slashedGrace { \hideFretNumber c,8 \glissando s } d,8 fis16 g~ g16 fis d,8
  g16~ <\fakeSlur g\3 b\3> d'8 < \invTNH a,, b\3>16~ <\fakeSlur b\3 g\3> fis8 |
  % Bar 61
  \slashedGrace { \hideFretNumber d,8 \glissando s } e,8 g16\4 g\3~ g g\4 e,8
  \once \override Tie #'extra-offset = #'(0 . -0.5) fis'16\2~ <\fakeSlur fis'\2
  b\2> g8 < \invTNH a,, d'\3>8 e' |
  % Bar 62
  e,8 g16\4 g\3 ~ g16  g\4 e,8 \once \override Tie #'extra-offset = #'(0 .
  -0.5) fis'16\2 ~ <\fakeSlur fis'\2 b\2> g8 < d'\3 \invTNH a,,>8 e' |
  \break
  % Bar 63
  <a,\6 \parenthesize c'\4>8-\mkTweak #-0.7 #-6.3 ^\rhp c'16\4-\mkTweak #-0.7
  #-4.3 ^\rhp b-\mkTweak #-0.4 #-1.3 ^\rha ~ b16[ c'\4-\mkTweak #-0.5 #-3.3
  ^\rhi <a,\6 g'\3>8-\mkTweak #-0.7 #-9.4 ^\rhp -\mkTweak #-1 #-6.3 ^\rhm ]~
  <a,\6 g'\3>4 \glissando \slashedGrace { \hideFretNumber <g,\6 f'\3>8
  \hideFretNumber <g\5>8 \glissando s } a8\5 b-\mkTweak #-0.4 #-1.3 ^\rha |
  % Bar 64
  e,8-\mkTweak #-0.5 #-6.3 ^\rhp g16\4-\mkTweak #-0.5 #-4.3 ^\rhp g\3-\mkTweak
  #-0.3 #-2.3 ^\rhi ~ g16\3[ g\4-\mkTweak #-0.3 #-3.3 ^\rhi e,8-\mkTweak #-0.5
  #-6.3 ^\rhp ] d'16\3-\mkTweak #-0.8 #-3.7 ^\rhm ~
  <\fakeSlur d'\3 g\3> g8\4-\mkTweak #-0.3 #-3.3 ^\rhi 
  <\invTNH a,, a\4 >-\mkTweak #-0.7 #-7 ^\rhp b-\mkTweak #-0.4 #-1.3 ^\rha |
  \break
  % Bar 65
  <a,\6 \parenthesize c'\4>8 c'16\4 b ~ b16 c'\4 < a,\6 g'\3>8~  < a,\6 g'\3>4
  \glissando \slashedGrace { \hideFretNumber <g,\6 f'\3>8 \hideFretNumber g8\5
  \glissando s } a8\5 b |
  % Bar 66
  d,8-\mkTweak #-0.5 #-6.3 ^\rhp fis16-\mkTweak #-0.5 #-4.3 ^\rhp g-\mkTweak
  #-0.3 #-2.3 ^\rhi ~ g16[ fis-\mkTweak #-0.3 #-3.3 ^\rhi d,8-\mkTweak #-0.5
  #-6.3 ^\rhp ] <\tweakTabNoteHead \mutedString e\5 e,\6 g\4 g\3 b\2>4-\mkTweak
  #-0.7 #-12 ^\rhp <\invTNH a,, g\3>4-\mkTweak #-0.8 #-6 ^\rhp  |
  \break
  % Bar 67
  <a,\6 \parenthesize c'\4>8 c'16\4 b ~ b16 c'\4 <a,\6 g'\3>8 ~ <a,\6 g'\3>4
  \glissando \slashedGrace { \hideFretNumber <g,\6 f'\3>8 \hideFretNumber g8\5
  \glissando s } a8\5 b |
  % Bar 68
  e,8 g16\4 g\3 <\invTNH a,,>16[ g\4 e,8] d'16\3~ <\fakeSlur d'\3 g\3> g8\4
  <\invTNH a,, g\3 a\4> b |
  \break
  % Bar 69
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp ~ <\fakeSlur a,,\6 c,\6>16 e16-\mkTweak
  #-0.5 #-4.3 ^\rhp g-\mkTweak #-0.3 #-2.3 ^\rhi <\invTNH a,,>16-\mkTweak #-0.5
  #-3.3 ^\rhi -\mkTweak #-0.8 #-6.3 ^\rhp [ e c,8-\mkTweak #-0.5 #-6.3 ^\rhp ]
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp ~ <\fakeSlur a,,\6 d,\6 \parenthesize
  fis\4>16 fis16-\mkTweak #-0.5 #-4.3 ^\rhp g-\mkTweak #-0.3 #-2.3 ^\rhi
  <\invTNH a,,>16-\mkTweak #-0.5 #-3.3 ^\rhi -\mkTweak #-0.8 #-6.3 ^\rhp [ fis
  d,8-\mkTweak #-0.5 #-6.3 ^\rhp ] | 
  % Bar 70
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp ~ <\fakeSlur a,,\6 e,\6 \parenthesize g\4>16
  g16\4-\mkTweak #-0.5 #-4.3 ^\rhp g\3-\mkTweak #-0.3 #-2.3 ^\rhi <\invTNH
  a,,>16-\mkTweak #-0.8 #-5.3 ^\rhp -\mkTweak #-0.5 #-4.3 ^\rhi [ d <c,
  \tweakTabNoteHead \mutedString c e g>8-\mkTweak #-0.7 #-12 ^\rhp -\mkTweak
  #-0.5 #-7.3 ^\rha ]~ <c, e g>4 <\invTNH a,, g e>4  |
  % Bar 71
  a,,16~ <\fakeSlur a,,\6 c,\6>16 e16 g <\invTNH a,,>16[ e c,8] a,,16~
  <\fakeSlur a,,\6 d,\6 \parenthesize fis\4>16 fis16 b-\mkTweak #-0.7 #-1.3
  ^\rhm <\invTNH a,,>16[ fis d,8] |
  % Bar 72
  a,,16~ <\fakeSlur a,,\6 e,\6 \parenthesize g\4>16 g16\4 b-\mkTweak #-0.7
  #-1.3 ^\rhm <\invTNH a,,>16[ d <c, \tweakTabNoteHead \mutedString a, e g
  d'>8-\mkTweak #-0.8 #-10.3 ^\fivestrdwnstrm -\mkTweak #-0.7 #-16.3 ^\rhp
  -\mkTweak #-0.5 #-10.7 ^\rha ]~ <c, e g d'>4 <\invTNH
  a,, e g>4  |
  % Bar 73
  a,,16-\mkTweak #-0.5 #-8 ^\rhp ~ <\fakeSlur a,,\6 c,\6>16 e16-\mkTweak #-0.3
  #-5 ^\rhi d'-\mkTweak #-0.5 #-3 ^\rha <\invTNH a,,>16-\mkTweak #-0.8 #-7
  ^\rhp -\mkTweak #-0.5 #-5.9 ^\rhi [ e c,8-\mkTweak #-0.5 #-6.3 ^\rhp ]
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp ~ <\fakeSlur a,,\6 d,\6 \parenthesize fis\4
  \parenthesize e'\2>16 fis16-\mkTweak #-0.3 #-5 ^\rhi e'\2-\mkTweak #-0.5 #-3
  ^\rha <\invTNH a,,>16-\mkTweak #-0.8 #-7 ^\rhp -\mkTweak #-0.5 #-5.9 ^\rhi  [
  fis d,8-\mkTweak #-0.5 #-6.3 ^\rhp ] |
  % Bar 74
  a,,16~ <\fakeSlur a,,\6 e,\6 \parenthesize g\4 \parenthesize fis'\2>16 g16\4
  fis'\2~ fis'16\2[ d <c, \tweakTabNoteHead \mutedString a, e g b g'
  >8-\mkTweak #-0.8 #-9.4 ^\sixstrdwnstrm -\mkTweak #-0.7 #-16.4 ^\rhp ]~ <c, e
  g b g'>4 < \invTNH a,, g e>4  |
  \break
  % Bar 75
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp ~ \tsMove #0.15 #-0.3 \once \override
  TextSpanner #'style = #'line \once \override TextSpanner #'(bound-details
  right text) = \markup { \draw-line #'(0 . -0.5) } \once \override TextSpanner
  #'(bound-details left text) =  \markup { \halign #CENTER \fontsize #-5 "C II
  " } <\fakeSlur a,,\6 b,,\6 >16\startTextSpan b\3-\mkTweak #-0.3 #-5.9 ^\rhi
  d'\2-\mkTweak #-0.8 #-6.3 ^\rhm <\invTNH b,,> b\3-\mkTweak #-0.3 #-7.3 ^\rhi
  < b,, b d' fis'>8-\mkTweak #-0.5 #-11.3 ^\rhp -\mkTweak #-0.3 #-8.2 ^\rhi
  -\mkTweak #-0.7 #-8.1 ^\rhm -\mkTweak #-0.5 #-7.9 ^\rha ~ <b,, b d' fis'>4
  b,,8-\mkTweak #-0.5 #-11.3 ^\rhp < b d' fis'>8\stopTextSpan -\mkTweak #-0.3
  #-7.35 ^\rhi -\mkTweak #-0.7 #-7.25 ^\rhm -\mkTweak #-0.5 #-7 ^\rha | 
  % Bar 76
  \arpeggioArrowUp \once \override BreathingSign #'extra-offset = #'(2.8 . 0)
  \rightBracketThree <a,, a, e a cis' e'>4-\mkTweak #-0.8 #-14.5 ^\rhp
  -\mkTweak #-0.8 #-14.5 ^\rhi -\mkTweak #-0.8 #-14.5 ^\rhm -\mkTweak #-0.8
  #-14.5 ^\rha -\mkTweak #-0.8 #-14.5 ^\rhc \arpeggio <\invTNH a,,>16-\mkTweak
  #-0.5 #-11.3 ^\rhp  a,,16 <\invTNH a,,>8-\mkTweak #-0.5 #-11.3 ^\rhp a,,4 <
  \invTNH a,, a cis' e >8-\mkTweak #-0.8 #-10.3 ^\rhp a,,16 a,-\mkTweak #-0.3
  #-9.3 ^\rhi |
  \break
  % Bar 77
  a,,16-\mkTweak #-0.5 #-6.3 ^\rhp ~ \once \override TextSpanner #'style =
  #'line \once \override TextSpanner #'(bound-details right text) = \markup {
  \draw-line #'(0 . -0.5) } \once \override TextSpanner #'(bound-details left
  text) =  \markup { \halign #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6
  cis,\6>\startTextSpan < gis\4 \parenthesize e'\2>-\mkTweak #-0.5 #-7.3
  ^\rhp e'16\2-\mkTweak #-0.3 #-4.3 ^\rhi <\invTNH a,,>16-\mkTweak #-0.8
  #-10.15 ^\rhp [ b\3-\mkTweak #-0.3 #-8.15 ^\rhi \once \override
  BreathingSign #'extra-offset = #'(4.35 .  -2.0) \leftBracketTwo
  cis8\stopTextSpan -\mkTweak #-0.5 #-8.3 ^\rhp ] \once \override
  BreathingSign #'extra-offset = #'(0.5 . 0) \leftBracketThree <b,, b, fis
  b\3 dis'>4-\mkTweak #-1.1 #-12.65 ^\rhp -\mkTweak #-0.5 #-7.15 ^\rha
  <\invTNH a,, fis b\3 dis'>16-\mkTweak #-0.8 #-10.3 ^\rhp <b\3
  e'\2>8.-\mkTweak #-0.6 #-5.5 ^\rhi |
  % Bar 78
  \arpeggioArrowUp \once \override BreathingSign #'extra-offset = #'(2.8 . 0)
  \rightBracketThree <a,, a, e a cis' e'>4\arpeggio <\invTNH a,,>16 a,,16
  <\invTNH a,,>8 a,,4 < \tweak
  TabNoteHead #'transparent ##t a,, a cis' e>8 a,,16 a, |
  \break
  % Bar 79
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan < gis\4
  \parenthesize e'\2> < gis'\1>16-\mkTweak #-0.4 #-1.9 ^\rha <\invTNH a,,>16 [ <
  e'\2>-\mkTweak #-0.7 #-2.9 ^\rhm \once \override BreathingSign #'extra-offset =
  #'(4.43 .  -2.0) \leftBracketTwo cis8\stopTextSpan ] \once \override
  BreathingSign #'extra-offset = #'(0.5 .  0) \leftBracketThree <b,, b, fis b\3
  dis'>4 <\tweak TabNoteHead #'transparent ##t a,, fis b\3 dis'>16 <b\3 e'\2>8. |
  % Bar 80
  \arpeggioArrowUp \tsMove #0 #-4 \once \override TextSpanner #'style = #'line
  \once \override TextSpanner #'(bound-details right text) = \markup {
  \draw-line #'(0 . -0.5) } \once \override TextSpanner #'(bound-details left
  text) =  \markup { \halign #LEFT \fontsize #-5 "4/6 C II " } <a,, a, e a
  cis' a'>4\arpeggio\startTextSpan <\invTNH a,,>16 a,,16 <\invTNH a,,>8 a,,4
  < \tweak TabNoteHead #'transparent ##t a,, a e cis' a'>8 a,,16
  a,\stopTextSpan |
  \break
  % Bar 81
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan <
  gis\4 \parenthesize e'\2 > < gis'\1>16 <\invTNH a,,>16[ e'\2
  \once \override BreathingSign #'extra-offset = #'(3 .  -2.0) \leftBracketTwo
  cis8\stopTextSpan] \once \override BreathingSign
  #'extra-offset = #'(0.5 . 0) \leftBracketThree <b,, b, fis b\3 dis'>4 <\tweak
  TabNoteHead #'transparent ##t a,, fis b\3 dis'>16 <b\3 e'\2>8. |
  % Bar 82
  \arpeggioArrowUp \once \override BreathingSign #'extra-offset = #'(2.8 . 0)
  \rightBracketThree <a,, a, e a cis' e'>4\arpeggio <\invTNH a,,>16 a,,16
  <\invTNH a,,>8 a,,4 < \tweak
  TabNoteHead #'transparent ##t a,, a cis' e>8 a,,16 a, |
  % Bar 83
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan <gis\4
  \parenthesize e'\2> e'\2 <\invTNH a,,>16[ b\3 \once \override BreathingSign
  #'extra-offset = #'(3 .  -2.0) \leftBracketTwo cis8\stopTextSpan] \once \override BreathingSign #'extra-offset = #'(0.5 . 0)
  \leftBracketThree <b,, b, fis b dis' >8 [ r8 ] \once \override BreathingSign
  #'extra-offset = #'(0.3 . 2) \leftBracketTwo \harmonicByRatio #1/3 <b' fis'>4
  % Bar 84
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 85 
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 86
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 87 
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 88
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 89 
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \slashedGrace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 90
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \slashedGrace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 91
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,>8\marcato \once \override Rest #'transparent =
  ##f r8 \bar "|."
}

% Breaks Voice
  breaks = {
    % Bar 1
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'(
    (alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 3
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 65)
    (alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 5
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'(
    (alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 7
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 9
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*3 \break
    % Bar 12
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*3 \break
    % Bar 15
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*3 \break
    % Bar 18
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*3 \break
    % Bar 21
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 23
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 25
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \pageBreak
    % Bar 27
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 29
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'(
    (alignment-distances . (15)))
    s1*2 \pageBreak
    % Bar 31
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 13 )))
    s1*2 \break
    % Bar 33
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 35
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 37
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 39
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 41
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 43
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 45
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 47
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (12 15 )))
    s1*2 \break
    % Bar 49
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 51
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 53
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 55
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 57
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 59
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 61
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 63
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 65
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 67
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 69
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 71
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 73
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 75
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 77
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 79
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 81
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*3 \break
    % Bar 84
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 86
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 88
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1*2 \break
    % Bar 91
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((alignment-distances . (10 15 )))
    s1 s2 s4 \break
    %{ Bars 1-2
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 8)
    (alignment-distances . (15 15 )))
    s1*2 \break
    % Bars 3-4
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 50)
    (alignment-distances . (15 15 )))
    s1*2 \break
    % Bars 5-6
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 88)
    (alignment-distances . (15 15 )))
    s1*2 \break
    % Bars 7-8
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 0)
    (alignment-distances . (15 15 )))
    s1*2 \break
    % Bars 9-11
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 42)
    (alignment-distances . (15 15 )))
    s1*3 \break
    % Bars 12-14
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 88)
    (alignment-distances . (15 15 )))
    s1*3 \break
    % Bars 15-17
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 0)
    (alignment-distances . (15 15 )))
    s1*3 \break
    % Bars 18-20
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 42)
    (alignment-distances . (15 15 )))
    s1*3 \break
    % Bars 21-23
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 84)
    (alignment-distances . (15 15 )))
    s1*2 \break
    %} }
% Dynamics
%% DynamicsOne

dynamicsone = {
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
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
  s1 |
  % Bar 20
  s1 |
  % Bar 21
  s1 |
  % Bar 22
  s2 s4-\mkTweak #0 #1 ^\lhfour s4 |
  % Bar 23
  s1 |
  % Bar 24
  s1 |
  % Bar 25
  s1 |
  % Bar 26
  s1 |
  % Bar 27
  s1 |
  % Bar 28
  s2. \tsMove #-0.1 #-9.26 \strDampening s16\startTextSpan s16\stopTextSpan \tsMove #0
  #-6.28 \strDampening \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan  |
  % Bar 29
  \tsMove #0 #-2.9 \strDampening s8\startTextSpan s8\stopTextSpan s16 s16 s8 s4
  \tsMove #-0.1 #-8.06 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 30
  s2 s8 s8-\mkTweak #0 #0.2 ^\lhone s4 |
  % Bar 31
  s1 |
  % Bar 32
  s1 |
  % Bar 33
  s1 |
  % Bar 34
  s1 |
  % Bar 35
  s1 |
  % Bar 36
  s1 |
  % Bar 37
  s1 |
  % Bar 38
  s8 s16 s16 s4 \tsMove #0 #-2.18 \strDampening s8\startTextSpan s8
  s4\stopTextSpan |
  % Bar 39-63
  s1*25
  % Bar 64-71
  s1*8
  % Bar 72
  s4 s8 \tsMove #0 #-4.24 \strDampening s8\startTextSpan s4\stopTextSpan s4 |
  % Bar 73
  s1 |
  % Bar 74-76
  s1*3 
  % Bar 77
  s4 s4 \tsMove #0 #-5.84 \strDampening s8\startTextSpan s8\stopTextSpan s4 |
  % Bar 78
  s1 |
  % Bar 79
  s8 s16 s16 s4 \tsMove #0 #-5.97 \strDampening s8\startTextSpan s8\stopTextSpan s4 |
  % Bar 80
  \tsMove #0 #-4 \lhSpannerUp "4" { s4 s4 s4 s8 s16 s16 } |
  % Bar 81
  s8 s16 s16 s4 \tsMove #0 #-5.97 \strDampening s8\startTextSpan s8\stopTextSpan s4 |
  % Bar 82
  s1 |
  % Bar 83
  s4 s4 \tsMove #0 #-5.97 \strDampening s4\startTextSpan s4\stopTextSpan |

  

}

%% DynamicsTwo
dynamicstwo = {
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
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
  s4 s8 s8-\mkTweak #0 #0.2 ^\lhfour s16 s8.-\mkTweak #0 #0.2 ^\lhfour s4 |
  % Bar 11
  s1 |
  % Bar 12
  s16 s8.-\mkTweak #0 #0.3 ^\lhfour s4 s16 s8.-\mkTweak #0 #0.3 ^\lhfour s4 | 
  % Bar 13
  s1 |
  % Bar 14
  s1 |
  % Bar 15
  s4 s4 s16 \tsMove #0 #0 \lhSpannerUp "4" { s8. s8 s8  |
  % Bar 16
  s8 } s8 s2. |
  % Bar 17
  s1 |
  % Bar 18
  s1 |
  % Bar 19
  s1 |
  % Bar 20
  s1 |
  % Bar 21
  s2 s4-\mkTweak #0 #0 ^\lhfour \tsMove #0 #-2.9 \strDampening s8\startTextSpan
  s8\stopTextSpan |
  % Bar 22
  \tsMove #0 #-2.08 \strDampening s8\startTextSpan s8\stopTextSpan s4 s4 \tsMove #0 #0 \lhSpannerUp "4" { \grace s8 s8 s16 } s16 |
  % Bar 23
  s2. \tsMove #0 #-2.91 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 24
  \tsMove #0 #-2.08 \strDampening s8\startTextSpan s8\stopTextSpan s2. |
  % Bar 25
  s2. \tsMove #0 #-2.91 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 26
  \tsMove #0 #-2.08 \strDampening s8\startTextSpan s8\stopTextSpan s2. |
  % Bar 27
  s2. s8 \tsMove #0 #-3.16 \strDampening s8\startTextSpan |
  % Bar 28
  %% String-damping for this string is located at dynamicsOne
  s8 s8\stopTextSpan s4 s8 \tsMove #0 #-2 \textSpannerUp \lhSpannerUp "1" { s8 s8 s16 s16 } |
  % Bar 29
  s4 \textSpannerDown s16 s16 s8
  s8^\lhfour s8 \tsMove #-0.12 #8.89 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 30
  \textSpannerUp
  s2 \lhSpannerUp "4" { \grace s8 s16 s16 } s8 s4-\mkTweak #0 #0.2 ^\lhfour |
  % Bar 31
  s2. s8 \tsMove #0 #-2.08 \strDampening \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan  |
  % Bar 32
  \tsMove #0 #-2.91 \strDampening s8\startTextSpan s8\stopTextSpan s2 s8
  \tsMove #0 #-2.08 \strDampening s8\startTextSpan |
  % Bar 33
  s8 s8\stopTextSpan s2. |
  % Bar 34
  s1 |
  % Bar 35
  s2. s8 \tsMove #0 #-2.08 \strDampening s8\startTextSpan  |
  % Bar 36
  s8 s8\stopTextSpan s2. |
  % Bar 37
  \textSpannerUp \tsMove #0 #-3 \lhSpannerUp "1" { s4 s4 s4 s8 s16 s16 } |
  % Bar 38
  s8 \tsMove #0 #-0.5 \lhSpannerUp "2" { s8 s8 s8 } s8-\mkTweak #0 #0.3
  ^\lhthree \tsMove #0 #-4.02 \strDampening s8\startTextSpan s4\stopTextSpan
  -\mkTweak #0 #0.3 ^\lhthree |
  % Bar 39 - 46
  s1*8 
  % Bar 47
  s2. s8 \tsMove #0 #-2.08 \strDampening \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan  |
  % Bar 48
  \tsMove #0 #-2.91 \strDampening s8\startTextSpan s8\stopTextSpan s2 s8
  \tsMove #0 #-2.08 \strDampening s8\startTextSpan |
  % Bar 49
  s8 s8\stopTextSpan s2. |
  % Bar 50
  s1 |
  % Bar 51
  s2. s8 \tsMove #0 #-2.08 \strDampening s8\startTextSpan  |
  % Bar 52
  s8 s8\stopTextSpan s2 s8 \tsMove #0 #-2.91 \strDampening s8\startTextSpan |
  % Bar 53
  s8 s8\stopTextSpan s2. |
  % Bar 54 
  s1 |
  % Bar 55
  s2. s8 \tsMove #0 #-2.91 \strDampening s8\startTextSpan  |
  % Bar 56
  s8 s8\stopTextSpan s2 s8 \tsMove #0 #-2.91 \strDampening \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan |
  % Bar 57
  \tsMove #0 #-2.91 \strDampening s8\startTextSpan s8\stopTextSpan s2. |
  % Bar 58
  s1 |
  % Bar 59
  s2. s8 \tsMove #0 #-2.91 \strDampening \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan  |
  % Bar 60
  \tsMove #0 #-2.91 \strDampening s8\startTextSpan s8\stopTextSpan s2 s8
  \tsMove #0 #-2.08 \strDampening s8\startTextSpan |
  % Bar 61
  s8 s8\stopTextSpan s2. |
  % Bar 62
  s2 s8 s8 s8 s8 |
  % Bar 63
  s1 |
  % Bar 64
  s1 |
  % Bar 65
  s1 |
  % Bar 66 - 69
  s1*4 
  % Bar 70
  s4 s8 \tsMove #0 #-6.04 \strDampening s8\startTextSpan s4\stopTextSpan s4 | 
  % Bar 71
  s1 | 
  % Bar 72
  s4 s8 \textSpannerUp \tsMove #0 #-0.5 \lhSpannerUp "4" {s8 s4 s4
  % Bar 73
  s4 s16 } s4 \tsMove #0 #0 \lhSpannerUp "4" {s16 s8 s16 } s8. 
  % Bar 74
  s16 \tsMove #0 #0 \lhSpannerUp "4" { s16 s8 s16 s16 } \tsMove #0 #-1.8
  \lhSpannerUp "4" { s8 s4 s4
  % Bar 75
  s16 } s16 s16 \tsMove #0 #-1.8 \lhSpannerUp "2" { s16 s8 s8 s4 s8 s8 }
  % Bar 76
  s1 |
  % Bar 77
  s8 \tsMove #0 #-0.2 \lhSpannerUp "2" {s16 s16 s8 s8 } s4 s16 s8.-\mkTweak #0
  #1 ^\lhfour |
  % Bar 78
  s1 |
  % Bar 79
  s4 s16 s16 s8 s4 s16 s8.-\mkTweak #-0.7 #-3
  ^\twostrupstrm |
  % Bar 80
  s1 |
  % Bar 81
  s4 s16 s16 s8 s4 s16 s8.-\mkTweak #-0.65 #-3
  ^\twostrupstrm |
  % Bar 82
  s1 |
  % Bar 83
  s4 s16 s16 s8 s8 \tsMove #0 #-7.81
  \strDampening s8\startTextSpan s4\stopTextSpan |
}

%% DynamicsThree
dynamicsthree = {
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
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
  s2. s16 \mkMove #0 #0 s16^\lhone s8 |
  % Bar 9
  \tsMove #0 #0 \lhSpannerUp "4" { s1 
  % Bar 10
  s4  s16 s16 } s8 s4 \tsMove #0 #-0.7 \lhSpannerUp "4" {s4
  % Bar 11
  s2. s8 s8 
  % Bar 12
  s16 } s8. s8 s8-\mkTweak #0 #0.3 ^\lhfour s4 s8 s8-\mkTweak #0 #0.3 ^\lhfour -\mkTweak
  #0.9 #-4.5 ^\markup { \draw-line #'(5 . 1) }  
  % Bar 13
  s1 |
  % Bar 14
  s1 |
  % Bar 15
  s1 |
  % Bar 16
  s2 s4 s8 s8-\mkTweak #1 #-2.9 ^\markup { \draw-line #'(5 . 1) } |
  % Bar 17
  s1 |
  % Bar 18
  s1 |
  % Bar 19
  s1 |
  % Bar 20
  s1 |
  % Bar 21
  s4 \tsMove #-0.1 #-4.08 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \textSpannerDown \tsMove #-0.12 #8.5 \threeStrDamp s8-\mkTweak
  #0 #7.1 _\lhtwo \startTextSpan s8\stopTextSpan |
  \textSpannerUp
  % Bar 22
  s8 \tsMove #0 #-2 \lhSpannerUp "3" { s8 s4 s8 s8 } s4 |
  % Bar 23
  s2 s4 s4 |
  % Bar 24
  s8 \tsMove #0 #-0.7 \lhSpannerUp "3" { s8 s4 s16 s16 } s8-\mkTweak #0 #-8
  ^\lhthree \lhSpannerUp "4" { \grace s8 s8 s16 } s16 |
  % Bar 25
  s2 s4 s4 |
  % Bar 26 
  s1 |
  % Bar 27
  s4 s4 s16 s16-\mkTweak #0 #0 ^\lhtwo s8 \tsMove #-0.1 #-8.05 \strDampening
  s16-\mkTweak #-1 #-3.36 ^\oneStrMFlick
  -\mkTweak #0 #-1.9 ^\lhtwo \startTextSpan s16\stopTextSpan \tsMove #0 #-5
  \strDampening s8\startTextSpan |
  % Bar 28
  s8 s16 s16\stopTextSpan s4 s16 \textSpannerUp \tsMove #0 #-1.8 \lhSpannerUp
  "2" {s16 s8 s16-\mkTweak #-1 #-3.36 ^\oneStrMFlick s16 }  \tsMove #0 #-4.17
  \strDampening \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan |
  % Bar 29 
  \tsMove #0 #-3.08 \strDampening s8\startTextSpan s16 s16\stopTextSpan s4 s4 s8-\mkTweak #0 #0 ^\lhfour -\mkTweak #-1 #-4.92 ^\oneStrMFlick s8 |
  % Bar 30
  s1 |
  % Bar 31
  s2. s8-\mkTweak #-0.7 #-3 ^\oneStrFlick \tsMove #0 #-3.9 \strDampening
  \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan |
  % Bar 32
  \tsMove #0 #-3.08 \strDampening s8\startTextSpan s16 s16\stopTextSpan s2
  s8-\mkTweak #-0.7 #-2.99 ^\oneStrFlick \tsMove #0 #-3.9 \strDampening
  s8\startTextSpan |
  % Bar 33
  s8 s16 s16\stopTextSpan s2 s4-\mkTweak #-0.7 #-2.99 ^\oneStrFlick |
  % Bar 34
  s1 |
  % Bar 35
  s2. s8-\mkTweak #-0.7 #-2.99 ^\oneStrFlick \tsMove #0 #-3.9 \strDampening
  s8\startTextSpan |
  % Bar 36
  s8 s16 s16\stopTextSpan s2 s8-\mkTweak #-1 #-3.35 ^\twoStrMFlick s8 |
  % Bar 37
  s8 s16 s16 s2 s4-\mkTweak #-1 #-4.29 ^\threeStrMFlick |
  % Bar 38
  s4 s16 s16 s8 s2 |
  % Bar 39 
  s1 |
  % Bar 40 
  s1 |
  % Bar 41 
  s1 |
  % Bar 42 
  s1 |
  % Bar 43 
  s1 |
  % Bar 44 
  s1 |
  % Bar 45 
  s1 |
  % Bar 46 
  s1 |
  % Bar 47
  s2. s8-\mkTweak #-0.7 #-3 ^\oneStrFlick \tsMove #0 #-3.9 \strDampening
  \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan |
  % Bar 48
  \tsMove #0 #-3.08 \strDampening s8\startTextSpan s16 s16\stopTextSpan s2
  s8-\mkTweak #-0.7 #-2.99 ^\oneStrFlick \tsMove #0 #-3.9
  \strDampening s8\startTextSpan |
  % Bar 49
  s8 s16 s16\stopTextSpan s2 s4-\mkTweak #-0.7 #-2.99 ^\oneStrFlick |
  % Bar 50
  s2. s4-\mkTweak #-0.7 #-2.99 ^\oneStrFlick |
  % Bar 51
  s2. s8-\mkTweak #-0.7 #-3 ^\oneStrFlick \tsMove #0 #-3.9 \strDampening
  s8\startTextSpan |
  % Bar 52
  s8 s16 s16\stopTextSpan s2 s8-\mkTweak #-0.7 #-3 ^\oneStrFlick \tsMove #0
  #-3.07 \strDampening s8\startTextSpan |
  % Bar 53
  s8 s16 s16\stopTextSpan s2 s4-\mkTweak #-0.7 #-3 ^\oneStrFlick |
  % Bar 54
  s1 |
  % Bar 55
  s2. s8-\mkTweak #-0.7 #-2.99 ^\oneStrFlick \tsMove #0 #-3.07 \strDampening
  s8\startTextSpan |
  % Bar 56
  s8 s16 s16\stopTextSpan s2 s8-\mkTweak #-0.7 #-2.99 ^\oneStrFlick \tsMove #0
  #-3.07 \strDampening \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan |
  % Bar 57
  \tsMove #0 #-3.08 \strDampening s8\startTextSpan s16 s16\stopTextSpan s2
  s4-\mkTweak #-0.7 #-2.99 ^\oneStrFlick |
  % Bar 58
  s1 |
  % Bar 59
  s2. s8-\mkTweak #-0.7 #-2.98 ^\oneStrFlick \tsMove #0 #-3.07 \strDampening
  \override TextSpanner #'after-line-breaking =
  #ly:spanner::kill-zero-spanned-time \endSpanners s8\startTextSpan |
  % Bar 60
  \tsMove #0 #-3.08 \strDampening s8\startTextSpan s16 s16\stopTextSpan s2
  s8-\mkTweak #-0.7 #-2.98 ^\oneStrFlick \tsMove #0 #-3.9 \strDampening
  s8\startTextSpan |
  % Bar 61
  s8 s16 s16\stopTextSpan s2 s4-\mkTweak #-0.7 #-2.98 ^\oneStrFlick |
  % Bar 62
  s2 s8 s8 s4-\mkTweak #-0.7 #-2.98 ^\oneStrFlick |
  % Bar 63
  s4 s8 \textSpannerUp \tsMove #0 #-1.5 \lhSpannerUp "4" {s8 s4 s8 } s8 |
  % Bar 64
  s4 s4 s16-\mkTweak #0 #0 ^\lhfour s8. s4 |
  % Bar 65
  s1 |
  % Bar 66
  s4 s4 \textSpannerDown \tsMove #0 #1 \lhSpannerDown "1" { s4 s8-\mkTweak
  #-1 #-3.36 ^\oneStrMFlick s8 } |
  % Bar 67
  s1 |
  % Bar 68
  s4 s4 s4 s4-\mkTweak #-1 #-4.36 ^\twoStrMFlick |
  % Bar 69 
  s4 \tsMove #-0.1 #9.85 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #9.04 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 70
  s4 \tsMove #-0.1 #9.88 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 71
  s4 \tsMove #-0.1 #9.04 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #9.04 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 72
  s4 \tsMove #-0.1 #9.88 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 73
  s4 \tsMove #-0.1 #9.06 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #9.88 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 74
  s1 |
  % Bar 75
  s4 s16 s16 s8 s2 |
  % Bar 76
  \textSpannerUp \tsMove #0 #-3.2 \lhSpannerUp "1" {s4 s4 s4 s8 s16 s16 } |
  % Bar 77
  s4 \tsMove #-0.12 #-8.75 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 \tsMove
  #0 #-3.5 \lhSpannerUp "3" {s4 s16 s8.-\mkTweak #-0.8 #-3 ^\twostrupstrm } |
  % Bar 78
  s2. s4-\mkTweak #-0.8 #-3.73 ^\threeStrFlick |
  % Bar 79
  s4 s4 s4 s4-\mkTweak #-0.7 #-3.73 ^\threeStrFlick |
  % Bar 80
  s4 s4 s4 s4-\mkTweak #-0.7 #-3.85 ^\fourStrFlick |
  % Bar 81
  s4 s4 s4 s4-\mkTweak #-0.46 #-3.73 ^\threeStrFlick |
  % Bar 82 
  s2. s4-\mkTweak #-0.7 #-3.73 ^\threeStrFlick |
}

%% DynamicsFour
dynamicsfour = {
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  % Bar 1
  s2 s8 s16 \textSpannerDown \tsMove #0 #0 \lhSpannerDown "3" { \grace s8 s16 s16 } s8. |
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
  s2 s8 s16 \tsMove #0 #0 \lhSpannerDown "3" { \grace s8 s16 s16 } s8. |
  % Bar 9
  \tsMove #0 #-1 \lhSpannerDown "3" { s1
  % Bar 10
  \textSpannerNeutral
  s2 s4 s4-\mkTweak #-1.0 #4.08 _\twoStrMFlick
  % Bar 11
  s1 
  % Bar 12
  s2. s8 s8 
  % Bar 13
  s1 } 
  % Bar 14
  s1
  % Bar 15  
  s1 |
  % Bar 16
  s1 |
  % Bar 17
  s1 |
  % Bar 18
  s1 |
  % Bar 19
  s1 |
  % Bar 20
  s2. \tsMove #-0.12 #-7.72 \threeStrDamp s16\startTextSpan 
  s16\stopTextSpan  \mkMove #0 #-11.5 s8^\lhthree |
  % Bar 21
  %% Fourth String-Dampening in this measure takes place in dynamicsthree
  s8 \textSpannerDown \tsMove #0 #0 \lhSpannerDown "2" { s8 s4 s8 s8 } s4 |
  % Bar 22
  s4 \tsMove #-0.1 #7.13 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 23
  s4 \tsMove #-0.1 #7.15 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \textSpannerUp  \tsMove #-0.12 #-7.71 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 24
  s4 \tsMove #-0.1 #-4.09 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 25
  s4 \tsMove #-0.1 #-4.08 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \textSpannerUp  \tsMove #-0.12 #-7.71 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 26
  s4 \tsMove #-0.1 #-4.08 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 27
  \textSpannerDown \tsMove #0 #0 \lhSpannerDown "2" { s8 s8 s8 s8 s16 } s8.
  \textSpannerDown \tsMove #-0.12 #8.5 \threeStrDamp s16\startTextSpan s16\stopTextSpan
  s8-\mkTweak #0 #-11 ^\lhtwo |
  % Bar 28
  \textSpannerDown \tsMove #0 #0 \lhSpannerDown "2" { s8 s8 s8 s8 s16 } s8.
  \textSpannerNeutral \tsMove #-0.12 #-11.09 \threeStrDamp s16\startTextSpan s16\stopTextSpan
  s8-\mkTweak #0 #-11 ^\lhtwo |
  % Bar 29
  %% String-dampening for this string, this measure is located at DynamicsTwo
  s8 \textSpannerDown \tsMove #0 #0 \lhSpannerDown "1" { s8 s4 s4 s4 
  % Bar 30
  s4 s4 s4 } s4 |
  % Bar 31
  s2 s4 \textSpannerUp \tsMove #-0.12 #-7.1 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 32
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #-7.1 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 33
  s2 s4 \textSpannerUp \tsMove #-0.12 #-7.1 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 34
  s4 s16 s16 s8 s2 |
  % Bar 35
  s2 s4 \textSpannerUp \tsMove #-0.12 #-7.1 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 36
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #-8.48 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 37
  s1 |
  % Bar 38
  %% String-Dampening for this Measure is located on DynamicsThree
  s8 \textSpannerDown \tsMove #0 #-1.5 \lhSpannerDown "3" { s8 s8 s8 } s2 |
  % Bar 39
  s1 |
  % Bar 40
  s1 |
  % Bar 41
  s1 |
  % Bar 42
  s1 |
  % Bar 43
  s1 |
  % Bar 44
  s1 |
  % Bar 45
  s1 |
  % Bar 46
  s1 |
  % Bar 47
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.92 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 48
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.92 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 49
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #6.91 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 50
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #6.91 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 51
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.91 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 52
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.91 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 53
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #6.91 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 54
  s4 s16 s16 s8 s2 |
  % Bar 55
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.92 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 56
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.92 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 57
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #6.91 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 58
  s4 s16 s16 s8 s2 |
  % Bar 59
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.91 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 60
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #7.91 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 61
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #6.91 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 62
  s4 s16 s16 s8 s4
  \tsMove #-0.12 #6.91 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 63
  \textSpannerDown \tsMove #0 #0 \lhSpannerDown "1" {s8 s8 s8 s8 } s4 s4 |
  % Bar 64
  s8 \tsMove #0 #-0.25 \lhSpannerDown "1" { s8 s4 s8 s16 s16 } s8-\mkTweak #-1 #-4.36
  ^\oneStrMFlick -\mkTweak #0 #-4.2 _\lhfour
  s8 |
  % Bar 65
  %% String-damping is located at DynamicsThree for this measure
  s1 |
  % Bar 66
  %% the second lhspanner is located at dynamicsthree
  s8 \tsMove #0 #-1.5 \lhSpannerDown "2" { s8 s4 s8 } s8 \tsMove #-0.01 #10.29
  \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 67
  s4 s4 s4 s8 s8 |
  % Bar 68
  s4 \tsMove #-0.1 #5.74 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  s8 s8 |
  % Bar 69
  s8 \tsMove #0 #0 \lhSpannerDown "2" {s8 s4 s16 } \tsMove #0 #0 \lhSpannerDown
  "2" { s16 s8 s4 
  % Bar 70
  s16 } \tsMove #0 #0 \lhSpannerDown "1" { s16 s8 s16 s16 } \tsMove #0 #-0.5
  \lhSpannerDown "2" {s8 s4 s4-\mkTweak #-1 #-4.37 ^\twoStrMFlick
  % Bar 71
  s16 } s16 \tsMove #0 #-0.5 \lhSpannerDown "2" { s8 s8 s8 s16 } \tsMove #0
  #-0.5 \lhSpannerDown "2" { s16 s8 s8 s8
  % Bar 72
  s16 } \tsMove #0 #-0.5 \lhSpannerDown "1" { s16 s8 s16 s16 } \tsMove #0 #-1
  \lhSpannerDown "2" {s8 s4 s4-\mkTweak #-0.5 #-3.72 ^\twoStrFlick
  % Bar 73
  s16 } s16 \tsMove #0 #0 \lhSpannerDown "2" { s8 s8 s8 s16 } \tsMove #0 #0
  \lhSpannerDown "2" { s16 s8 s8 s8
  % Bar 74
  s16 } \tsMove #0 #0 \lhSpannerDown "1" { s16 s8 s16 s16 } \tsMove #0 #0
  \lhSpannerDown "2" {s8 s4 s4-\mkTweak #-0.5 #-3.72 ^\twoStrFlick
  % Bar 75
  s16 } s16 \textSpannerUp \tsMove #0 #-1 \lhSpannerUp "3" {s8 s8 s8 s4 s8 s8 }
  % Bar 76
  s4 s4 s4 s8-\mkTweak #-1 #-4.3 ^\threeStrMFlick s8 |
  % Bar 77
  \textSpannerDown s8 \tsMove #0 #-1 \lhSpannerDown "3" {s16 s16 s8 s8 } s4
  s16-\mkTweak #-1 #-4.3 ^\threeStrMFlick s8. |
  % Bar 78
  s1 |
  % Bar 79
  s4 \tsMove #-0.12 #7.91 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 s4 |
  % Bar 80
  s4 s4 s4 s4 |
  % Bar 81
  s4 \tsMove #-0.12 #7.91 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 s4 |
  % Bar 82  
  s1 |
  % Bar 83
  s4 \tsMove #-0.12 #7.91 \threeStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 s4 |


  

  
}
%% DynamicsFive
dynamicsfive = {
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  % Bar 1
  s8 s8-\mkTweak #0 #-2.5 _\lhone s4 s4-\mkTweak #0 #-2.5 _\lhone s8. s16-\mkTweak #0 #-2.5 _\lhone |
  % Bar 2
  s8 s8-\mkTweak #0 #-2.5 _\lhone s4 s8.-\mkTweak #0 #-2.5 _\lhone \textSpannerDown \tsMove #0 #0 \lhSpannerDown "3"
  { \grace s8 s16 s16 }
  s8 s16-\mkTweak #0 #-2.5 _\lhone |
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
  s4 s4 s2 |
  % Bar 10
  s2. \tsMove #-0.12 #8.05 \twoStrDamp s8-\mkTweak #-0.8 #-5.3 ^\rhp \startTextSpan s8\stopTextSpan |
  % Bar 11
  s1 |
  % Bar 12
  s1 |
  % Bar 13
  s1 |
  % Bar 14
  s2. \textSpannerDown \tsMove #-0.12 #4.25 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 15
  \textSpannerNeutral
  s1 |
  % Bar 16
  s1 |
  % Bar 17
  s1 |
  % Bar 18
  s2. \tsMove #-0.12 #-6.89 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 19
  s1 |
  % Bar 20
  s2. \tsMove #0 #-5.9 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 21
  s4 \tsMove #-0.12 #-6.89 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #-5.07 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 22
  s4 \tsMove #-0.12 #-6.05 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 23
  s4 \tsMove #-0.12 #-6.05 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #-5.07 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 24
  s4 \tsMove #-0.12 #-8.29 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 25
  s4 \tsMove #-0.12 #-6.89 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #-5.07 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 26
  s4 \tsMove #-0.12 #-6.89 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 27
  %% String-Dampening for this String, this measure is located at Dynamicsthree
  \textSpannerDown \tsMove #0 #-2.5 \lhSpannerDown "3" {s1
  % Bar 28
  %% String-Dampening for this String, This measure is Located at DynamicsOne
  s1
  % Bar 29
  %% String-Dampening for this String, This measure is Located at DynamicsOne
  s1 
  % Bar 30
  s4 s8 s8 s4 } s4 |
  % Bar 31
  s2 s4 \tsMove #-0.1 #6.65 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 32
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #6.66 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 33
  s2 s4 \tsMove #-0.1 #7.47 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 34
  s4 s16 s16 s8 s2 |
  % Bar 35
  s2 s4 \tsMove #-0.1 #6.06 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 36
  s4 s16 s16 s8 s4
  \tsMove #0 #5.58 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 37
  s2. \tsMove #-0.12 #5.17 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 38
  s4 \tsMove #-0.12 #7.49 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s2 | 
  % Bar 39
  s1 |
  % Bar 40
  s1 |
  % Bar 41
  s1 |
  % Bar 42
  s1 |
  % Bar 43
  s1 |
  % Bar 44
  s1 |
  % Bar 45
  s1 |
  % Bar 46
  s1 |
  % Bar 47
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.23 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 48
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #6.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 49
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.07 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 50
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.25 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 51
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.23 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 52
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #6.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 53
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.25 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 54
  s4 s16 s16 s8 s2 | 
  % Bar 55
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 56
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #6.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 57
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.25 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 58
  s4 s16 s16 s8 s2 | 
  % Bar 59
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #6.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 60
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 61
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.06 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 62
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.24 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 63
  s2 s4 s8-\mkTweak #0 #-3.5 _\lhthree -\mkTweak #-2.2 #-5.38 ^\oneStrMFlick s8 |
  % Bar 64
  s4 s4 s4 \tsMove #-0.12 #6.49 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 65
  s1 |
  % Bar 66
  s4 s4 s4 \tsMove #0 #8.45 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 67
  s4 s4 s4 s8 s8 |
  % Bar 68
  s4 \tsMove #-0.12 #6.41 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 \tsMove
  #-0.12 #5.07 \twoStrDamp s8\startTextSpan s8\stopTextSpan
  % Bar 69
  s4 \tsMove #-0.12 #9.72 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 \tsMove
  #-0.12 #9.72 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 70
  s4 \tsMove #-0.12 #9.72 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 \tsMove
  #-0.02 #8.39 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 71
  s4 \tsMove #-0.12 #9.71 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 \tsMove
  #-0.12 #9.71 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 72
  s4 \tsMove #-0.12 #9.71 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 \tsMove
  #-0.02 #8.39 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 73
  s4 \tsMove #-0.12 #9.72 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 \tsMove
  #-0.12 #9.71 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 74
  s4 s4 s4 \tsMove #-0.02 #7.9 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 75
  s4 \tsMove #-0.12 #5.58 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4 s8 s16 s16 |
  % Bar 76
  s4 s4 s4 \tsMove #-0.12 #5.22 \twoStrDamp s8\startTextSpan s16\stopTextSpan s16 |
  % Bar 77
  s4 \tsMove #-0.12 #6.65 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4 \tsMove
  #-0.12 #6.09 \twoStrDamp s16\startTextSpan s8.\stopTextSpan |
  % Bar 78
  s2 s4 \tsMove #-0.12 #5.22 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 79
  s4 \tsMove #-0.12 #6.08 \strDampening s16\startTextSpan s16\stopTextSpan s8
  s4-\mkTweak #-1.2 #-6 ^\fivestrdwnstrm \tsMove #-0.12 #6.08  \twoStrDamp
  s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 80
  s4 s4 s4 \tsMove #-0.12 #5.58 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 81
  s4 \tsMove #-0.12 #5.22 \strDampening s16\startTextSpan s16\stopTextSpan s8
  s4-\mkTweak #-1.2 #-6 ^\fivestrdwnstrm \tsMove #-0.12 #6.08 \twoStrDamp
  s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 82
  s2 s4 \tsMove #-0.12 #5.21 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 83
  s4 \tsMove #-0.12 #6.08 \strDampening s16\startTextSpan s16\stopTextSpan s8
  s4-\mkTweak #-1.2 #-6 ^\fivestrdwnstrm s4 | 
}
%% DynamicsSix
dynamicssix = {
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  % Bar 1
  s8-\mkTweak #-0.8 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \revert TextScript #'extra-offset
  s16-\mkTweak #-0.8 #3 _\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \revert TextScript #'extra-offset
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 2
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.8 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 3
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 4
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.85 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 5
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 6
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.85 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 7
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 8
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16-\mkTweak #-0.8 #4 _\onestrdwnstrm s16-\mkTweak #-0.8 #4 _\onestrupstrm s8
  % Bar 9
  \revert TextScript #'extra-offset
  \textSpannerDown \tsMove #0 #-0.7 \lhSpannerDown "1" { s1  
  % Bar 10
  s2. s8 s8 
  % Bar 11
  s8 } s8 s2. 
  % Bar 12
  s1
  % Bar 13
  s1
  % Bar 14
  s2. s8-\mkTweak #-0.6 #4.07 _\twoStrFlick s8
  % Bar 15
  s1 
  % Bar 16
  s1
  % Bar 17
  s1
  % Bar 18
  s2. s8-\mkTweak #-0.6 #4.07 _\twoStrFlick s8
  % Bar 19
  s1 
  % Bar 20
  s1 
  % Bar 21
  %% Six string damping
  s4 \tsMove #-0.1 #7.04 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #5.65 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 22
  s4 \tsMove #-0.1 #5.96 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 23
  s4 \tsMove #-0.1 #5.98 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #5.16 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 24
  s4 \tsMove #-0.1 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 25
  s4 \tsMove #-0.1 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #3.33 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 26
  s4 \tsMove #-0.1 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 27
  s2 s4 \tsMove #-0.1 #5.65 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 28
  s2 s4 \tsMove #-0.1 #5.65 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 29
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #6.05 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 30
  s1 |
  % Bar 31
  s2 s4 \tsMove #-0.1 #6.48 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 32
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #6.48 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 33
  s2 s4 \tsMove #-0.1 #5.65 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 34
  s4 s16 s16 s8 s2 |
  % Bar 35
  s2 s4 \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 36
  s4 s16 s16 s8 s4
  \tsMove #0 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 37
  s4 \tsMove #0 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan \tsMove
  #0 #3.74 \strDampening s8\startTextSpan s4\stopTextSpan \tsMove
  #-0.1 #3.33 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 38
  s4 \tsMove #-0.1 #5.65 \strDampening s16\startTextSpan s16\stopTextSpan s8
  s4-\mkTweak #0 #-2.5 _\lhone s4 |
  % Bar 39
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-2.0 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 40
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.8 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 41
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 42
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.7 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #2 _\onestrupstrm s16
  % Bar 43
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16-\mkTweak #-0.8 #3 _\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16-\mkTweak #-0.8 #4 _\onestrdwnstrm s16-\mkTweak #-0.8 #4 _\onestrupstrm 
  s16-\mkTweak #-0.8 #3 _\onestrdwnstrm s16-\mkTweak #-0.8 #3 _\onestrupstrm 
  % Bar 44
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #2 _\onestrupstrm s16
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 45
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 46
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-2.0 #3 _\onestrupstrm s16
  \override TextScript #'extra-offset = #'(-0.8 . 4)
  s16_\onestrdwnstrm s16_\onestrupstrm s8
  % Bar 47
  \revert TextScript #'extra-offset
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 48
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 49
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #3.24 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 50
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.06 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 51
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 52
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.23 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 53
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.06 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 54
  s4 s16 s16 s8 s2 |
  % Bar 55
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 56
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 57
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.07 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 58
  s4 s16 s16 s8 s2 |
  % Bar 59
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 60
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #5.07 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 61
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.24 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 62
  s4 s16 s16 s8 s4
  \tsMove #-0.1 #4.07 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 63
  \textSpannerDown \tsMove #0 #-2.5 \lhSpannerDown "3" { s4 s4 s8 s16 s16 s16 }
  s8. |
  % Bar 64
  \tsMove #0 #-2.5 \lhSpannerDown "3" { s4 s4 s4 s8 s8 } |
  % Bar 65
  s1 |
  % Bar 66
  %% String-Damping occurs at SixStr for this measure
  \textSpannerDown \tsMove #0 #-4 \lhSpannerDown "3" { s4 s4 s4-\mkTweak
  #-0.8 #-6 ^\fivestrdwnstrm s8 s8 } |
  % Bar 67
  s4 s4 s4 s8 s8 |
  % Bar 68
  s4 \tsMove #-0.1 #4.56 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #3.23 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 69
  s16 \tsMove #0 #-2.5 \lhSpannerDown "3" { s16 s8 s8 s8 s16 } \tsMove #0 #-2.5
  \lhSpannerDown "3" { s16 s8 s8 s8 
  % Bar 70
  s16 } \tsMove #0 #-2.5 \lhSpannerDown "3" { s16 s8 s16 s16 } \tsMove #0 #-3
  \lhSpannerDown "3" {s8-\mkTweak #-0.8 #-6 ^\fourstrdwnstrm s4 s4 
  % Bar 71
  s16 } \tsMove #0 #-3 \lhSpannerDown "3" { s16 s8 s8 s8 s16 } \tsMove #0 #-3
  \lhSpannerDown "3" { s16 s8 s8 s8 
  % Bar 72
  s16} \tsMove #0 #-3 \lhSpannerDown "3" { s16 s8 s16 s16 } \tsMove #0 #-3.5
  \lhSpannerDown "3" {s8 s4 s4 
  % Bar 73
  s16 } \tsMove #0 #-2.5 \lhSpannerDown "3" { s16 s8 s8 s8 s16 } \tsMove #0
  #-2.5 \lhSpannerDown "3" { s16 s8 s8 s8 
  % Bar 74
  s16} \tsMove #0 #-2.5 \lhSpannerDown "3" { s16 s8 s16 s16 } \tsMove #0 #-2.5
  \lhSpannerDown "3" {s8 s4 s4 
  % Bar 75
  s16 } s16 s8 s4 s4 s8 s16 s16 
  % Bar 76
  s1 |
  % Bar 77
  s4 \tsMove #-0.1 #6.48 \strDampening s16\startTextSpan s16\stopTextSpan s8
  s4-\mkTweak #-1.2 #5 _\fivestrdwnstrm \tsMove #-0.1 #4.24 \strDampening
  s16\startTextSpan s8.\stopTextSpan |
  % Bar 78
  s4 \tsMove #0 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan \tsMove
  #0 #3.74 \strDampening s8\startTextSpan s4\stopTextSpan
  \tsMove #-0.1 #3.37 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 79
  s4 \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s8.\stopTextSpan |
  % Bar 80
  s4 \tsMove #0 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan \tsMove
  #0 #3.74 \strDampening s8\startTextSpan s4\stopTextSpan \tsMove #-0.1 #3.74
  \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 81
  s4 \tsMove #-0.1 #5.05 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s8.\stopTextSpan |
  % Bar 82
  s4 \tsMove #0 #3.74 \strDampening s16\startTextSpan s16\stopTextSpan \tsMove
  #0 #3.74 \strDampening s8\startTextSpan s4\stopTextSpan \tsMove #-0.1 #3.37
  \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 83
  s4 \tsMove #-0.1 #4.24 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |

  % Bar 84
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 85
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.83 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 86
  s8_\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.85 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 87
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.85 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 88
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.9 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 89
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16-\mkTweak #-1.83 #2 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 90
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm
  \override TextScript #'extra-offset = #'(-0.8 . 3)
  s16_\onestrdwnstrm \grace s16-\mkTweak #-2.2 #3 _\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-0.8 . 2)
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 91
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8-\mkTweak #-0.7 #2 _\twostrdwnstrm s8-\mkTweak #-1.2 #2 _\twostrdwnstrm


}

%% SixStr
sixstr = {
  \textLengthOff
\override TextScript #'outside-staff-priority = ##f
  \tabFullNotation
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  % Bar 9
  s4 \tsMove #0 #-7.47 \strDampening s16-\mkTweak #-0.04 #-2.3
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-7.47 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #0 #-7.47 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 10
  s4 \tsMove #0 #-7.47 \strDampening s16-\mkTweak #-0.04 #-2.3
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-7.17 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #-0.1 #-8.06 \strDampening
  s8-\mkTweak #-0.04 #-2 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 11
  s4 \tsMove #0 #-8.06 \strDampening s16-\mkTweak #-0.04 #-2.3
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-8.06 \strDampening
  s8\startTextSpan s4\stopTextSpan  \tsMove #0 #-8.06 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 12
  s4 \tsMove #0 #-7.17 \strDampening s8-\mkTweak #-0.04 #-1.9
  _\snare\startTextSpan s8\stopTextSpan s4  \tsMove #0 #-8.4 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 13
  s4 \tsMove #0 #-6.07 \strDampening s16-\mkTweak #-0.04 #-2.3
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-6.07 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #0 #-6.07 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 14
  s4 \tsMove #0 #-6.08 \strDampening s16-\mkTweak #-0.04 #-2.3
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-6.08 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #-0.1 #-6.08 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 15
  s4 \tsMove #0 #-6.08 \strDampening s16-\mkTweak #-0.04 #-2.3
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-6.08 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #0 #-7.49 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 16
  s4 \tsMove #0 #-6.08 \strDampening s8-\mkTweak #-0.04 #-1.9
  _\snare\startTextSpan s8\stopTextSpan s4 \tsMove #0 #-6.84 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 17
  s4 \tsMove #0 #-6.08 \strDampening s16-\mkTweak #-0.04 #-1.9
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-6.08 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #0 #-6.08 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 18
  s4 \tsMove #0 #-6.08 \strDampening s16-\mkTweak #-0.04 #-2.3
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-6.08 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #-0.1 #-6.08 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 19
  s4 \tsMove #0 #-6.08 \strDampening s16-\mkTweak #-0.04 #-1.9
  _\snare\startTextSpan s16\stopTextSpan \tsMove #0 #-6.08 \strDampening
  s8\startTextSpan s4\stopTextSpan \tsMove #0 #-6.08 \strDampening
  s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan |
  % Bar 20
  s4 \tsMove #0 #-6.08 \strDampening s8-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s8\stopTextSpan s4 \tsMove #0 #-6.08 \strDampening
  s16-\mkTweak #-0.04 #-1.9 _\snare\startTextSpan s16\stopTextSpan s8 |
  % Bar 21
  s16 \textSpannerDown \tsMove #0 #-2.5 \lhSpannerDown "3" { s8. s4-\mkTweak
  #-0.04 #-2.3 _\bassSnare s4 s8-\mkTweak #-0.04 #-1.9 _\snare } s8 |
  % Bar 22
  \tsMove #0 #-2 \lhSpannerDown "2" { s4 s4-\mkTweak #-0.04 #-2.3 _\bassSnare s8
  s8 s4 } |
  % Bar 23
  \tsMove #0 #-2.5 \lhSpannerDown "3" { s4 s4-\mkTweak #-0.04 #-2.3 _\bassSnare s8 s8 s4-\mkTweak #-0.04 #-1.9 _\snare } |
  \textSpannerNeutral
  % Bar 24
  s4 s4-\mkTweak #-0.04 #-2.3 _\bassSnare s2 |
  % Bar 25
  s4 s4-\mkTweak #-0.04 #-2.3 _\bassSnare s4 s4-\mkTweak #-0.05 #-1.9 _\bassSnare |
  % Bar 26
  s4 s4-\mkTweak #-0.04 #-2.3 _\bassSnare s2 |
  %%
  %% Bar 27
  %%
  s4 s4-\mkTweak #0.15 #-0.9 _\bass s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 28
  s4 s4-\mkTweak #0.15 #-0.9 _\bass s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 29
  s4 s4-\mkTweak #0.15 #-0.9 _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 30
  s4 s4-\mkTweak #0.15 #-0.9 _\bass s4 s4 |
  % Bar 31
  \textSpannerDown \tsMove #0 #-1.5 \lhSpannerDown "3" { s4 s4-\mkTweak #0.15 #-1.9 _\bass s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 32
  s4 s4-\mkTweak #0.15 #-1.9 _\bass s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 33
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 34
  s4 s8-\mkTweak #0.15 #-1.9 _\bass s8 s4 } s4 |
  % Bar 35
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 36
  s4 s4-\mkTweak #0.15 #-1.9 _\bass s4 s4-\mkTweak #-0.04 #-2.3 _\bassSnare |
  %% 
  %% Bar 37
  %%
  s4 s4-\mkTweak #-0.04 #-2.3 _\snare s4 s4-\mkTweak #-0.04 #-1.9 _\bassSnare |
  % Bar 38
  s4 s8-\mkTweak #-0.04 #-2.3 _\snare s8
  s2-\mkTweak #-1.5 #5 _\fivestrdwnstrm |
  % Bar 39
  s1|
  % Bar 40
  s1 |
  % Bar 41
  s1 |
  % Bar 42
  s1 |
  % Bar 43
  s1 |
  % Bar 44
  s1 |
  % Bar 45
  s1 |
  % Bar 46
  s1 |
  % Bar 47
  s4 s4-\mkTweak #0.15 #-0.9 _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 48
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 49
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 50
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 51
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 52
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 53
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 54
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4 |
  % Bar 55
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 56
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 57
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 58
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4 |
  % Bar 59
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 60
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-2.5 _\snare |
  % Bar 61
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 62
  s4 s4-\mkTweak #0.15 #-0.9  _\bass s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 63
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s4 s4 |
  % Bar 64
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s4 \tsMove #-0.1 #4.65 \strDampening s8\startTextSpan -\mkTweak #-0.04 #-1.9 _\snare
  s8\stopTextSpan |
  % Bar 65
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s2 |
  % Bar 66
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s4 \tsMove #0 #4.65 \strDampening
  s8\startTextSpan -\mkTweak #-0.035 #-1.9 _\snare s8\stopTextSpan |
  % Bar 67
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s4 s4 |
  % Bar 68
  s4 s4-\mkTweak #-0.04 #-2.3 _\bassSnare s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 69
  s4 \tsMove #-0.1 #7.04 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\bassSnare s16\stopTextSpan
  s8 s4 \tsMove #-0.1 #7.87 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\snare s16\stopTextSpan
  s8 |
  % Bar 70
  s4 \tsMove #-0.1 #7.04 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\bassSnare s16\stopTextSpan
  s8 s4 \tsMove #0 #6.55 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-1.9 _\snare s16\stopTextSpan
  s8 |
  % Bar 71
  s4 \tsMove #-0.1 #7.87 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\bassSnare s16\stopTextSpan
  s8 s4 \tsMove #-0.1 #7.87 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-1.9 _\snare s16\stopTextSpan
  s8 |
  % Bar 72
  s4 \tsMove #-0.1 #7.04 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\bassSnare s16\stopTextSpan
  s8 s4 \tsMove #0 #6.55 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-1.9 _\snare s16\stopTextSpan
  s8 |
  % Bar 73
  s4 \tsMove #-0.1 #7.88 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\bassSnare s16\stopTextSpan
  s8 s4 \tsMove #-0.1 #7.04 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\snare s16\stopTextSpan
  s8 |
  % Bar 74
  s4 s4-\mkTweak #0.15 #-1.3 _\bass s4 \tsMove #0 #6.06 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-1.9 _\snare s16\stopTextSpan
  s8 |
  % Bar 75
  s4 \tsMove #-0.1 #3.75 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3 _\bassSnare s16\stopTextSpan s8 s4 s4 | 
  % Bar 76
  s4 \tsMove #0 #3.75 \strDampening s16\startTextSpan -\mkTweak #-0.04 #-2.3
  _\snare s16\stopTextSpan \tsMove #0 #3.75 \strDampening s8\startTextSpan
  s4\stopTextSpan \tsMove #-0.1 #3.38 \strDampening s8\startTextSpan -\mkTweak #-0.04 #-1.9 _\snare s8\stopTextSpan |
  % Bar 77
  s4 s4-\mkTweak #-0.04 #-2.3 _\snare s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 78  
  s4 s4-\mkTweak #-0.04 #-1.9 _\snare s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 79
  s4 s4-\mkTweak #-0.04 #-2.3 _\snare s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 80
  s4 s4-\mkTweak #-0.04 #-1.9 _\snare s4 s4-\mkTweak #-0.04 #-1.9 _\snare |

  % Bar 81
  s4 s4-\mkTweak #-0.04 #-2.3 _\snare s4 s4-\mkTweak #-0.04 #-2.3 _\snare |
  % Bar 82
  s4 s4-\mkTweak #-0.04 #-1.9 _\snare s4 s4-\mkTweak #-0.04 #-1.9 _\snare |
  % Bar 83
  s4 s4-\mkTweak #-0.04 #-2.3 _\snare s4 s4 |

}

% Score
\book {
\score {
  <<
    \new GrandStaff = "tab with traditional" \with {
  systemStartDelimiter = #'SystemStartBar
  \override SystemStartBar #'thickness = #5
  \override SystemStartBar #'X-offset = #-1
}  <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
      >>
      \new Staff = "guitar Traditional bass" <<
        \clef "bass_8"
        \context Voice = "lower" \lower
      >>
    >>
    \new TabStaff = "guitar tab" 
      <<
      \set Staff.stringTunings = \stringTuning <a,, a, d g b e'>
      \new TabVoice = "dynamicsone" \dynamicsone
      \new TabVoice = "dynamicstwo" \dynamicstwo
      \new TabVoice = "dynamicsthree" \dynamicsthree
      \new TabVoice = "tab" \tab
      \new TabVoice = "dynamicsfour" \dynamicsfour 
      \new TabVoice = "dynamicsfive" \dynamicsfive  
      \new TabVoice = "dynamicssix" \dynamicssix
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
  }
  \midi {}


}
}
