\version "2.14.2"

\pointAndClickOff


myLO = \layout { 
        line-width = 50
        indent = 0\mm
} 

\book {
% \score {
%    \new Staff  { R1 }
%    \header { piece = "Piece NULL" opus = "TACET." }
%    \layout {
%            \context {
%                    \RemoveEmptyStaffContext
%                    \override VerticalAxisGroup #'remove-first = ##t
%            }
%    }
% }
   \markup {
           \fill-line {
               \null
       \column { 
               \score { 
                       { \mark "Part 1" a'1 } 
                       \layout { \myLO }
                       % this header doesn't work
                       \header {
                           piece = "part 1"
                           opus = "xy"
                       } 
               }
       }
       \null 
       \column { 
               \score { 
                   { \mark "Part 3" c''1 } 
                   \layout { \myLO } 
               } 
       }
       \null
           }
   }
}