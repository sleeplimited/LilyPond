\version "2.16.2"
%{ Declaration
=============================================================================
"The Ship", by Rachael Carlson

This transcription is by Rachael Thomas Carlson for Sleep Limited 
Publications.  10/07/13
__..           .           ,      .
(__ | _  _ ._   |   *._ _ *-+- _  _|
.__)|(/,(/,[_)  |___|[ | )| | (/,(_]
|                        
.__    .  .        ,                
[__). .|_ |* _. _.-+-* _ ._  __     
|   (_|[_)||(_.(_] | |(_)[ )_)      

============================================================================%} 
  % Dynamics
  %% DynamicsOne

  dynamicsone = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \partial 8
    \override TextSpanner #'extra-offset = #'(-0.1 . -1.03)
    \strDamp s8\startTextSpan |
    \once\override Staff.BarLine #'transparent = ##t
    % Bar 1
    s4 s4 s8 s8\stopTextSpan s4 |
    % Bar 2
    s2.. \strDamp s8\startTextSpan |
    % Bar 3
    s8 s8\stopTextSpan s2. |
    % Bar 4
    s2..  \strDamp s8\startTextSpan |
    % Bar 5
    s2 s8 s8\stopTextSpan s4 |
    % Bar 6
    s2..  \strDamp s8\startTextSpan |
    % Bar 7
    s8 s8\stopTextSpan s2. |
    % Bar 8
    s2..   \strDamp s8\startTextSpan |
    % Bar 9
    s2 s8 s8\stopTextSpan s4 |
    % Bar 10
    s2..   \strDamp s8\startTextSpan |
    % Bar 11
    s1 |
    % Bar 12
    s1 |
    % Bar 13
    s2 s8 s8\stopTextSpan s4 |
    % Bar 14
    s2..   \strDamp s8\startTextSpan |
    % Bar 15
    s1 |
    % Bar 16
    s2 s8 s8\stopTextSpan s4 |
    % Bar 17
    s8   \strDamp s8\startTextSpan s8 s8\stopTextSpan s2 |
    % Bar 18
    s1 |
    % Bar 19
    s1 |
    % Bar 20
    s1 |
    % Bar 21
    s1 |
    % Bar 22
    s1 |
    % Bar 23
    s8   \strDamp s8\startTextSpan s8 s8\stopTextSpan s2 |


  }
  %% DynamicsTwo
  dynamicstwo = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -2.03)
    % Anacrusis
    \partial 8
    \strDamp s8\startTextSpan |
    % Bar 1
    s8 s8\stopTextSpan s4 s8  \strDamp
    s8\startTextSpan s8\stopTextSpan s8 |
    % Bar 2
    s2..  \strDamp s8\startTextSpan |
    % Bar 3
    s4\stopTextSpan s4 s8  \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 4
    s2..  \strDamp s8\startTextSpan |
    % Bar 5
    s8 s8\stopTextSpan s4.  \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 6
    s2..  \strDamp s8\startTextSpan |
    % Bar 7
    s4\stopTextSpan s4 s8  \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 8
    s2..  \strDamp s8\startTextSpan |
    % Bar 9
    s8 s8\stopTextSpan s4.  \strDamp s8\startTextSpan s4\stopTextSpan |
    % Bar 10
    s2..  \strDamp s8\startTextSpan |
    % Bar 11
    s2 s8 s8\stopTextSpan s4 |
    % Bar 12
    s1 |
    % Bar 13
    \strDamp s8\startTextSpan s8\stopTextSpan s4.  \strDamp
    s8\startTextSpan s4\stopTextSpan |
    % Bar 14
    s2..  \strDamp s8\startTextSpan |
    % Bar 15
    s2 s8 s8\stopTextSpan s4 |
    % Bar 16
    s2.  \strDamp s4\startTextSpan |
    % Bar 17
    s4\stopTextSpan s2. |
    % Bar 18
    s2.. \strDamp s8\startTextSpan |
    % Bar 19
    s4\stopTextSpan s2.  |
    % Bar 20
    s2.. \strDamp s8\startTextSpan |
    % Bar 21
    s4\stopTextSpan s2 s8  \strDamp s8\startTextSpan  |
    % Bar 22
    s4 s2.\stopTextSpan |
    % Bar 23
    s1 |
    % Bar 24
    s2..  \strDamp s8\startTextSpan |
    % Bar 25
    s4\stopTextSpan s2.  |
    % Bar 26
    s2..  \strDamp s8\startTextSpan |
    % Bar 27
    s4\stopTextSpan s2 s8  \strDamp s8\startTextSpan  |
    % Bar 28
    s4 s2.\stopTextSpan |



  }

  %% DynamicsThree
  dynamicsthree = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -3.03)
    \partial 8
    \strDamp s8\startTextSpan
    % Bar 1
    s8\stopTextSpan s8 s4.  \strDamp s8\startTextSpan s8
    s8\stopTextSpan |
    % Bar 2
    s2..  \strDamp s8\startTextSpan |
    % Bar 3
    s4 s4\stopTextSpan s8  \strDamp s8\startTextSpan
    s8 s8\stopTextSpan |
    % Bar 4
    s2..  \strDamp s8\startTextSpan |
    % Bar 5
    s8\stopTextSpan s8 s4.  \strDamp
    s8\startTextSpan s8 s8\stopTextSpan |
    % Bar 6
    s2..  \strDamp s8\startTextSpan |
    % Bar 7
    s4 s4\stopTextSpan s8  \strDamp s8\startTextSpan
    s8 s8\stopTextSpan |
    % Bar 8
    s2..  \strDamp s8\startTextSpan |
    % Bar 9
    s8\stopTextSpan s8 s4.  \strDamp
    s8\startTextSpan s8 s8\stopTextSpan |
    % Bar 10
    s2..  \strDamp s8\startTextSpan |
    % Bar 11
    s8 s8\stopTextSpan s4.  \strDamp
    s8\startTextSpan s8\stopTextSpan s8 |
    % Bar 12
    s1 |
    % Bar 13
    s4 s4.  \strDamp s8\startTextSpan s8
    s8\stopTextSpan |
    % Bar 14
    s2..  \strDamp s8\startTextSpan |
    % Bar 15
    s8 s8\stopTextSpan s4.   \strDamp
    s8\startTextSpan s8\stopTextSpan s8 |
    % Bar 16
    s2.  \strDamp s4\startTextSpan |
    % Bar 17 
    s4\stopTextSpan s4 s4 s8  \strDamp
    s8\startTextSpan |
    % Bar 18
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % Bar 19
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % Bar 20
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % Bar 21
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % Bar 22
    s8 s16 s16\stopTextSpan s4 s4  \strDamp
    s4\startTextSpan |
    % Bar 23
    s4\stopTextSpan s4 s4 s8  \strDamp
    s8\startTextSpan |
    % Bar 24
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % BAr 25
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % BAr 26
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % Bar 27
    s8\stopTextSpan s2.  \strDamp s8\startTextSpan |
    % BAr 28
    s8 s16 s16\stopTextSpan


  }

  %% DynamicsFour
  dynamicsfour = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -4.03)
    \partial 8
    \strDamp s8\startTextSpan
    % Bar 1
    s8 s8 s4\stopTextSpan s8  s8 s8 s8 |
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
    \trMove #0.1 #0.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.4
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s16 s16 \eVib s8 s8
    s8 |
    % Bar 9
    \trMove #0.1 #1.0 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.6
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 10
    \trMove #0.1 #1.6 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #2.2
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s4 s8 s8 \eVib |
    % BAr 11
    \trMove #0.1 #2.0 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #2.6
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 12
    \trMove #0.1 #1.2 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.8
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s4 s8 s8 \eVib |
    % Bar 13
    \trMove #0.1 #0.4 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.0
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 14
    \trMove #0.1 #0.4 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.0
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s4 s8 s8 \eVib |
    % Bar 15
    \trMove #0.1 #0.4 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.0
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 16
    \trMove #0.1 #0.4 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.0
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 s8 \eVib
    \tsMove #-0.1 #-4.03 \strDamp s4\startTextSpan |
    % Bar 17
    s4\stopTextSpan s8 s4 s8 s8 \strDamp s8\startTextSpan |
    % Bar 18
    s8\stopTextSpan s8 s2 s4 |
    % Bar 19
    s2.. \strDamp s8\startTextSpan |
    % Bar20
    s8\stopTextSpan s2.. |
    % Bar 21
    s1 |
    % Bar 22
    s4 s4 s4 \strDamp s4\startTextSpan |
    % BAr 23
    s4\stopTextSpan s4 s4 s8 \strDamp s8\startTextSpan |
    % Bar 24
    s4\stopTextSpan s2. |
    % Bar 25
    s2.. \strDamp s8\startTextSpan |
    % Bar 26
    s4\stopTextSpan s2. |

  }
  %% DynamicsFive
  dynamicsfive = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -5.03)
    \partial 8
    s8
    % Bar 1
    \trMove #0.1 #1.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #2.4
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 2
    \trMove #0.1 #1.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #2.4
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s4 s8 s8 \eVib |
    % Bar 3
    \trMove #0.4 #2.0 \vibrato #'(1) #1.8 s8-\mkTweak #0.1 #2.6
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 4
    \trMove #0.1 #0.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.4
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s16 s16 \eVib s8 s8
    s16 \strDamp s16\startTextSpan | 
    % Bar 5
    s4 s4 s8\stopTextSpan s8 s4 |
    % Bar 6
    \trMove #0.1 #0.8 \vibrato #'(1) #1.8 s8-\mkTweak #-0.2 #1.4
    ^\markup { \sans \fontsize #-1 n } \sVib s8 s4 s4 s8 s8 \eVib |
    % Bar 7
    \trMove #0.4 #1.0 \vibrato #'(1) #1.8 s8-\mkTweak #0.1 #1.6
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib s8 s4
    | 
    % Bar 8
    s4 s4 s4 s8 s16 \strDamp s16\startTextSpan | 
    % Bar 9
    s4 s4 s8\stopTextSpan s8 s4 |
    % Bar 10-16 
    s1*7 |
    % Bar 17
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 18
    s8 s8\stopTextSpan s2. |
    % Bar 19
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 18
    s8 s8\stopTextSpan s2. |
    % Bar 19-22
    s1*2 |
    % Bar 23
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 24
    s8 s8\stopTextSpan s2. |
    % Bar 25
    s2 s4 s8 \strDamp s8\startTextSpan |
    % Bar 26
    s8 s8\stopTextSpan s2. |

  }
  %% DynamicsSix
  dynamicssix = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(-0.1 . -6.03)
    \partial 8
    s8
    % Bar 1
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 2
    s4\stopTextSpan s2. |
    % Bar 3
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 4
    s4\stopTextSpan s2. |
    % Bar 5
    \trMove #0.2 #0.6 \vibrato #'(1) #1.8 s8-\mkTweak #-0.1 #1.2
    ^\markup { \sans \fontsize #-1 h } \sVib s8 s4 s16 s16 \eVib
    \strDamp s8\startTextSpan s4 | 
    % Bar 6
    s4\stopTextSpan s2. |
    % Bar 7
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 8
    s4\stopTextSpan s2. |
    % Bar 9
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 10
    s4\stopTextSpan s2. |
    % Bar 11
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 12
    s4\stopTextSpan s2. |
    % Bar 13
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 14
    s4\stopTextSpan s2. |
    % Bar 15
    s2 s8 \strDamp s8\startTextSpan s4 |
    % Bar 16
    s4\stopTextSpan s2. |
    % Bar 17
    s1 |
    % Bar 18
    s2.. \strDamp s8\startTextSpan |
    % Bar 19
    s8 s8\stopTextSpan s2 s8 s8 |
    % Bar 20
    s2.. \strDamp s8\startTextSpan |
    % Bar 21
    s8 s8\stopTextSpan s2 s8 \strDamp s8\startTextSpan |
    % Bar 22
    s16\stopTextSpan s8. s2. |
    % Bar 23
    s1 |
    % Bar 24
    s2.. \strDamp s8\startTextSpan |
    % Bar 25
    s8 s8\stopTextSpan s2 s8 s8 |
    % Bar 26
    s2.. \strDamp s8\startTextSpan |
    % Bar 27
    s8 s8\stopTextSpan s2 s8 \strDamp s8\startTextSpan |
    % Bar 28
    s16\stopTextSpan


  }
  %% RH Fingering
  sixstr = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \partial 8
    s8\mkTweak #-0.7 #-4.3 ^\rhp \mkTweak #-0.7 #-3.5 ^\rhi \mkTweak
    #-0.7 #-3.6 ^\rhm \mkTweak #-0.7 #-3.6 ^\rha
    % Bar 1
    s4 s4 s8 s8\mkTweak
    #-0.3 #-6.3 ^\rhp \mkTweak #-0.35 #-3.5 ^\rhi \mkTweak #-0.35 #-3.5 ^\rhm s4 |
    % Bar 2
    s4 s2 s8 s8\mkTweak #-0.3 #-5.3 ^\rhp\mkTweak #-0.3 #-3.5
    ^\rhi \mkTweak #-0.3 #-3.5  ^\rhm \mkTweak #-0.3 #-3.5 ^\rha |
    % Bar 3
    s4 s4 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha s4 |
    % Bar 4
    s2 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp s8 s16\mkTweak #-0.3 #-7.0
    ^\rhp \mkTweak #-0.4 #-4.2 ^\rhi \mkTweak #-0.4 #-4.2 ^\rhm
    \mkTweak #-0.4 #-4.2 ^\rha \mkTweak #-0.5 #-6.7 \tweak Script
    #'font-size #-5 ^\rheel s16\mkTweak #-0.6 #-5.4 ^\rhp   |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s2 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp s8 s16\mkTweak #-0.3 #-7.0
    ^\rhp \mkTweak #-0.4 #-4.2 ^\rhi \mkTweak #-0.4 #-4.2 ^\rhm
    \mkTweak #-0.4 #-4.2 ^\rha \mkTweak #-0.5 #-6.7 \tweak Script
    #'font-size #-5 ^\rheel s16\mkTweak #-0.6 #-5.4 ^\rhp   |
    % Bar 9
    s2 s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm s4 |
    % Bar 10
    s2 s4 s8 s8 \mkTweak #-0.3 #-5.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi \mkTweak #-0.4 #-3.5
    ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 11
    s8\mkTweak #-0.3 #-4.3 ^\rhp s8 s4. s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi s4 |
    % Bar 12
    s1 |
    % Bar 13
    s1 |
    % Bar 14
    s1 |
    % Bar 15
    s1 |
    % Bar 16
    s4 s4 s4 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak #-0.4 #-4.5 ^\rhi
    \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha s8 |
    % Bar 17
    s8 s8\mkTweak #-0.5 #-0.3 ^\rha s4 s4\mkTweak #-0.8 #-1.3 ^\rhm
    s8\mkTweak #-0.3 #-2.3 ^\rhi s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak
    #-0.4 #-4.5 ^\rhi \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha |
    % Bar 18
    s2. s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 19
    s8 s8\mkTweak #-0.3 #-3.3 ^\rhi s2 s8 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak
    #-0.4 #-4.5 ^\rhi \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha |
    % Bar 20
    s1 |
    % Bar 21
    s2. s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 22
    s16 s16\mkTweak #-0.3 #-5.3 ^\rhp s8\mkTweak #-0.3 #-4.3 ^\rhp s4
    s4 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak #-0.4 #-4.5 ^\rhi
    \mkTweak #-0.4 #-4.5 ^\rhm s8 |
    % Bar 23
    s8\mkTweak #-0.3 #-1.3 ^\rha s8\mkTweak #-0.5 #-0.3 ^\rha s4
    s4\mkTweak #-0.8 #-1.3 ^\rhm s8\mkTweak #-0.3 #-2.3 ^\rhi
    s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak #-0.3 #-4.5 ^\rhi \mkTweak
    #-0.3 #-4.5 ^\rhm \mkTweak #-0.3 #-4.5 ^\rha |
    % Bar 24
    s2. s8 s8\mkTweak #-0.3 #-6.3 ^\rhp \mkTweak #-0.4 #-3.5 ^\rhi
    \mkTweak #-0.4 #-3.5 ^\rhm \mkTweak #-0.4 #-3.5 ^\rha |
    % Bar 25
    s8 s8\mkTweak #-0.3 #-3.3 ^\rhi s2 s8 s8\mkTweak #-0.3 #-5.3 ^\rhp \mkTweak
    #-0.4 #-4.5 ^\rhi \mkTweak #-0.4 #-4.5 ^\rhm \mkTweak #-0.4 #-4.5 ^\rha |
    % Bar 26
    s1 |


  }
  %% lhOne
  lhOne = {
    \textLengthOff
    \override TextScript #'outside-staff-priority = ##f
    \tabFullNotation
    \override TextSpanner #'outside-staff-priority = ##f
    \override Score.TrillSpanner #'outside-staff-priority = ##f
    \override TextSpanner #'extra-offset = #'(0 . 0.25)
    \override TabStaff.BreathingSign #'outside-staff-priority = ##f
    \override BreathingSign #'outside-staff-priority = ##f
    \override TextSpanner #'(bound-details left-broken text) = ##f 
    \override TextSpanner #'(bound-details right-broken text) = ##f 
    \partial 8
    s8
    % Bar 1
    \lhSpannerUp "1" {  s8 \bsMove #-3.2 #1 \leftBracketTwo s8 s4 s8 }
    s8 \lhSpannerUp "1" { \bsMove #0.5 #1 \leftBracketTwo s8 s8 |
    % Bar 2
    s4 s4 s4 s8 } s8  |
    % Bar 3
    s8 \tsMove #0 #1.25 \lhSpannerUp "1" { s8 s4 s8 } s8 s4 |
    % Bar 4
    s2 s8 \tsMove #0 #-10 \lhSpannerDown "1" { s8 s8 } s8 |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    \lhSpannerUp "1" {  s8 \bsMove #-3.0 #1 \leftBracketTwo s8 s4 s8 }
    s8  \tsMove #0 #1.25 \lhSpannerUp "1" {s8 s8 |
    % Bar 10
    s8 s8 s4 s4 s4} |
    % Bar 11
    s8 \tsMove #0 #1.25 \lhSpannerUp "1" { s8 s4 s8} s8 s4 |
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
    \trMove #1.0 #-0.0 \vibrato #'(0) #1.8 s8-\mkTweak #-0.8 #1.0
    ^\markup { \sans \fontsize #-8 "4/6 C VII" } \sVib s8 s4 s8 s8
    \eVib \tsMove #0 #0.25 \lhSpannerUp "1" { s4 |
    % Bar 18
    s8 s8 s4 s4 s8} s8 |
    % Bar 19
    \tsMove #0 #-12.0 \lhSpannerDown "1" { s8 s8 s4 s4 s8 } s8 |
    % Bar 20
    s1 |
    % Bar 21
    s1 |
    % Bar 22
    \tsMove #0 #0 \lhSpannerUp "1" { s8 s8 s4 s4 } s4 |
    % Bar 23
    \trMove #1.0 #-0.0 \vibrato #'(0) #1.8 s8-\mkTweak #-0.8 #1.0
    ^\markup { \sans \fontsize #-8 "4/6 C VII" } \sVib s8 s4 s8 s8
    \eVib \tsMove #0 #0.25 \lhSpannerUp "1" { s4 |
    % Bar 24
    s8 s8 s4 s4 s8 } s8 |
    % Bar 25
    \tsMove #0 #-12 \lhSpannerDown "1" { s8 s8 s4 s4 s8 } s8 |




  }
  %% lhTwo
  lhTwo = {
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
    \partial 8
    s8
    % Bar 1
    s1 |
    % Bar 2
    \tsMove #0.75 #-10 \lhSpannerDown "2" { s4 s4 s4 s8} s8 |
    % Bar 3
    s1 |
    % Bar 4
    \tsMove #0.5 #-10 \lhSpannerDown "2" { s2 s8 } s8 s8 s8 |
    % Bar 5
    s1 |
    % Bar 6
    s1 |
    % Bar 7
    s1 |
    % Bar 8
    s1 |
    % Bar 9
    s2 s4. \tsMove #0 #-9.5 \lhSpannerDown "2" { s8 |
    % Bar 10
    s4 s4 s4 s4 } 
    % Bar 11
    s2 s4 s8 \tsMove #0 #-10 \lhSpannerDown "2" {s8 |
    % Bar 12
    s4 s4 s4 s4} |
    % Bar 13
    s1 |
    % Bar 14
    s1 |
    % Bar 15
    s1 |
    % Bar 16
    s4 s4 s4 s8 \tsMove #0 #-10 \lhSpannerDown "2" { s8 |
    % Bar 17
    s4 s4 s4} s4 |
    % Bar 18
    s1 |
    % Bar 19
    s8 \tsMove #0 #-10 \lhSpannerDown "2" { s8 s4 s4 s8 } s8 |
    % Bar 20
    s1 |
    % Bar 21
    s8  s8 s4 s4 s8 s8 |
    % Bar 22
    \tsMove #0 #-11 \lhSpannerDown "2" { s4 \bsMove #-8.85 #-2
    \leftBracketThree s4 s4 } s8 \tsMove #0 #-9.7 \lhSpannerDown "2"
    {s8  |
    % Bar 23
    s4 s4 s4} s4 |
    % Bar 24
    \tsMove #0 #-10 \lhSpannerDown "2" { s8 s8 s4 s4 s8} s8 |
    % Bar 25
    s8 \tsMove #0 #-10 \lhSpannerDown "2" { s8 s4 s4 s8 } s8 |



  }
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
    \partial 8
    s8
    % Bar 1
    s2 s8 \tsMove #0 #1.25 \lhSpannerUp "3" {s8 s4 |
    % Bar 2
    s2 s4 s8 } s8 |
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
    \tsMove #0 #-11 \lhSpannerDown "3" {s4 s4 s4 s8} s8 |
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
    \tsMove #0 #-9 \lhSpannerDown "2" { s8 s8 s4 s4 s8 } \tsMove #0
    #0 \lhSpannerUp "3" {s8 |
    % Bar 19
    s8 s8 s4 s4 s8}  s8 |
    % Bar 20
    s1 |
    % Bar 21
    s4 s4 s4 s8 \tsMove #0 #1.25 \lhSpannerUp "3" {s8 |
    % Bar 22
    s8 s8 s4 s4} s4 |
    % bar 23
    s1 |
    % Bar 24
    s4 s4 s4 s8 \tsMove #0 #0 \lhSpannerUp "3" {s8 |
    % Bar 25
    s4 s4 s4 s8} s8 |


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
        >>
        \new TabStaff = "guitar tab" 
        <<
          \clef "moderntabII"
          \set Staff.stringTunings = \stringTuning < d, a, d g a d'>
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
          \override TimeSignature #'space-alist #'first-note = #'(extra-space .
          4.9) }
          \context {
            \TabStaff
            \override Clef #'stencil = #clef::print-modern-custom-tab-if-set
          }
        }
        \midi {}


      }
    }
