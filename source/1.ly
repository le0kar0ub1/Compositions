\version "2.22.1"
\include "english.ly"
\header {
  title = "Composition - 1"
  subtitle = ""
  instrument = "Acoustic guitar"
  meter = "Tuning: EADGBE"
  arranger = "Leo Karoubi"
  % composer = "Leo Karoubi"
}

\layout { indent = 0.0\cm }
\markup { \vspace #1 }

chorus = {
  \time 5/4
  <c c'> e b8([ c') g] b8([ c') g] |
  b([ c') g] 
}

verse = {

}

full_part = {
  \chorus
  % \verse
  % \chorus
}

\score {
  \header {
    piece = "Capo fret. 5"
  }
  <<
  % \new Staff {
  %   \relative c {
  %     \clef "G"
  %     \full_part
  %   }
  % }
  \new TabStaff {
    \set TabStaff.minimumFret = #0
    \tabFullNotation
    \full_part
  }
  >>
}
