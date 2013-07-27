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
  copyright = \markup { \fontsize #-4 { \char ##x00a9 2011 Kevin Horrigan Music
  Publishing } }
  tagline = \markup { \concat { \fontsize #-2 { Lion's " " Lament " " " " \fromproperty #'page:page-number-string /17
}}  
}}
% paper
\paper { 
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  min-systems-per-page = 3
  first-page-number = 4
  system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
  ragged-last-bottom = ##f
  ragged-bottom = ##f
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
    \concat { \fontsize #-2 { Lion's " " Lament " " " " \fromproperty #'page:page-number-string /17
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
    \override StaffGrouper #'staff-staff-spacing #'padding = #1
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #1
  }
  \context {
    \Dynamics
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing
    #'basic-distance = #0
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0
    % \override TimeSignature #'space-alist #'first-note = #'extra-space . 0.0)
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
   b8\rest \deadNote d16 \grace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 2
  b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 3
  b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 4
  b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 5
  b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 6
  b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16 a,16
  \deadNote a,16 b,16 |
  % Bar 7
  b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16 \deadNote d16 d16 \deadNote
  a,16 b,16 |
  % Bar 8
  b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16 \deadNote g16 a16~
  a8 |
  % Bar 9
  << { <b, fis b>1\arpeggio } \\ { b1 } >>
  % Bar 10
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b b } \\ { s16 s8 <b fis>4 } >>
  % Bar 11
  \stemNeutral
  <a, e a>1\arpeggio  
  % Bar 12
  b16( cis'8)( b16)~ b8 a8 b16( cis'8)( b16)~ b8 a8 |
  % Bar 13
  << { <b, fis b>1\arpeggio } \\ { b1 } >>
  % Bar 14
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b8 b8 } \\ { s16 s8 <b fis>4 } >>
  % Bar 15
  <<  { a2 \slurDown b16( \tieDown cis'8.)~ cis'4 \tieNeutral } \\ { <a, e>1\arpeggio }  >> |
  % Bar 16
  b16( cis'8)( b16)~ b8 a8 b16( cis'8)( b16)~ b8 a8 |
  % Bar 17
  << { <b, fis b>1\arpeggio } \\ { b1 } >>
  % Bar 18
  e'4~ e'16 b( dis') e'~ e' << { \slurDown dis'( b8)~ b8 b8 } \\ { s16 s8 <b fis>4 } >>
  % Bar 19
  <a, e a>1\arpeggio  
  % Bar 20
  b16( cis'8)( b16)~ b8 a8 b16( cis'8) e'16~ e'8 e8 |
  % Bar 21 
  << { 
    % Bar 21
    b8\rest e16 e16~ e16 e8.~ \stemDown e8 g a4 |
    % Bar 22
    e8\rest d16 d16~ d16 d8.~ d2 |
    % Bar 23
    e8\rest e16 g~ g e8.~ e8 g a4 |
    % Bar 24
    e8\rest d16 d16~ d16 d8.~ d2 |
    % Bar 25
    c8\rest e16 e16~ e16 e8.~ \stemDown e8 g a4 |
    % Bar 26
    e8\rest d16 d16~ d16 d8.~ d2 |
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
    r8 gis16~ \tieDown <gis b e'>~ <gis b e'> \tieNeutral gis16 cis8 <b fis>4 s4 | 
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
    e8\rest g16 g~ g g8. e2\rest |
    % Bar 63
    e8\rest c'16 g16~ g16 c'16 e8\rest e2\rest |
    % Bar 64
    e8\rest g16 g16~ g16 g8. c8\rest g8 a8 e8\rest |
    % Bar 65
    e8\rest c'16 b16~ b16 c'16 g8~ g4 s4 |
    % Bar 66
    e8\rest fis16 g16~ g16 fis8. g4 g4~ |
    % Bar 67
    g8 c'16 b16~ b16 c'16 e8\rest e4\rest g4 |
    % Bar 68
    e8\rest g16 g16~ g16 g8. c8\rest g8 g4 |
    % Bar 69
    e8\rest e16 g16~ g16 e8. b8\rest fis16 g16 ~ g16 fis8. |
    % Bar 70
    b8\rest g16 g16~ g16 d16 <e g>8~ <e g>4 <e g>4 |
    % Bar 71
    e8\rest \tieDown e8~ e16 e8. e8\rest fis8~ fis16 fis8. |
    % Bar 72
    e8\rest g8~ g16 d16 \tieNeutral <e g>8~ <e g>4 <e g>4 | 
    % Bar 73
    e8\rest e8~ e16 e8. e8\rest fis8~ fis16 fis8. |
    % Bar 74
    e8\rest g8~ g16 d16 \tieNeutral <e g>8~ <e g>4 <e g>4 | 
    % Bar 75
    b8\rest e16 g16~ g16 e16 <e g cis' e'>8~ <e g cis' e'>4 <e g cis' e'>8
    b8\rest |
    % Bar 76
    <e a a,>2. <e a>8 a,16 a, |
    % Bar 77
    e8\rest fis32( \tieDown gis16.)~ \tieUp gis16~ <gis b>~ <gis b cis>8
    \tieNeutral <b, fis b>4 <b fis>16 b8. |
    % Bar 78
    <e a a,>2. <e a>8 a,16 a, |
    % Bar 79
    e8\rest fis32( gis32)~ \tieDown <gis b e'>16~ <gis b e'>16 <b e'> <cis gis b e'>8
    <b, fis b>4 \tieNeutral <b fis>16 b8. |
    % Bar 80
    <e a a,>2. a8 a,16~ <a, a>16 |
    % Bar 81
    e8\rest fis32( gis32)~ \tieDown <gis b e'>16~ <gis b e'>16 <b e'> <cis gis b e'>8
    <b, fis b>4 \tieNeutral <b fis>16 b8. |
    % Bar 82
    <e a a,>2. <e a>8 a,16 a, |
    % Bar 83
    e8\rest gis8~ gis16 b~ <b gis cis>8 <b, fis b>4 e4\rest |
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
        \stemUp s2 d'16( b) g8( a8) b~ |
        % Bar 22
        b2 fis'16( e') b8 \grace cis'8 \glissando d'8 e'16 b~ |
        % Bar 23
        b2 d'16( b) g8( a8) e'~ |
        % Bar 24
        e'2 a16( g) e8 \grace a8 \glissando b8 b16 g~
        % Bar 25
        g2 d'16( b) g8( a) <b e'>8~
        % Bar 26
        <b e'>2 fis'16( e') b8 \grace cis'8 \glissando d'8 e'16 b~ |
        % Bar 27
        b2 g16( a) b8 a16( g) e8 |
        % Bar 28
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 29
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 30
        e'2 \grace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 31
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a)
        b8 a16( g) e8 |
        % Bar 32
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 33
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 34
        e'2 \grace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 35
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a)
        b8 a16( g) e8 |
        % Bar 36
        b2\rest g16( b) d'8 <b d'>4 |
        % Bar 37
        <a cis' e'>2. <e a cis'>4 |
        % Bar 38
        r8. \tieUp gis'16~ gis'4 \tieNeutral <b dis' fis'>4 \ottava #1 \once \override
        Voice.NoteHead #'style = #'harmonic-mixed <fis'' b''>4~ |
        % Bar 39
        \once \override Voice.NoteHead #'style = #'harmonic-mixed  <fis''
        b''>2 \ottava #0 b8\rest \tieNeutral \deadNote d16 \grace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 40
        b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 41        
        b2\rest b8\rest \tieNeutral \deadNote d16 \grace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 42
        b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16
        \grace c8 \glissando cis16
        \deadNote a,16 \grace c8 \glissando cis16 |
        % Bar 43
        b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16 \deadNote g16
        g16 \deadNote
        d16 e16 |
        % Bar 44
        b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote d16
        d16
        \deadNote a,16 b,16 |
        % Bar 45
        b2\rest b8\rest \tieNeutral \deadNote d16 \grace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 46
        b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16 \deadNote g16 a16~
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
        e'2 \grace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 55
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a) b8 a16( g) e8 |
        % Bar 56
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 57
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 58
        e'2 \grace fis'8 \glissando g'8 a' \once \override Voice.NoteHead
        #'style = #'harmonic-mixed b'4~ |
        % Bar 59
        \once \override Voice.NoteHead #'style = #'harmonic-mixed b'2 g16( a) b8 a16( g) e8 |
        % Bar 60
        b2\rest g16( b) d'8 b16( g) fis8 |
        % Bar 61
        b2\rest fis'16( b) g8 d' e'~ |
        % Bar 62
        e'2 fis'16( b) g8 <b d'> <b e'>~ |
        % Bar 63
        <b e'>4. g'8~ g'4 a8 b~ |
        % Bar 64
        b2 d'16( g) g8 a b~ |
        % Bar 65
        b8. b16~ b8 g8~ g8[ <g b'>8] a[ b]~ |
        % Bar 66
        b2 <g b>4 f'4\rest |
        % Bar 67
        f'8.\rest b16~ b8 g'8~ g'4 f'8\rest b~ |
        % Bar 68
        b2 d'16( g) g8 <a g> b~ |
        % Bar 69
        b1 |
        % Bar 70
        s1 |
        % Bar 71
        f'8.\rest b16~ b4~ b8. g16~ g4 |
        % Bar 72
        f'8.\rest <b e'>16~ <b e'>8 d'8~ d'4 f'4\rest |
        % Bar 73
        f'8.\rest d'16~ d'4 f'8.\rest e'16~ e'4 |
        % Bar 74
        f'8.\rest fis'16 f'8\rest d'8~ d'4 f'4\rest |
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
        f'8.\rest e'16~ e'16 e'16 e'8 dis'4 \ottava #1 \once \override NoteHead
        #'style = #'harmonic-mixed <fis'' b''>4~ |
        % Bar 84
        \once \override Voice.NoteHead #'style = #'harmonic-mixed  <fis''
        b''>2 \ottava #0 b8\rest \deadNote d16 \grace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 85
        b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 86
        b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 87
        b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 88
        b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16
        \deadNote d16 d16 \deadNote a,16 b,16 |
        % Bar 89
        b2\rest b8\rest \deadNote a,16 \grace c8 \glissando cis16 \deadNote a,16 a,16
        \deadNote a,16 b,16 |
        % Bar 90
        b2\rest b8\rest \deadNote d16 \grace f8 \glissando fis16
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
  b,,4 d,16\rest b,,8. b,,4 d,8\rest b,,8 |
  % Bar 10
  b,,4 d,16\rest b,,8. b,,2 |
  % Bar 11
  a,,4 d,16\rest a,,8. a,,4 d,8\rest a,,8 |
  % Bar 12
  a,,4 d,16\rest a,,8. a,,4 d,8\rest a,,8 |
  % Bar 13
  b,,4 d,16\rest b,,8. b,,4 d,8\rest b,,8 |
  % Bar 14
  b,,4 d,16\rest b,,8. b,,2 |
  % Bar 15
  a,,4 d,16\rest a,,8. a,,4 d,8\rest a,,8 |
  % Bar 16
  a,,4 d,16\rest a,,8. a,,4 d,8\rest a,,8 |
  % Bar 17
  b,,4 d,16\rest b,,8. b,,4 d,8\rest b,,8 |
  % Bar 18
  b,,4 d,16\rest b,,8. b,,2 |
  % Bar 19
  a,,4 d,16\rest a,,8. a,,4 d,8\rest a,,8 |
  % Bar 20
  a,,4 d,16\rest a,,8. a,,4 d,8\rest a,,8 |
  %%
  %% Bar 21
  %%
  a,,16( c,8.) d,8\rest c,4. d,4\rest |
  % Bar 22
  b,,4 r8 b,,8~ b,,2 |
  % Bar 23
  c,4 r8 c,8~ c,4 r4 |
  % Bar 24
  b,,4 r8 b,,8~ b,,4 r4 |
  % Bar 25
  c,4 r8 c,8~ c,4 r4 |
  % Bar 26
  b,,4 r8 b,,8~ b,,2 |
  % Bar 27
  c4. c8~ c2 |
  % Bar 28
  d4. d8~ d2 |
  % Bar 29
  e4 r8 e8~ e4 r4 |
  % Bar 30
  e4. e8~ e4 a,,4( |
  % Bar 31
  c,4.) c,8~ c,4 r4 |
  % Bar 32
  d,4 r8 d,8~ d,4 r4 |
  % Bar 33
  e,4. e,8~ e,4 r4 |
  % Bar 34
  e,4 r8 e,8~ e,4 a,,4( |
  % Bar 35
  c,4.) c,8~ c,4 r4 |
  % Bar 36
  d,4 r8 d,8~ d,4 r4 |
  % Bar 37
  a,,4 r16 a,,8. a,,4 r4 |
  % Bar 38
  a,,16( cis,8.) r4 b,,4 r4 |
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
  c4 r8 c8~ c4 r4 |
  % Bar 48
  d4 r8 d8~ d4 r4 |
  % Bar 49
  e4 r8 e8~ e4 r4 |
  % Bar 50
  e4 r8 e8~ e4 r4 |
  % Bar 51
  c4 r8 c8~ c4 r4 |
  % Bar 52
  d4 r8 d8~ d4 r4 |
  % Bar 53
  e4 r8 e8~ e4 r4 |
  % Bar 54
  e4 r8 e8 r4 a,,4( |
  % Bar 55
  c,4) r8 c,8~ c,4 r4 |
  % Bar 56
  d,4 r8 d,8~ d,4 r4 |
  % Bar 57
  e,4 r8 e,8~ e,4 r4 | 
  % Bar 58
  e,4 r8 e,8 r4 a,,4( | 
  % Bar 59
  c,4) r8 c,8~ c,4 r4 |
  % Bar 60
  d,4 r8 d,8~ d,4 r4 |
  % Bar 61
  e,4 r8 e,8~ e,4 r4 | 
  % Bar 62
  e,4 r8 e,8~ e,8 e,8 r4 | 
  % Bar 63
  a,4 r8 a,8~ a,4 r4 |
  % Bar 64
  e,4 r8 e,8~ e,4 r4 |
  % Bar 65
  a,4 r8 a,8~ a,4 r4 |
  % Bar 66
  d,4 r8 d,8 e,4 r4 |
  % Bar 67
  a,4 r8 a,8~ a,4 r4 |
  % Bar 68
  e,4 r8 e,8~ e,4 r4 |
  % Bar 69
  c,4 r8 c,8 d,4 r8 d,8 |
  % Bar 70
  e,4 r8 c,8~ c,4 r4 |
  % Bar 71
  c,4 r8 c,8 d,4 r8 d,8 |
  % Bar 72
  e,4 r8 c,8~ c,4 r4 |
  % Bar 73
  c,4 r8 c,8 d,4 r8 d,8 |
  % Bar 74
  e,4 r8 c,8~ c,4 r4 |
  % Bar 75
  a,,16( b,,8.) r8 b,,8~ b,,4 b,,8 \once \override NoteHead #'style = #'cross
  <b,, b,>16 \once \override NoteHead #'style = #'cross <b,, b,>16 |
  % Bar 76
  a,,4 r16 a,,8. a,,4 r4 |
  % Bar 77
  a,,16( cis,8.) r8 cis,8 b,,4 r4 |
  % Bar 78
  a,,4 r16 a,,8. a,,4 r4 |
  % Bar 79
  a,,16( cis,8.) r8 cis,8 b,,4 r4 |
  % Bar 80
  a,,4 r16 a,,8. a,,4 r4 |
  % Bar 81
  a,,16( cis,8.) r8 cis,8 b,,4 r4 |
  % Bar 82
  a,,4 r16 a,,8. a,,4 r4 |
  % Bar 83
  a,,16( cis,8.) r8 cis,8 b,,4 r4 |
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

  <a,, a,>8-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp [ 
  \leftBracketTwo <b,, b,>-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp ] 
  \tick <a,, a,>16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  \tick <a,, a,>16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi 
  <a,, a,>8-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp
  \leftBracketTwo <b,, b,>-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  \tick d16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  \grace f8-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi 
  \glissando fis16 \tick d16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  d16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi 
  \tick a,16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  b,16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi |
  % Bar 2
  <a,, a,>8-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp [ 
  \leftBracketTwo <b,, b,>-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi ] 
  \tick <a,, a,>16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  \tick <a,, a,>16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi 
  <a,, a,>8-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  \leftBracketTwo <b,, b,>-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  \tick a,16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  \grace c8-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi
  \glissando cis16 \tick a,16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  a,16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi 
  \tick a,16-\mkTweak #0 #0 _\rhi -\mkTweak #0 #0 _\rhp 
  b,16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi |
  % Bar 3
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 4
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,, a,>8
  \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick a,16 a,16
  \tick a,16 b,16 |
  % Bar 5
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 6
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 7
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 | 
  % Bar 8
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick g16
  a16~ a8 | 

  
  %%
  %% Bar 9
  %%
  \override TextScript #'extra-offset = #'(-1.0 . -6.3) \leftBracketTwo <b,, b,
  fis b\3 b\2>4^\rhp^\mark \markup { \fontsize #-2 \musicglyph #"scripts.segno"
  } \override TextScript #'extra-offset = #'(-0.5 . -6.3) <\invTNH b,,\6>16^\rhp[
  b,,8.]  b,,4^\rhp <\invTNH b,,\6>8^\rhp[  b,,8] |
  % Bar 10
  <b,, e'>4-\mkTweak #-1 #-6.3 ^\rhp -\mkTweak #-0.4 #-0.6 ^\rha 
  <\invTNH b,,\6>16^\rhp[ <b,, b\2>-\mkTweak #-0.4 #-1
  ^\rhm ~ < \fakeSlur b\2  dis'\2> \once \override TextScript #'extra-offset =
  #'(-0.4 . -0.6) e'^\rha] b,,^\rhp dis'-\mkTweak #-0.4 #-1 ^\rhm ~ < \fakeSlur
  dis'\2 b\2>8 <\invTNH b,,\6 fis\4 b\3>8 b8-\mkTweak #-0.4 #-1 ^\rhi |
  
  % Bar 11
  \once \override TextScript #'extra-offset = #'(-1.0 . -6.3) <e a a,
  a,,>4\4\3\5\6^\rhp <\invTNH a,,\6>16^\rhp[ a,,8.]
  a,,4^\rhp <\invTNH a,,\6>8^\rhp[ a,,8] |
  % Bar 12
  <a,, b\2 \fakeSlur d'\2>16-\mkTweak #-0.4 #-1 ^\rhp -\mkTweak #-0.4 #-1 ^\rhm ~ 
  < \fakeSlur d'\2 cis'\2>8~ < \fakeSlur cis'\2 b\2>16 
  <\invTNH a,,\6>8^\rhp[ <a,, a>8^\rhi] <a,, b\2 \fakeSlur
  d'\2>16-\mkTweak #1 #1 ^\rhm -\mkTweak #0 #0 ^\rhp ~ <
  \fakeSlur d'\2 cis'\2>8~
  < \fakeSlur cis'\2 b\2>16 <\invTNH a,,\6>8^\rhp[
  <a,, a>8^\rhi] |
  % Bar 13
  \override BreathingSign #'extra-offset = #'(-0.2 . -2.0)
  \leftBracketTwo <b,, b, fis b b>4\6\5\4\3\2
  \override TextScript #'extra-offset = #'(-0.5 . -6.3) 
  <\invTNH b,,\6>16[ b,,8.]  b,,4 
  <\invTNH b,,\6>8[  b,,8] |
  % Bar 14
  <b,, e'>4 <\invTNH b,,\6>16[ <b,, b>~ <\fakeSlur
  b\2 dis'\2> \once \override TextScript #'extra-offset = #'(-0.4 . -0.6) e']
  b,, dis'~ <\fakeSlur dis'\2 b\2>8 <\invTNH b,,\6 fis\4 b\3>8 b8 |

  % Bar 15
  \once \override TextScript #'extra-offset = #'(-1.0 . -6.3) <e a a,
  a,,>4\4\3\5\6 <\invTNH a,,\6>16[ a,,8.] <a,,
  b>16^\rhm ~
  <\fakeSlur b\2 \dotUp cis'\2>8. <\invTNH a,,\6>8[
  a,,8] |
  % Bar 16
  <a,, b\2 \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2
  b\2>16 <\invTNH a,,\6>8[ <a,, a>8] <a,, b\2
  \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2 b\2>16 
  <\invTNH a,,\6>8[ <a,, a>8] |
  % Bar 17
  \override TextScript #'extra-offset = #'(-1.0 . -6.3)
  \leftBracketTwo <b,, b, fis b b>4\6\5\4\3\2
  \override TextScript #'extra-offset = #'(-0.5 . -6.3)
  <\invTNH b,,\6>16[ b,,8.]  b,,4 
  <\invTNH b,,\6>8[  b,,8] |
  % Bar 18
  <b,, e'>4 <\invTNH b,,\6>16[ <b,, b>~ <\fakeSlur
  b\2 dis'\2> 
  \once \override TextScript #'extra-offset = #'(-0.4 . -0.6)
  e'] b,, dis'~ <\fakeSlur dis'\2 b\2>8 <\invTNH b,,\6 fis\4 b\3>8 b8 |
  % Bar 19
  \once \override TextScript #'extra-offset = #'(-1.0 . -6.3) <e a a,
  a,,>4\4\3\5\6 <\invTNH a,,\6>16[ a,,8.] a,,4 <\invTNH a,,\6>8[ a,,8] |
  % Bar 20
  <a,, b\2 \fakeSlur d'\2>16~ <\fakeSlur d'\2 cis'\2>8~ <\fakeSlur cis'\2
  b\2>16 <\invTNH a,,\6>8[ <a,, a>8] <a,, b>16~
  <\fakeSlur b\2 cis'\2>8 e'16-\mkTweak #-0.4 #-0.6 ^\rha <\invTNH
  b,,\6>8-\mkTweak #0 #0 ^\rhp [
  e8-\mkTweak #-0.4 #-4 ^\rhi ] | 
  %%%%%%%%%
  %% Bar 21
  %%%%%%%%
  a,,16^\rhp~ <\fakeSlur a,,\6 c,\6>16 e16-\mkTweak #-0.5 #-3.3 ^\rhi
  e16-\mkTweak #-0.8 #-3.3 ^\rhm  <\invTNH a,,\6>16-\mkTweak #-0.6 #-5.3 ^\rhp
  -\mkTweak #-0.5 #-4.2 ^\rhi [ e c,8^\rhp] d'16-\mkTweak #-0.8 #-1.3 ^\rhm ~
  <\fakeSlur d'\2 b\2> g8-\mkTweak #-0.5 #-2.3 ^\rhi <a\3 \invTNH a,,>-\mkTweak
  #-0.8 #-4.3 ^\rhp b-\mkTweak #-0.5 #-1.3 ^\rha |
  % Bar 22
  b,,8-\mkTweak #0 #0 ^\rhp <\parenthesize a d>16-\mkTweak #0 #0 ^\rhi d16-\mkTweak #0 #0 ^\rhm
  <\invTNH a,,\6>16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0 ^\rhi[ d b,,8-\mkTweak #0 #0 ^\rhp ]
  fis'16-\mkTweak #0 #0 ^\rhm ~
  <\fakeSlur fis'\1 e'\1>16 b8-\mkTweak #0 #0 ^\rhm \grace cis'8-\mkTweak #0 #0
  ^\rhm \glissando d'8 e'16-\mkTweak #0 #0 ^\rha b-\mkTweak #0 #0 ^\rhm |
  % Bar 23
  c,8 e16 g16-\mkTweak #0 #0 ^\rhm  
  <\invTNH a,,\6>16[ e c,8] d'16~ <\fakeSlur d'\2 b\2> g8
  <a\3 \invTNH a,,> e'-\mkTweak #0 #0 ^\rha |
  % Bar 24
  b,,8 <\parenthesize a d>16 d16~ d16[ d b,,8] a16-\mkTweak #0 #0 ^\rhm ~
  <\fakeSlur a\3 g\3>16 e8-\mkTweak #0 #0 ^\rhi \grace a8-\mkTweak #0 #0 ^\rhm
  \glissando b8\3 b16-\mkTweak #0 #0 ^\rha g-\mkTweak #0 #0 ^\rhm | 
  % Bar 25
  c,8 e16 e16~ 
  e16[ e c,8] d'16~ <\fakeSlur d'\2 b\2> g8
  <a\3 \invTNH a,,> <b e'>-\mkTweak #0 #0 ^\rha |
  % Bar 26
  b,,8 <\parenthesize a d>16 d16~ d16[ d b,,8] fis'16~
  <\fakeSlur fis'\1 e'\1>16 b8 \grace cis'8 \glissando d'8 e'16 b^\mark \markup
  { \fontsize #-2 \italic "To Coda"}
  % Bar 27
  <c \parenthesize e>8-\mkTweak #0 #0 ^\rhp e16-\mkTweak #0 #0 ^\rhi e-\mkTweak
  #0 #0 ^\rhm ~ e16[ e-\mkTweak #0 #0 ^\rhi c8-\mkTweak #0 #0 ^\rhp ]
  g16-\mkTweak #0 #0 ^\rhm ~ <\fakeSlur g\3 a\3> b8-\mkTweak #0 #0 ^\rha
  <\tweak TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3 g\3>16 e8-\mkTweak #0 #0 ^\rhi |
  % Bar 28
  \grace { \hideFretNumber c8 \glissando s } d8\5 fis16 g~ g16[ fis16 d8\5]
  g16~ <\fakeSlur g\3 b\3> d'8 < \tweak TabNoteHead #'transparent ##t a,,
  b\3>16~ <\fakeSlur b\3 g\3>16 fis8 |
  % Bar 29
  \grace { \hideFretNumber d8\5 \glissando s } e8\5 g16\4 g 
  <\invTNH e,\6>16[ g\4 e8\5] fis'16\2~ <\fakeSlur
  fis'\2 b\2> g8 <d'\3
  \tweak TabNoteHead #'transparent ##t a,,>8 e' |
  % Bar 30
  e8\5 g16\4 g\3~ g\3 g\4 e8\5 \grace fis'8\2 \glissando g'8\2 a'\1
  <b'\2\harmonic a,,>4~ 
  % Bar 31
  <\fakeSlur a,,\6 c,\6>8 e16 g~ g e c,8 \slurNeutral g16~ <\fakeSlur g\3 a\3>
  b8 < \tweak TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  % Bar 32
  \grace { \hideFretNumber c,8 \glissando s } d,8 fis16 g 
  <\invTNH a,,\6>16[ fis d,8] g16~ <\fakeSlur g\3 b\3> d'8 < \tweak
  TabNoteHead #'transparent ##t a,, b\3>16~ <\fakeSlur b\3 g\3> fis8 |
  % Bar 33
  \grace { \hideFretNumber d,8 \glissando s } e,8 g16\4 g\3~ g\3 g\4 e,8
  fis'16\2~ <\fakeSlur fis'\2 b\2> g8 < \tweak TabNoteHead #'transparent ##t
  a,, d'\3>8 e' | 
  % Bar 34
  e,8 g16\4 g\3 <\invTNH a,,\6>16[ g\4 e,8] \grace
  fis'8\2 \glissando g'8\2 a' \slurDown <b'\2\harmonic a,,>4~ |
  % Bar 35
  \slurNeutral
  <\fakeSlur a,,\6 c,\6>8 e16 g~ g e c,8 g16~ <\fakeSlur g\3 a\3> b8 < \tweak
  TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  % Bar 36
  \grace { \hideFretNumber c,8 \glissando s } d,8 fis16 g <\invTNH d,\6>16[ fis16 d,8] g16~
  <\fakeSlur g\3 b\3> d'8 <d'\2 b\3 \invTNH a,,>8 <\tweakTabNoteHead
  \mutedString a, d, d>16-\mkTweak #0 #0 ^\rhp -\mkTweak #0 #0
  ^\threestrdwnstrm <\tweakTabNoteHead \tickInChord
  d \tweakTabNoteHead \tickInChord a, d,>16-\mkTweak #0 #0 ^\rhi -\mkTweak #0
  #0 ^\threestrupstrm  |
  %%
  %% Bar 37
  %%
  \once \override BreathingSign #'extra-offset = #'(2.8 . 0.0) \arpeggioArrowUp
  \rightBracketThree <e' cis' a e a, a,,>4\arpeggio <\invTNH a,,\6>16[ a,,8.]
  a,,4 <\invTNH a,, e cis' a>8 a,16 a, |
  % Bar 38
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6 \parenthesize gis\4
  \parenthesize e'\2>\startTextSpan gis\4 <gis'\1 e'\2 b\3>^\rhp <\invTNH a,,>16[ gis\4 \once
  \override BreathingSign #'extra-offset = #'(3 .  -2.0) \leftBracketTwo
  cis8\stopTextSpan] \once \override BreathingSign #'extra-offset = #'(0.3 . 0)
  \leftBracketThree <b,, b, fis b dis'>4 \once \override BreathingSign
  #'extra-offset = #'(0.3 . 2) \leftBracketTwo \harmonicByRatio #1/3 <b' fis'>4
  % Bar 39
  \override BreathingSign #'extra-offset = #'(0.3 . -2) <a,, a,>8[
  \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,, a,>8
  \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16 d16
  \tick a,16 b,16 |
  % Bar 40
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 41
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 42
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick
  a,16 \grace c8 \glissando cis16 \tick a,16 \grace c8 \glissando cis16 |
  % Bar 43
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick
  g16 g16 \tick d16 e16 |
  % Bar 44
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,, a,>8
  \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick d16 d16
  \tick a,16 b,16 |
  % Bar 45
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 46
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick e16
  a16~ a8^\mark \markup { \fontsize #-2 \italic "D.S. al Coda"} \bar "||"
  \break
  %%
  % Bar 47
  %%
  \mark \markup \musicglyph #"scripts.coda"
  c8 e16 g <\invTNH a,,\6>16[ e c8] g16~ <\fakeSlur
  g\3 a\3> b8 <\tweak TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3
  g\3>16 e8 |
  % Bar 48 
  \grace { \hideFretNumber c8 \glissando s } d8\5 fis16 g \tweak TabNoteHead
  #'transparent ##t a,,16[ fis16 d8\5] g16~ <\fakeSlur g\3 b\3> d'8 < \tweak
  TabNoteHead #'transparent ##t a,, b\3>16~ <\fakeSlur b\3 g\3>16 fis8 |
  % Bar 49
  \grace { \hideFretNumber d8\5 \glissando s } e8\5 g16\4 g 
  <\invTNH a,,\6>16[ g\4 e8\5] fis'16\2~ <\fakeSlur
  fis'\2 b\2> g8 <d'\3 \tweak TabNoteHead #'transparent ##t a,,>8 e' |
  % Bar 50
  e8\5 g16\4 g <\invTNH a,,\6>16[ g\4 e8\5]
  fis'16\2~ <\fakeSlur fis'\2 b\2> g8 <d'\3 \tweak TabNoteHead #'transparent
  ##t a,,>8 e' |
  % Bar 51
  c8 e16 g \tweak TabNoteHead #'transparent ##t a,,16[ e c8] g16~ <\fakeSlur
  g\3 a\3> b8 <\tweak TabNoteHead #'transparent ##t a,, a>16~ <\fakeSlur a\3
  g\3>16 e8 |
  % Bar 52 
  \grace { \hideFretNumber c8 \glissando s } d8\5 fis16 g \tweak TabNoteHead
  #'transparent ##t a,,16[ fis16 d8\5] g16~ <\fakeSlur g\3 b\3> d'8 < \tweak
  TabNoteHead #'transparent ##t a,, b\3>16~ <\fakeSlur b\3 g\3>16 fis8 |
  % Bar 53
  \grace { \hideFretNumber d8\5 \glissando s } e8\5 g16\4 g 
  <\invTNH a,,>16[ g\4 e8\5] fis'16\2~ <\fakeSlur fis'\2 b\2> g8
  <d'\3 \tweak TabNoteHead #'transparent ##t a,,>8 e' |
  % Bar 54
  e8\5 g16\4 g\3 <\invTNH a,,>16[ g\4 e8\5] \grace
  fis'8\2 \glissando g'8\2 a' \slurDown <b'\2\harmonic a,,>4~ |
  % Bar 55
  <\fakeSlur a,,\6 c,\6>8 e16 g \tweak TabNoteHead #'transparent ##t a,, e c,8
  \slurNeutral g16~ <\fakeSlur g\3 a\3> b8 < \tweak TabNoteHead #'transparent
  ##t a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  % Bar 56
  \grace { \hideFretNumber c,8 \glissando s } d,8 fis16 g 
  <\invTNH a,,>16[ fis d,8] g16~ <\fakeSlur g\3 b\3> d'8 < \tweak
  TabNoteHead #'transparent ##t a,, b\3>16~ <\fakeSlur b\3 g\3> fis8 |
  % Bar 57
  \grace { \hideFretNumber d,8 \glissando s } e,8 g16\4 g\3 \tweak TabNoteHead
  #'transparent ##t a,, g\4 e,8 fis'16\2~ <\fakeSlur fis'\2 b\2> g8 < \tweak
  TabNoteHead #'transparent ##t a,, d'\3>8 e' |
  % Bar 58
  e,8 g16\4 g\3 <\invTNH a,,>16[ g\4 e,8] \grace
  fis'8\2 \glissando g'8\2 a' \slurDown <b'\2\harmonic a,,>4~ |
  % Bar 59
  <\fakeSlur a,,\6 c,\6>8 e16 g \tweak TabNoteHead #'transparent ##t a,, e c,8
  \slurNeutral g16~ <\fakeSlur g\3 a\3> b8 < \tweak TabNoteHead #'transparent
  ##t a,, a>16~ <\fakeSlur a\3 g\3> e8 |
  % Bar 60
  \grace { \hideFretNumber c,8 \glissando s } d,8 fis16 g 
  <\invTNH a,,>16[ fis d,8] g16~ <\fakeSlur g\3 b\3> d'8 < \tweak
  TabNoteHead #'transparent ##t a,, b\3>16~ <\fakeSlur b\3 g\3> fis8 |
  % Bar 61
  \grace { \hideFretNumber d,8 \glissando s } e,8 g16\4 g\3 \tweak TabNoteHead
  #'transparent ##t a,, g\4 e,8 fis'16\2~ <\fakeSlur fis'\2 b\2> g8 < \tweak
  TabNoteHead #'transparent ##t a,, d'\3>8 e' |
  % Bar 62
  e,8 g16\4 g\4 <\invTNH a,,>16[ g\4 e,8]
  fis'16\2~ <\fakeSlur fis'\2 b\2> <e, g>8 <b d'\3 \tweak TabNoteHead
  #'transparent ##t a,,>8 <e' b> |
  % Bar 63
  a,8\6 c'16\4 g~ g16[ c'\4 <a,\6 g'\3>8]~ <a,\6 g'\3>4 \glissando \grace {
  \hideFretNumber <g,\6 f'\3>8 \hideFretNumber <g\5>8 \glissando s } a8\5 b |
  % Bar 64
  e,8 g16\4 g\4~ g16\4[ g\4 e,8] d'16\3~ <\fakeSlur d'\3 g\3> g8\4 
  <\invTNH a,, a\4 > b |
  % Bar 65
  a,8\6 c'16\4 b~ b16[ c'\4 <a,\6 g\3>8]~ <a,\6 g\3>8[ <\invTNH a,, g\3 b'\2>8] \grace {
  \hideFretNumber g8\5 \glissando s } a8\5 b |
  % Bar 66
  d,8 fis16 g~ g16[ fis d,8] <\tweakTabNoteHead \mutedString e\5 e,\6 g\4 g\3
  b\2>4 <\invTNH a,, g\3>4 |
  % Bar 67
  a,8\6 c'16\4 b~ b16[ c'\4 <a,\6 g'\3>8]~ <a,\6 g'\3>4 \glissando
  \grace { \hideFretNumber <g,\6 f'\3>8 } <\invTNH a,, g>8 b |
  % Bar 68
  e,8 g16\4 g\3 <\invTNH a,,>16[ g\4 e,8] d'16\3~ <\fakeSlur d'\3 g\3> g8\4
  <\invTNH a,, g\3 a\4> b |
  % Bar 69
  c,8 e16 g <\invTNH a,,>16[ e c,8] \grace { \hideFretNumber c,8 \glissando s } d,8 fis16 g
  <\invTNH a,,>16[ fis d,8] |
  % Bar 70
  \grace { \hideFretNumber d, \glissando s } e,8 g16\4 g\3 <\invTNH a,,>16[ d <c,
  \tweakTabNoteHead \mutedString c e g>8]~ <c, e g>4 <\invTNH a,, g e>4  |
  % Bar 71
  c,8 e16 b <\invTNH a,,>16[ e c,8] \grace { \hideFretNumber c,8 \glissando s } d,8 fis16 g
  <\invTNH a,,>16[ fis d,8] |
  % Bar 72
  e,8 g16\4 <b e'> <\invTNH a,,>16[ d <c, \tweakTabNoteHead \mutedString a, e g d'>8]~ <c,
  e g d'>4 <\invTNH a,, e g>4  |
  % Bar 73
  c,8 e16 d' <\invTNH a,,>16[ e c,8] \grace { \hideFretNumber c,8 \glissando s } d,8 fis16
  e'\2 <\invTNH a,,>16[ fis d,8] |
  % Bar 74
  e,8 g16\4 fis'\2~ fis'16\2[ d <c, \tweakTabNoteHead \mutedString a, e g d' >8]~ <c,
  e g d'>4 < \tweak TabNoteHead #'transparent ##t a,, g e>4  |
  % Bar 75
  a,,16~ <\fakeSlur a,,\6 b,,\6> e g\3~ g16[ e <b,, \tweakTabNoteHead
  \mutedString b, e g cis' e'>8]~ <b,, e g cis' e'>4 <b,, \tweakTabNoteHead
  \mutedString b, e g cis' e'>8 \tick <b,, b,>16 \tick <b,, b,>16 |
  % Bar 76
  \arpeggioArrowUp \once \override BreathingSign #'extra-offset = #'(3 . 0)
  \rightBracketThree <a,, a, e a cis' e'>4\arpeggio <\invTNH a,,>16[ a,,8.] a,,4 < \tweak
  TabNoteHead #'transparent ##t a,, a cis' e >8 a,16 a, |
  % Bar 77
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan fis32~
  <\fakeSlur fis\4 gis\4 \parenthesize e'\2> e'16\2 <\invTNH a,,>16[ b\3 \once \override
  BreathingSign #'extra-offset = #'(3 .  -2.0) \leftBracketTwo <cis
  cis,>8\stopTextSpan] \once \override BreathingSign #'extra-offset = #'(0.5 . 0)
  \leftBracketThree <b,, b, fis b\3 dis'>4 <\tweak TabNoteHead #'transparent ##t
  a,, fis b\3 dis'>16 <b\3 e'\2>8. |
  % Bar 78
  \arpeggioArrowUp \once \override BreathingSign #'extra-offset = #'(3 . 0)
  \rightBracketThree <a,, a, e a cis' e'>4\arpeggio <\invTNH a,,>16[ a,,8.] a,,4 < \tweak
  TabNoteHead #'transparent ##t a,, a cis' e>8 a,16 a, |
  % Bar 79
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan fis32~
  <\fakeSlur fis\4 gis\4 \parenthesize e'\2> <e'\2 b\3 gis'\1>16 <\invTNH a,,>16[ < b\3 e'\2>
  \once \override BreathingSign #'extra-offset = #'(3 .  -2.0) \leftBracketTwo
  <cis, cis gis b e'\2>8\stopTextSpan] \once \override BreathingSign
  #'extra-offset = #'(0.5 . 0) \leftBracketThree <b,, b, fis b\3 dis'>4 <\tweak
  TabNoteHead #'transparent ##t a,, fis b\3 dis'>16 <b\3 e'\2>8. |
  % Bar 80
  \arpeggioArrowUp \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #LEFT \fontsize #-5 "4/6 C II " } <a,, a, e a cis' a'>4\arpeggio\startTextSpan
  <\invTNH a,,>16[ a,,8.] a,,4 < \tweak TabNoteHead #'transparent ##t a,, a cis' a'>8 a,16
  a,\stopTextSpan |
  % Bar 81
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan fis32~
  <\fakeSlur fis\4 gis\4 \parenthesize e'\2 > <e'\2 b\3 gis'\1>16 <\invTNH a,,>16[ < b\3
  e'\2> \once \override BreathingSign #'extra-offset = #'(3 .  -2.0)
  \leftBracketTwo <cis, cis gis b e'\2>8\stopTextSpan] \once \override
  BreathingSign #'extra-offset = #'(0.5 . 0) \leftBracketThree <b,, b, fis b\3
  dis'>4 <\tweak TabNoteHead #'transparent ##t a,, fis b\3 dis'>16 <b\3 e'\2>8. |
  % Bar 82
  \arpeggioArrowUp \once \override BreathingSign #'extra-offset = #'(3 . 0)
  \rightBracketThree <a,, a, e a cis' e'>4\arpeggio <\invTNH a,,>16[ a,,8.] a,,4 < \tweak
  TabNoteHead #'transparent ##t a,, a cis' e>8 a,16 a, |
  % Bar 83
  a,,16~ \once \override TextSpanner #'style = #'line \once \override
  TextSpanner #'(bound-details right text) = \markup { \draw-line #'(0 . -0.5)
  } \once \override TextSpanner #'(bound-details left text) =  \markup { \halign
  #CENTER \fontsize #-5 "C IV " } <\fakeSlur a,,\6 cis,\6>\startTextSpan <gis\4
  \parenthesize e'\2> e'\2 <\invTNH a,,>16[ <b e'\2> \once \override BreathingSign
  #'extra-offset = #'(3 .  -2.0) \leftBracketTwo <cis, cis gis b
  e'\2>8\stopTextSpan] \once \override BreathingSign #'extra-offset = #'(0.5 . 0)
  \leftBracketThree <b,, b, fis b dis' >4 \once \override BreathingSign
  #'extra-offset = #'(0.3 . 2) \leftBracketTwo \harmonicByRatio #1/3 <b' fis'>4
  % Bar 84
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 85 
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 86
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 87 
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 88
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 89 
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick a,16 \grace c8 \glissando cis16 \tick
  a,16 a,16 \tick a,16 b,16 |
  % Bar 90
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,> \tick d16 \grace f8 \glissando fis16 \tick d16
  d16 \tick a,16 b,16 |
  % Bar 91
  <a,, a,>8[ \leftBracketTwo <b,, b,>] \tick <a,, a,>16 \tick <a,, a,>16 <a,,
  a,>8 \leftBracketTwo <b,, b,>8\marcato \once \override Rest #'transparent =
  ##f r8 \bar "|."
}

% Breaks Voice
  breaks = {
    % Bars 1-2
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 8)
    (alignment-distances . (10 15 )))
    s1*2 \break
    % Bars 3-4
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 50)
    (alignment-distances . (10 15 )))
    s1*2 \break
    % Bars 5-6
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 88)
    (alignment-distances . (10 15 )))
    s1*2 \break
    % Bars 7-8
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 0)
    (alignment-distances . (10 15 )))
    s1*2 \break
    % Bars 9-11
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 42)
    (alignment-distances . (10 15 )))
    s1*3 \break
    % Bars 12-14
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 88)
    (alignment-distances . (10 15 )))
    s1*3 \break
    % Bars 15-17
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 0)
    (alignment-distances . (15 15 )))
    s1*3 \break
    % Bars 18-20
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 42)
    (alignment-distances . (10 15 )))
    s1*3 \break
    % Bars 21-23
    \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 84)
    (alignment-distances . (15 15 )))
    s1*2 \break
  }
