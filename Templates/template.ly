\version "2.16.2"
%{ Declaration
=============================================================================
"TITLE", by COMPOSER

Copyright Info

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  DATE
__..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
|                        
.__    .  .        ,                
[__). .|_ |* _. _.-+-* _ ._  __     
|   (_|[_)||(_.(_] | |(_)[ )_)      

============================================================================%} 
\pointAndClickOff
% Header contains the composer information, Song title and copyright
% information.  This includes Transcription copyright.
\include "header.ly"
% The Paper include contains the innformation regarding the placement
% of the systems within the confines of the letter size document.
% This is also where the choice of typeface is located.  The
% "max-systems-per-page" is located here.  The paper includes also
% contains the information for the copyright on pages after the first.
\include "paper.ly"
% The layout include is occasionaly commented out.  But it provides the
% manner in which one can define placement of distance and padding.
\include "layout.ly"

% The Sleep-Functions include contains the quick tweaks and overrides
% that are frequently used within sleeplimited publications.
\include "sleep-functions.ly"
% The Vibrato include contains the manner in which one can create
% sine waves to be used with Neck, Vertical, and horizontal vibrato.
\include "vibrato.ly"
% Standard Notation
\include "upper.ly"
\include "lower.ly"
% Tab
\include "tab.ly"
% Dynamics and Articulations
% These are generally going to be used for Right Handing String
% Damping as it is not possible to have two TextSpanner cohabiting the
% same voice.
\include "dynamicsone.ly"
\include "dynamicstwo.ly"
\include "dynamicsthree.ly"
\include "dynamicsfour.ly"
\include "dynamicsfive.ly"
\include "dynamicssix.ly"
% SixStr is usually used for Right Hand Fingering.
\include "sixstr.ly"
% To fix the issue with TextSpanners.  The following are generally
% going to be used for barres, vibrati, and other text spanners which
% may be used.
\include "lhOne.ly"
\include "lhTwo.ly"
\include "lhThree.ly"
\include "lhFour.ly"

% The Score include contains the information for the system bar.  The
% Staff symbols, the voices, the clefs, and staff sizes.
\include "score.ly"
