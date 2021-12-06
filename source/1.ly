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
  \time 4/4
  <c c'>8 e b8([ c') g] b8([ c') g] |
  <g, d'>8 d b8([ d') a] b8([ c') r] |
  <a, c'>8 e b8([ c') a] b8([ c') d'~] |
  d'2 <d f-sharp'>4 a4 | 
  \break
  e'8([ f-sharp') c'] e'8([ f-sharp') c'] a'4 |
  <g, a'>8 d g d <g d'>4 b'4 |
  <g, b'>8 d g d <g e'\2>4  c-sharp''4 |
  <d c-sharp''>8 d'\3 f-sharp'\2 d'\3  <g\harmonic b\harmonic>2-"harm. 12"
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
  \new Staff {
    \clef "G"
    \full_part
  }
  \new TabStaff {
    \set TabStaff.minimumFret = #0
    \tabFullNotation
    \full_part
  }
  >>
}