% Dynamics
%% DynamicsOne

dynamicsone = {
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
  s2 s4-\mkTweak #0 #0 ^\lhfour s4 |

}

%% DynamicsTwo
dynamicstwo = {
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
  s4 s8 s8-\mkTweak #0 #0 ^\lhfour s16 s8.-\mkTweak #0 #0 ^\lhfour s4 |
  % Bar 11
  s1 |
  % Bar 12
  s16 s8.-\mkTweak #0 #0 ^\lhfour s4 s16 s8.-\mkTweak #0 #0 ^\lhfour s4 | 
  % Bar 13
  s1 |
  % Bar 14
  s1 |
  % Bar 15
  s4 s4 s16 \tsMove #0 #0 \lhSpannerDown "4" { s8. s8 s8 } |
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
  s2 s4-\mkTweak #0 #0 ^\lhfour s4 |
  % Bar 22
  s2 s4 \tsMove #0 #0 \lhSpannerDown "4" { \grace s8 s8 } s8 |
  % Bar 23
  s1 |
  % Bar 24
  s1 |
  % Bar 25
  s2 s4 s8 s8-\mkTweak #0 #0 ^\twostrupstrm |
}

%% DynamicsThree
dynamicsthree = {
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
  s2. s16 \mkMove #0 #12 s16^\lhone s8 |
  % Bar 9
  \tsMove #0 #0 \lhSpannerDown "4" { s1 
  % Bar 10
  s4  s16 } s8. s4 \tsMove #0 #0 \lhSpannerDown "4" {s4
  % Bar 11
  s2. s8 s8 }
  % Bar 12
  s4 s8 s8-\mkTweak #0 #0 ^\lhfour s4 s8 s8-\mkTweak #0 #0 ^\lhfour  
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
  s4 \tsMove #0 #21.85 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.12 #18.86 \threeStrDamp s8-\mkTweak #-1.5 #16.1 ^\oneStrMFlick -\mkTweak
  #0 #6 ^\lhtwo \startTextSpan s8\stopTextSpan |
  % Bar 22
  s8 \tsMove #0 #0 \lhSpannerDown "3" { s8 s4 s8 s8 } s4 |
  % Bar 23
  s2 s4 s4-\mkTweak #0 #0 ^\oneStrFlick |
  % Bar 24
  s8 \tsMove #0 #0 \lhSpannerDown "3" { s8 s4 s16 } s16 s8-\mkTweak #0 #0
  ^\lhthree s4-\mkTweak #0 #0 ^\lhthree |
  % Bar 25
  s2 s4 s4-\mkTweak #0 #0 ^\oneStrFlick |
  % Bar 26 
  s1 |
  % Bar 27
  s4 s4 s16 s16-\mkTweak #0 #0 ^\lhtwo s8 \tsMove #0 #0 \strDampening s16-\mkTweak #0 #0 ^\oneStrMFlick
  -\mkTweak #0 #0 ^\lhtwo \startTextSpan s16\stopTextSpan s8 |

}

