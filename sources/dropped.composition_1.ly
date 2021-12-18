\version "2.22.1"
\include "english.ly"
\header {
  title = "Dropped"
  subtitle = "Composition - 1"
  instrument = "Acoustic guitar"
  meter = "Tuning: EADGBE"
  arranger = "Leo Karoubi"
  % composer = "Leo Karoubi"
}

\layout { 
  indent = 0.0\cm 
  #(layout-set-staff-size 21)
  \context {
    \Score
    \override Glissando.thickness = #3
    \override Glissando.style = #'trill
    \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
  }
}
\markup { 
  \vspace #1
}

timeSign = 4/4
harmTwelveMarkup = \fermata-\markup { \center-align \abs-fontsize #8 { harm. 12 }}

chorus = {
  <c c'>8 e b8([ c') g] b8([ c') g] |
  <g, d'>8 d b8([ d') a] b8( c'4) | 
  <a, c'>8 e b8([ c') a] b8([ c') d'~] |
  d'2 <d f-sharp'>4 a4 | 
  e'8([ f-sharp') c'] e'8([ f-sharp') c'] a'4 |
  <g, a'>8 d g d <g d'>4 b'4 |
  <g, b'>8 d g d <g e'\2>4  c-sharp''4 |
  <d c-sharp''>8 d'\3 f-sharp'\2 d'\3  <g\harmonic b\harmonic>2\harmTwelveMarkup
}

verse = {
  <g, g b>8[ d] g8[(a()g)] c'8[b <d a>] |
  <a, c' a>8[ d] b8[(c'()b)] a8[b <e g>] |
  <f-sharp, a>8[ a, d a,] <b, f-sharp>2 |
  <g, d'>8[ d] g8[(a()g) d' b <a, f-sharp>~] |
  <a, f-sharp> <f-sharp, a>8[ a, d a,] <e,\harmonic>2\harmTwelveMarkup
  <g, g b>8[ d] g8[(a()g)] c'8[ e'] |
  <a, c' a>8[ d] b8[(c'()b)] a8[c'] g' |
  <g, d'>8[ d] g8[(a()g) d' e'\2 b] |
  <f, g'>8[ d <g c'> d] <g b>2

}

outro = {
  g,8[ d g d' g' d' g d g,] 
  \arpeggioArrowDown<d g d' g'>1\arpeggio\fermata
}


full_part = {
  \time \timeSign
  \chorus
  \verse
  \chorus
  \outro
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
