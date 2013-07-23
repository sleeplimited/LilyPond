\version "2.16.2"

\paper {
   indent = 0 }

\header {
	title = "Guitar Technique Examples"
}

%%%%%%%%%%%%%%%%%%%%%
% Down & Up Picking %
%%%%%%%%%%%%%%%%%%%%%
downup = {
	c\downbow b\upbow
}


\score {
	<<
	\new Staff { \relative c' { \clef "treble_8" \time 2/4 \downup }}
	\new TabStaff { \tabFullNotation\relative c' { \downup }}
	>>
	\header {
		piece = \markup { \bold "Down & Up Picking" }
	}
}

\markup {\italic \column {
	\line { This diagram tells you the first note is to be down-picked and the last note is to be up-picked. }
	\line {" "}
	}
}


%%%%%%%%%%%%%%%%%%%
% Tremolo Picking %
%%%%%%%%%%%%%%%%%%%
tremolo = {
	c:16 b:16 a:16 g:16
}

\score {
	<<
	\new Staff { \relative c' { \clef "treble_8" \tremolo }}
	\new TabStaff {
	  \tabFullNotation
	  \relative c' { \tremolo }
	}
	>>
	\header {
		piece = \markup { \bold "Tremolo Picking" }
	}
}

\markup {\italic \column {
	\line {Each of the four notes are to be alternate picked very rapidly and continuously. }
	\line {" "}
	}
}

%%%%%%%%%%%%%%%
% Palm Muting %
%%%%%%%%%%%%%%%
pm = {
   \textSpannerDown
   \override TextSpanner #'bound-details #'left #'text =
      \markup {\halign #-0.5 \teeny \italic "P.M." }
      \override TextSpanner #'style =
         #'dashed-line
   \override TextSpanner #'dash-period = #0.6
   \override TextSpanner #'bound-details #'right #'attach-dir = #1
   \override TextSpanner #'bound-details #'right #'text =
      \markup { \draw-line #'(0 . 1) }
   \override TextSpanner #'bound-details #'right #'padding = #-0.5
   }

riff = \relative c, {
\time 6/4
	<e b' e>8\pm e16\startTextSpan e16 e16 e16\stopTextSpan <e b' e>8
	\palmMute e16 e16 \palmMuteOn e16 e16\palmMuteOff
	<e b'e>8 e16-. e16-. e16-. e16-. <e b' e>8 <e b' e>8 <f c' f>8
}

\score
{
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"

        \context Voice = "riff" {
        	\riff
        }
      >>
      \new TabStaff = "guitar tab" <<
      \context TabVoice = "riff" {
      	\tabFullNotation
      	\riff
      }
      >>
    >>
  >>
  \header {
		piece = \markup { \bold "Palm Muting" }
  }
}

\markup {\italic \column {
	\line {Palm mute by resting the edge of the picking hand's palm on the strings near the bridge.}
	\line { \with-color #(x11-color 'red)
	"Comment: The P.M. textspanner doesn't appear in the TabStaff. There is a need to indicate palm muting "
	}
	\line { \with-color #(x11-color 'red)
	"especially in tabFullNotation. The staccato dot is sometimes misused for this purpose. "
	}
	\line { \with-color #(x11-color 'red)
	"How can I use the P.M. textspanner in Tabstaff or draw a triangle around the palm muted notes in tablature?"
	}
        \line { \with-color #(x11-color 'blue)
        "The TextSpanner shows up in tabFullNotation. I think you mean the standard tab here?"}
        }
	\line {" "}
	}


%%%%%%%%%%%%%
% Pick Rake %
%%%%%%%%%%%%%
pickrake = {
	\deadNotesOn \grace {  d,8[ g b ] } \deadNotesOff f'4
	%dead notes are not switched off!
        %++ they do, but you#Ll have to explicitly say \new [Tab]Voice,
        %++ this is mentioned in the docs
	%\grace { \deadNotesOn d,8[ g b ] \deadNotesOff }  f'4
	%dead notes are not switched off!
	% { \deadNotesOn \grace {  d,8[ g b ] } \deadNotesOff } f'4
	%dead notes are not switched off!
        \grace { \deadNote { d,8[ g b ] } }
	f'4
}

\score {
	<<
          \new Staff { \new Voice {\relative c' { \clef "treble_8" \pickrake }}}
        \new TabStaff { \new TabVoice { \relative c' { \pickrake }}}
	>>
	\header {
		piece = \markup { \bold "Pick Rake" }
	}
}

\markup {\italic \column {
	\line {Drag the pick across the strings shown with a single sweep. }
	\line {Often used to augment a rake's last note.}
	\line {" "}
	}
}


%%%%%%%%%%%%%%%%%%%%%
% Arpeggiated Chord %
%%%%%%%%%%%%%%%%%%%%%
arpeggiatedChords = {
	\arpeggioArrowUp
	<a\5 e'\4 b'\3 c\2 e\1>2\arpeggio
	\arpeggioArrowDown
	<a\5 e'\4 b'\3 c\2 e\1>2\arpeggio
}

\score {
	<<
	\new Staff { \relative c { \clef "treble_8" \arpeggiatedChords }}
	\new TabStaff {
		\tabFullNotation
		\relative c { \arpeggiatedChords }}
	>>
	\header {
		piece = \markup { \bold "Arpeggiated Chords" }
	}
	\layout {
    \context {
      \Voice
      \remove "New_fingering_engraver"
    }
  }
}

\markup {\italic \column {
	\line {Play the notes of the chord by strumming across the relevant strings }
	\line {in the direction of the arrow head.}
	\line {" "}
	}
}


\pageBreak
%%%%%%%%%%%%%%%%%%%%%%%%
% Hammer-On & Pull-Off %
%%%%%%%%%%%%%%%%%%%%%%%%
hopo = {
	\time 2/4
	c8( d) d( c)
}

\score {
	<<
	\new Staff { \relative c' { \clef "treble_8" \hopo }}
	\new TabStaff {
		\tabFullNotation
		\relative c' { \hopo }}
	>>
	\header {
		piece = \markup { \bold "Hammer-On & Pull-Off" }
	}
}

\markup {\italic \column {
	\line {Pick first note and hammer-on with the fretting hand for the second
	note.}
	\line {Then pick the third note and pull-off for the fourth note.}
	\line {" "}
	}
}

%%%%%%%%%%%%%%%
% Note Trills %
%%%%%%%%%%%%%%%
noteTrills = {
	\pitchedTrill c2\startTrillSpan d bes2\stopTrillSpan
}

\score {
	<<
	\new Staff { \relative c' { \clef "treble_8" \noteTrills }}
	\new TabStaff { \new TabVoice {
		\tabFullNotation
                \relative c' { \noteTrills }}}
	>>
	\header {
		piece = \markup { \bold "Note Trills" }
	}
}

\markup {\column {
	\line {Rapidly alternate between the first note and the note indicated in}
	\line	{brackets with fretting hand hammer-ons and pull-offs.}
	\line { \with-color #(x11-color 'red)
	"There should be a number instead of a note in parentheses on the second
line/string"
	}
	\line { \with-color #(x11-color 'red)
	"instead of the sixth line/string of the TabStaff!"
	}
        \line { \with-color #(x11-color 'blue)
        "This should be handled as a bug IMHO."
        }
	\line {" "}
}
}


%%%%%%%%%%%%%%%%%%%%%%
% Slides (Glissandi) %
%%%%%%%%%%%%%%%%%%%%%%
slides = {
	\set TabStaff.minimumFret = #5
	c8\glissando d8 \glissando d4 c4\glissando d4^\markup {\magnify #0.6 \bold RP}
}

\score {
	<<
	\new Staff { \relative c' { \clef "treble_8" \slides }}
	\new TabStaff {
		\tabFullNotation
		\relative c' { \slides }}
	>>
	\header {
		piece = \markup { \bold "Slides (Glissandi)" }
	}
}

\markup {
  \column {
	  \line {Pick 1st note and slide to the 2nd note. The last two notes}
	  \line	{show a slide with the last note being re-picked.}
	  \line {" "}
  }
}

VoiceI = {
  \once \override Glissando #'minimum-length = #5
  \once \override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
  \once \override Glissando #'thickness = #2
  \set TabStaff.minimumFret = #7
  <e b' e>4\glissando <f c' f>
}

VoiceII = {
  \hideNotes
  \stemUp
  \once \override Glissando #'thickness = #2
  b'4\glissando c4
}

VoiceIII = {
  \hideNotes
  \once \override Glissando #'thickness = #2
  e4\glissando f4
}

\new StaffGroup <<
  \new Staff <<
    \clef "G_8"
      \new Voice = "I" {
        \relative c {
          \voiceOne
          \VoiceI
        }
      }
      \new Voice = "II" {
        \relative c {
          \VoiceII
        }
      }
      \new Voice = "III" {
        \relative c {
          \VoiceIII
        }
      }
  >>
  \new TabStaff <<
    \tabFullNotation
    \new TabVoice = "I" {
      \relative c {
        \VoiceI
      }
    }
    \new TabVoice = "II" {
      \relative c {
        \VoiceII
      }
    }
    \new TabVoice = "III" {
      \relative c {
        \VoiceIII
      }
    }
  >>
>>
\markup {
  \column {
	  \line {Chord slides are also possible but difficult. Collision warnings.}
	  \line	{In standard notation the slides are (if at all) hardly visible.}
          \line {\with-color #(x11-color 'blue)
          "Have you seen http://lists.gnu.org/archive/html/lilypond-user/2010-04/msg00348.html?"}
          \line {\with-color #(x11-color 'blue)
          "There's nothing in the LSR yet, but perhaps it can be included in future versions."}

	  \line {" "}
  }
}

\pageBreak
%%%%%%%%%%%%%%%%%%%%%%
% Left Hand Tapping %
%%%%%%%%%%%%%%%%%%%%%%
lhTapping = {
	\times 4/6 {a,16\6( e) e'\5( d\5 a) a'\4}
}

\score {
	<<
	\new Staff { \relative c' { \clef "treble_8" \lhTapping }}
	\new TabStaff {
		\tabFullNotation
		\relative c' { \lhTapping }}
	>>
	\header {
		piece = \markup { \bold "Left Hand Tapping" }
	}
}
\markup {
  \column {
	  \line {Sound the notes marked with a square by hammering on/}
	  \line	{tapping with the fretting hand fingers.}
	  \line { \with-color #(x11-color 'red)
	    "Not possible, yet?! The first 5 and the two 7s should be marked with a square."
	  }
	  \line { \with-color #(x11-color 'red)
	    "The pull offs are sometimes indicated by \"P\" or \"PO\"."
	  }
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%%%
% Right Hand Tapping %
%%%%%%%%%%%%%%%%%%%%%%
rhTapping = {
	\times 4/6 { g'16\3( c'\3 e'\3) d'\4( g\4 b\4) }
}

\score {
	<<
	\new Staff { \clef "treble_8" \rhTapping }
	\new TabStaff {
		\tabFullNotation
		\rhTapping }
	>>
	\header {
		piece = \markup { \bold "Right Hand Tapping" }
	}
}
\markup {
  \column {
	  \line {Tap (hammer on) with a finger of the picking hand}
	  \line	{onto the fret marked with a circle.}
	  \line { \with-color #(x11-color 'red)
	    "Not possible, yet?! The 12s should be marked with a circle."
	  }
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%
% Fret Hand Muting %
%%%%%%%%%%%%%%%%%%%%
fhMuting = {
        \tabChordRepetition
	<e\5 gis\4 d'\3 g'!\2>16
	\deadNotesOn
	%q16 %not possible as q does not consider string number indications.
	q16 q q
	\deadNotesOff
	<e\5 gis\4 d'\3 g'!\2>8
	\deadNotesOn
	q16 q
	\deadNotesOff
}

\score {
	<<
	\new Staff { \clef "treble_8" \fhMuting }
	\new TabStaff {
		\tabFullNotation
		\fhMuting
	}
	>>
	\header {
		piece = \markup { \bold "Fret Hand Muting" }
	}
	\layout {
    \context {
      \Voice
      \remove "New_fingering_engraver"
    }
  }
}
\markup {
  \column {
	  \line {X markings represent notes and strings that are muted by the fretting hand}
	  \line	{when struck by the picking hand.}
	  \line { \with-color #(x11-color 'red)
	    "BTW: \deadNotesOn prints (unnecessary) reminder and cautionary accidentals in standard notation!"
	  }
          \line { \with-color #(x11-color 'blue)
            "You explicitly forced accidentals via ! and ?, but q just works out of the box now."
          }
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%
% Bend Up/Down %
%%%%%%%%%%%%%%%%
bendUpDown = {
	\grace c'8\3^( d'4\3 c'4\3)
}

\score {
	<<
	\new Staff { \clef "treble_8" \bendUpDown }
	\new TabStaff {
		%\tabFullNotation
		\bendUpDown
	}
	>>
	\header {
		piece = \markup { \bold "Bend Up/Down" }
	}
}
\markup {
  \column {
    \line {Fret the start note (here the 5th fret) and bend up to pitch of the 7th fret, before releasing again.}
	  \line { \with-color #(x11-color 'red)
	    "Quite often the target notes of bends are indicated in tablature by numbers in brackets"
	  }
	  \line { \with-color #(x11-color 'red)
	    "in combination with some text markups such as \"BU\" and \"BD\" or \"RB\", e.g.: 5 BU (7) BD (5)."
	  }
	  \line { \with-color #(x11-color 'red)
	    "Needs some tweaking/TODO. Marc Hohl created a more elegant solution for bends"
	  }
	  \line { \with-color #(x11-color 'red)
	    "but it's not yet part of the LilyPond package."
	  }
          \line { \with-color #(x11-color 'blue)
            "This stuff needs to be redone properly, so it isn't included yet."
          }
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%
% Re-Pick Bend %
%%%%%%%%%%%%%%%%
rePickBend = {
	\grace c'8\3( d'4\3) d'4\3_\markup{\teeny"RP"}
}

\score {
	<<
	\new Staff { \clef "treble_8" \rePickBend }
	\new TabStaff {
		%\tabFullNotation
		\rePickBend
	}
	>>
	\header {
		piece = \markup { \bold "Re-Pick Bend" }
	}
}
\markup {
  \column {
    \line {Bend up to the target note (here 7th fret), then re-pick the note}
    \line {while holding the bent note at the pitch shown.}
	  \line { \with-color #(x11-color 'red)
	    "Some tablature editions use numbers in brackets"
	  }
	  \line { \with-color #(x11-color 'red)
	    "in combination with some text markups such as \"BU\", e.g.: 5 BU (7)  (7)."
	  }
	  \line { \with-color #(x11-color 'red)
	    "Needs some tweaking/TODO. Marc Hohl created a more elegant solution for bends"
	  }
	  \line { \with-color #(x11-color 'red)
	    "but it's not yet part of the LilyPond package."
	  }
	  \line {" "}
  }
}

%%%%%%%%%%%%
% Pre-Bend %
%%%%%%%%%%%%
preBend = {
  \textLengthOn
	d'4\3(_\markup{\teeny"PB 5"}
	c'4\3)
}

\score {
	<<
	\new Staff { \clef "treble_8" \preBend }
	\new TabStaff {
		%\tabFullNotation
		\preBend
	}
	>>
	\header {
		piece = \markup { \bold "Pre-Bend" }
	}
}
\markup {
  \column {
    \line {Bend the note up from the 5th fret to the pitch of the 7th fret note,}
    \line {then pick it and release to 5th fret note.}
	  \line { \with-color #(x11-color 'red)
	    "Some tablature editions use numbers in brackets"
	  }
	  \line { \with-color #(x11-color 'red)
	    "in combination with some text markups such as \"BD\" or \"RB\", e.g.: (7) BD (5)."
	  }
	  \line { \with-color #(x11-color 'red)
	    "Needs some tweaking/TODO. Marc Hohl created a more elegant solution for bends"
	  }
	  \line { \with-color #(x11-color 'red)
	    "but it's not yet part of the LilyPond package."
	  }
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Quarter Tone Bend %
%%%%%%%%%%%%%%%%%%%%%
quarterToneBend = {
  \textLengthOn
	d'4\3 c'4\3_\markup{\teeny"BU 1/4"} a2\5
}

\score {
	<<
	\new Staff { \clef "treble_8" \quarterToneBend }
	\new TabStaff {
		%\tabFullNotation
		\quarterToneBend
	}
	>>
	\header {
		piece = \markup { \bold "Quarter Tone Bend" }
	}
}
\markup {
  \column {
    \line {Pick the note and then bend up a quarter tone.}
	  \line { \with-color #(x11-color 'red)
	    "Some tablature editions use a curved arrow in combination with 1/4"
	  }
	  \line { \with-color #(x11-color 'red)
	    "Needs some tweaking/TODO. Marc Hohl created a more elegant solution for bends"
	  }
	  \line { \with-color #(x11-color 'red)
	    "but it's not yet part of the LilyPond package."
	  }
	  \line {" "}
  }
}

\pageBreak
%%%%%%%%%%%
% Vibrato %
%%%%%%%%%%%
vibrato = {
  %\textLengthOn
  \override TextSpanner #'style = #'trill
  %\hideNotes
  %\grace d'8
  %\unHideNotes
	 d'2\3\startTextSpan
	c'2\3^\markup{\teeny"wide"}\stopTextSpan
	\startTextSpan
	a1\4~^\markup{\teeny"w/bar"}
	\stopTextSpan
	\startTextSpan
	%\hideNotes a4
	a1\4
	\stopTextSpan
}

\score {
	<<
	\new Staff { \clef "treble_8" \vibrato }
	\new TabStaff {
		%\tabFullNotation
		\vibrato
	}
	>>
	\header {
		piece = \markup { \bold "Vibrato" }
	}
}
\markup {
  \column {
    \line {The fretting hand vibrates the note by small bend ups and releases.}
    \line {The last example is a tremolo arm vibrato.}
	  \line { \with-color #(x11-color 'red)
	    "Maybe someone can think of a better solution?"
	  }
	  \line { \with-color #(x11-color 'red)
	    "Textspanners cannot be used with a single note."
	  }
	  \line { \with-color #(x11-color 'red)
	    "BTW: The command \hideNotes does not work in tablature."
	  }
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Natural Harmonics %
%%%%%%%%%%%%%%%%%%%%%
NH = {
   \textSpannerDown
   \override TextSpanner #'bound-details #'left #'text =
      \markup {\halign #-0.5 \teeny "NH" }
      \override TextSpanner #'style =
         #'dashed-line
   \override TextSpanner #'dash-period = #0.6
   \override TextSpanner #'bound-details #'right #'attach-dir = #1
   \override TextSpanner #'bound-details #'right #'text =
      \markup { \draw-line #'(0 . 1) }
   \override TextSpanner #'bound-details #'right #'padding = #-0.5
}

naturalHarmonics = {
  \override StringNumber #'add-stem-support = ##t
  \ottava #1
  \NH
  <d'\4\harmonic>16\startTextSpan
  <g'\3\harmonic>16
  <b'\2\harmonic>8
%  \harmonicByFret #7 < a\4 d'\3 fis'\2 >4
%  \ottava #2
%  \harmonicByFret #5 { c'16\3 e'16\2 a'8\1 }
%  \harmonicByRatio #2/5 < b'\4 e'\3 gis'\2 >4

%{
  %first harmonic
  \harmonicByFret #12 e,2\6_\markup{"1st harm."}
  \harmonicByRatio #1/2 e,\6
  %second harmonic
  \harmonicByFret #7 e,\6_\markup{"2nd harm. - - - -"}
  \harmonicByRatio #1/3 e,\6
  \harmonicByFret #19 e,\6
  \harmonicByRatio #2/3 e,\6
  %\harmonicByFret #19 < e,\6 a,\5 d\4 >
  %\harmonicByRatio #2/3 < e,\6 a,\5 d\4 >
  %third harmonic
  \harmonicByFret #5 e,\6_\markup{"3rd harm. - - - -"}
  \harmonicByRatio #1/4 e,\6
  \harmonicByFret #24 e,\6
  \harmonicByRatio #3/4 e,\6
  \break
  %fourth harmonic
  \harmonicByFret #4 e,\6_\markup{"4th harm. - - - - - - - - - - - - - -"}
  \harmonicByRatio #1/5 e,\6
  \harmonicByFret #9 e,\6
  \harmonicByRatio #2/5 e,\6
  \harmonicByFret #16 e,\6
  \harmonicByRatio #3/5 e,\6
  %fifth harmonic
  \harmonicByFret #3 e,\6_\markup{"5th harm."}
  \harmonicByRatio #1/6 e,\6
  \break
  %sixth harmonic
  \harmonicByFret #2.7 e,\6_\markup{"6th harm."}
  \harmonicByRatio #1/7 e,\6
  %seventh harmonic
  \harmonicByFret #2.3 e,\6_\markup{"7th harm."}
  \harmonicByRatio #1/8 e,\6
  %eighth harmonic
  \harmonicByFret #2 e,\6_\markup{"8th harm."}
  \harmonicByRatio #1/9 e,\6
  %}
  \stopTextSpan
}

\score {
	<<
	\new Staff { \clef "treble_8" \naturalHarmonics }
	\new TabStaff {
		%\tabFullNotation
		\naturalHarmonics
	}
	>>
	\header {
		piece = \markup { \bold "Natural Harmonics" }
	}
}
\markup {
  \column {
    \line {Pick the note whilst lightly touching the string directly over the fret indicated.}
	  \line { \with-color #(x11-color 'red)
	    "The commands \harmonicByFret and \harmonicByRatio will probably be included in 2.13.42."
	  }
          \line { \with-color #(x11-color 'blue)
          "They are included for versions >2.13.41."
          }
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fretted-string Harmonics ("Artificial" Harmonics) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
artificialHarmonics = {
  %artificial harmonics (AH)
  \textLengthOn
  <\parenthesize b b''\harmonic>4_\markup{ \teeny "AH 16" }
  <\parenthesize g g''\harmonic>4_\markup{ \teeny "AH 17" }
  <\parenthesize d' d'''\harmonic>2_\markup{ \teeny "AH 19" }
}

frettedStrings = {
  %artificial harmonics (AH)
  \harmonicByFret #4 b4\3
  \harmonicByFret #5 g4\4
  \harmonicByFret #7 d'2\3
}

\score {
	<<
	\new Staff { \clef "treble_8" \artificialHarmonics }
	\new TabStaff {
		%\tabFullNotation
		\frettedStrings
	}
	>>
	\header {
		piece = \markup { \bold "Fretted-string Harmonics (\"Artificial\" Harmonics)" }
	}
}
\markup {
  \column {
    \line {"Fret the note as shown, then lightly place the index finger directly over fret AH \'x\' and pick."}
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fretted-string Harmonics (Pinched Harmonics) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PH = {
   \textSpannerDown
   \override TextSpanner #'bound-details #'left #'text =
      \markup {\halign #-0.5 \teeny "PH" }
      \override TextSpanner #'style =
         #'dashed-line
   \override TextSpanner #'dash-period = #0.6
   \override TextSpanner #'bound-details #'right #'attach-dir = #1
   \override TextSpanner #'bound-details #'right #'text =
      \markup { \draw-line #'(0 . 1) }
   \override TextSpanner #'bound-details #'right #'padding = #-0.5
}

pinchedHarmonics = {
  \PH
  <a'\harmonic>2\startTextSpan
  <g'\harmonic>4
  <e'\harmonic>4\stopTextSpan
}

frettedStrings = {
  \harmonicByFret #7 a2\4
  \harmonicByFret #5 g4\4
  \harmonicByFret #7 e4\5
}

\score {
	<<
	\new Staff {
	  \clef "treble_8"
	  \pinchedHarmonics
	}
	\new TabStaff {
		\frettedStrings
	}
	>>
	\header {
		piece = \markup { \bold "Fretted-string Harmonics (Pinched Harmonics)" }
	}
}
\markup {
  \column {
    \line {"Fret the note as shown but dig into the strings with the side of the thumb as you sound it with the pick."}
    \line {"Pinched harmonics are sometimes engraved as fret numbers in triangles."}
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fretted-string Harmonics (Tapped Harmonics) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tappedHarmonics = {
  %tapped harmonics (TH)
  <\parenthesize g\4 g'\harmonic>4_\markup{ \teeny "TH 17" }
  <\parenthesize a\4 a'\harmonic>4_\markup{ \teeny "TH 19" }
  <\parenthesize c'\3 c''\harmonic>2_\markup{ \teeny "TH 17" }
}

frettedStrings = {
  %tapped harmonics (TH)
  \harmonicByFret #5 g4\4
  \harmonicByFret #5 a4\4
  \harmonicByFret #4 c'2\3
}



\score {
	<<
	\new Staff {
	  \clef "treble_8"
	  \tappedHarmonics
	}
	\new TabStaff {
		\frettedStrings
	}
	>>
	\header {
		piece = \markup { \bold "Fretted-string Harmonics (Tapped Harmonics)" }
	}
}
\markup {
  \column {
    \line {"Fret the note as shown but sound it with a quick right hand tap at the fret shown (TH 17) for a harmonic."}
	  \line {" "}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fretted-string Harmonics (Touch Harmonics) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

touchHarmonics = {
  %touch harmonics (TCH)
  a4( <e''\harmonic>2. )_\markup{ \teeny "TCH 9" }
}


frettedStrings = {
  %touch harmonics (TCH)
  a4 \harmonicByFret #9 e'2.\3
  %a4 <e'\3\harmonic>2.
}



\score {
	<<
	\new Staff {
	  \clef "treble_8"
	  \touchHarmonics
	}
	\new TabStaff {
		\frettedStrings
	}
	>>
	\header {
		piece = \markup { \bold "Fretted-string Harmonics (Touch Harmonics)" }
	}
}
\markup {
  \column {
    \line {"A previously sounded note is touched above the fret marked TCH (e.g. TCH 9) to sound harmonic."}
	  \line {" "}
  }
}
\markup {
  \column {
    \line {"TODO: Tremolo arm notation (tremolo arm bends, scoop and doop, dive bomb, gargle),"}
	  \line {" pick scrape, violining and a Tabkey."}
  }
}