%% DynamicsFour
dynamicsfour = {
  % Bar 1
  s2 s8 s16 \tsMove #0 #15 \lhSpannerDown "3" { \grace s8 s16 } s4 |
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
  s2 s8 s16 \tsMove #0 #16 \lhSpannerUp "3" { \grace s8 s16 } s4 |
  % Bar 9
  \tsMove #0 #0 \lhSpannerDown "3" { s1
  % Bar 10
  s2 s4 s4_\twoStrMFlick
  % Bar 11
  s1 
  % Bar 12
  s2. s8 s8 }
  % Bar 13
  s1 
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
  s2. \tsMove #0 #0 \threeStrDamp s16\startTextSpan 
  s16\stopTextSpan  \mkMove #0 #5 s8^\lhthree |
  % Bar 21
  %% Fourth String-Dampening in this measure takes place in dynamicsthree
  s8 \tsMove #0 #11 \lhSpannerDown "2" { s8 s4 s8 s8 } s4 |
  % Bar 22
  s4 \tsMove #0 #0 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 23
  s4 \tsMove #0 #0 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #0 #0 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 24
  s1 |
  % Bar 25
  s2 s4 \tsMove #0 #0 \threeStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 26
  s1 |
  % Bar 27
  s2 s4 \tsMove #0 #0 \threeStrDamp s16\startTextSpan s16\stopTextSpan
  s8-\mkTweak #0 #0 ^\lhtwo |

  

  
}
%% DynamicsFive
dynamicsfive = {
  % Bar 1
  s8 s8_\lhone s4 s4_\lhone s8. s16_\lhone |
  % Bar 2
  s8 s8_\lhone s4 s8._\lhone \tsMove #0 #15 \lhSpannerDown "3" { \grace s8 s16 }
  s8. s16_\lhone |
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
  \mkMove #-2.0 #20 s4^\fivestrdwnstrm s4 s2 |
  % Bar 10
  s2. \tsMove #0 #0 \twoStrDamp s8-\mkTweak #0 #0 ^\rhp \startTextSpan s8\stopTextSpan |
  % Bar 11
  \mkMove #-2.0 #20 s4^\fivestrdwnstrm s4 s2 |
  % Bar 12
  s1 |
  % Bar 13
  \mkMove #-2.0 #10 s4^\fivestrdwnstrm s4 s2 |
  % Bar 14
  s2. \tsMove #0 #0 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 15
  \mkMove #-2.0 #10 s4^\fivestrdwnstrm s4 s2 |
  % Bar 16
  s1 |
  % Bar 17
  \mkMove #-2.0 #10 s4^\fivestrdwnstrm s4 s2 |
  % Bar 18
  s2. \tsMove #0 #0 \twoStrDamp s8\startTextSpan s8\stopTextSpan |
  % Bar 19
  \mkMove #-2.0 #10 s4^\fivestrdwnstrm s4 s2 |
  % Bar 20
  s2. \tsMove #0 #0 \strDampening s16\startTextSpan s16\stopTextSpan s8 |
  % Bar 21
  s4 \tsMove #-0.12 #22.72 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #24.25 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 22
  s4 \tsMove #0 #0 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 23
  s4 \tsMove #0 #0 \twoStrDamp s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #0 #0 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 24
  s1 |
  % Bar 25
  s2 s4 \tsMove #0 #0 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 26
  s1 |
  % Bar 27
  %% String-Dampening for this String, this measure is located at Dynamicsthree
  \tsMove #0 #0 \lhSpannerDown "3" {s1
  % Bar 28
  s1
  % Bar 29
  s1 
  % Bar 30
  s4 s8 s8 }

}
%% DynamicsSix
dynamicssix = {
  \override TextScript #'extra-offset = #'(-1.0 . 8.5)
  % Bar 1
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 2
  s8_\twostrdwnstrm s8_\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-1.0 . 8.5)
  % Bar 3
  s8_\twostrdwnstrm s8_\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 4
  s8_\twostrdwnstrm s8_\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 5
  s8_\twostrdwnstrm s8_\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 6
  s8_\twostrdwnstrm s8_\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  \override TextScript #'extra-offset = #'(-1.0 . 8.5)
  % Bar 7
  s8_\twostrdwnstrm s8_\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm 
  s16_\onestrdwnstrm s16_\onestrupstrm 
  % Bar 8
  s8_\twostrdwnstrm s8_\twostrupstrm
  s16_\twostrdwnstrm s16_\twostrupstrm
  s8_\twostrdwnstrm s8_\twostrdwnstrm
  s16_\onestrdwnstrm \grace s16_\onestrupstrm s16
  s16_\onestrdwnstrm s16_\onestrupstrm s8
  % Bar 9
  \tsMove #0 #7 \lhSpannerDown "1" { s1  
  % Bar 10
  s2. s8 s8 }
  % Bar 11
  s1
  % Bar 12
  s1
  % Bar 13
  s1
  % Bar 14
  s2. s8_\twoStrFlick s8
  % Bar 15
  s1 
  % Bar 16
  s1
  % Bar 17
  s1
  % Bar 18
  s2. s8_\twoStrFlick s8
  % Bar 19
  s1 
  % Bar 20
  s1 
  % Bar 21
  s4 \tsMove #-0.1 #23.44 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #-0.1 #23.43 \strDampening s8\startTextSpan s8\stopTextSpan
  % Bar 22
  s4 \tsMove #0 #0 \strDampening s16\startTextSpan s16\stopTextSpan s8 s2 |
  % Bar 23
  s4 \tsMove #0 #0 \strDampening s16\startTextSpan s16\stopTextSpan s8 s4
  \tsMove #0 #0 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 24
  s1 |
  % Bar 25
  s2 s4 \tsMove #0 #0 \strDampening s8\startTextSpan s8\stopTextSpan |
  % Bar 26
  s1 |
  % Bar 27
  s2 s4 \tsMove #0 #0 \strDampening s16\startTextSpan s16\stopTextSpan s8 |


}

%% SixStr
sixstr = {
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  % Bar 9
  s4 
  \override TextScript #'extra-offset = #'(-0.1 . 2.0)
  \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 10
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 11
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 12
  s4 \strDampening s8_\snare\startTextSpan s8\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 13
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 14
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 15
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 16
  s4 \strDampening s8_\snare\startTextSpan s8\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 17
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 18
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 19
  s4 \strDampening s16_\snare\startTextSpan s8.\stopTextSpan s4 \strDampening
  s8_\snare\startTextSpan s8\stopTextSpan |
  % Bar 20
  s4 \strDampening s8_\snare\startTextSpan s8\stopTextSpan s4 \strDampening
  s16_\snare\startTextSpan s16\stopTextSpan s8 |
  % Bar 21
  s16 \tsMove #0 #-4 \lhSpannerDown "3" { s8. s4\mkTweak #-0.05 #3.2
  _\bassSnare s4 s8\mkTweak #-0.05 #3.8 _\snare } s8 |
  % Bar 22
  \tsMove #0 #0 \lhSpannerDown "2" { s4 s4_\bassSnare s8 s8 } s4 |
  % Bar 23
  \tsMove #0 #0 \lhSpannerDown "3" { s4 s4_\bassSnare s8 s8 } s4_\snare |
  % Bar 24
  s4 s4_\bass s2 |
  % Bar 25
  s4 s4_\bass s4 s4_\bassSnare |
  % Bar 26
  s4 s4_\bass s2 |
  %%
  %% Bar 27
  %%
  s4 s4_\bass s4 s4_\snare |
  % Bar 28
  s4 s4_\bass s4 s4_\snare |
  % Bar 29
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 30
  s4 s4_\bass s4 s4 |
  % Bar 31
  s4 s4_\bass s4 s4_\snare |
  % Bar 32
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 33
  s4 s4_\bass s4 s4_\snare |
  % Bar 34
  s4 s4_\snare s2 |
  % Bar 35
  s4 s4_\bass s4 s4_\snare |
  % Bar 36
  s4 s4_\bassSnare s4 s4_\bassSnare |
  %% 
  %% Bar 37
  %%
  s4 s4_\snare s4 s4_\bassSnare |
  % Bar 38
  s4 s4_\snare s2 |
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
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 48
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 49
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 50
  s4 s4_\snare s4 s4_\snare |
  % Bar 51
  s4 s4_\snare s4 s4_\snare |
  % Bar 52
  s4 s4_\snare s4 s4_\snare |
  % Bar 53
  s4 s4_\snare s4 s4_\snare |
  % Bar 54
  s4 s4_\snare s4 s4 |
  % Bar 55
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 56
  s4 s4_\snare s4 s4_\snare |
  % Bar 57
  s4 s4_\snare s4 s4_\snare |
  % Bar 58
  s4 s4_\snare s4 s4 |
  % Bar 59
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 60
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 61
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 62
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 63
  s4 s4_\bass s4 s4 |
  % Bar 64
  s4 s4_\bass s4 s4_\snare |
  % Bar 65
  s4 s4_\bass s4_\snare s4 |
  % Bar 66
  s4 s4_\bass s4 s4_\snare |
  % Bar 67
  s4 s4_\bass s4 s4_\snare |
  % Bar 68
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 69
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 70
  s4 s4_\bass s4 s4_\snare |
  % Bar 71
  s4 s4_\snare s4 s4_\snare |
  % Bar 72
  s4 s4_\bassSnare s4 s4_\snare |
  % Bar 73
  s4 s4_\bassSnare s4 s4_\bassSnare |
  % Bar 74
  s4 s4_\bass s4 s4_\bassSnare |
  % Bar 75
  s4 s4_\bass s4 s4 | 
  % Bar 76
  s4 s4_\snare s4 s4_\snare |
  % Bar 77
  s4 s4_\snare s4 s4 |
  % Bar 78  
  s4 s4_\snare s4 s4_\snare |
  % Bar 79
  s4 s4_\snare s4 s4 |
  % Bar 80
  s4 s4_\snare s4 s4_\snare |
  % Bar 81
  s4 s4_\snare s4 s4_\snare |
  % Bar 82
  s4 s4_\snare s4 s4_\snare |
  % Bar 83
  s4 s4_\snare s4 s4 |

}

% Score
\score {
  <<
    \new GrandStaff = "tab with traditional" \with {
  systemStartDelimiter = #'SystemStartBar
  \override SystemStartBar #'thickness = #5
  \override SystemStartBar #'X-offset = #-1
  \override StaffGrouper #'staffgroup-staff-spacing #'padding = #2
  \override StaffGrouper #'staffgroup-staff-spacing #'basic-distance = #60
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
      \new Dynamics = "sixstr" \sixstr
      \new Dynamics = "dynamicsone" \dynamicsone
      \new Dynamics = "dynamicstwo" \dynamicstwo
      \new Dynamics = "dynamicsthree" \dynamicsthree
      \new Dynamics = "dynamicsfour" \dynamicsfour 
      \new Dynamics = "dynamicsfive" \dynamicsfive  
      \new Dynamics = "dynamicssix" \dynamicssix
      \new TabVoice = "tab" \tab
      \new Voice = "breaks" \breaks
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

