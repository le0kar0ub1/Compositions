\version "2.22.1"
\include "english.ly"
\header {
  title = "Broken - part 2"
  subtitle = "Composition - 6"
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
harmTwelveMarkup = -\markup { \center-align \abs-fontsize #8 { harm .12 }}
harmSevenMarkup = -\markup { \center-align \abs-fontsize #8 { harm .7 }}

rallentendo = -\markup { \abs-fontsize #10 { rallentendo }}

intro = {
    <b, d'>2 <a, c-sharp'>2
    <g, b>2 b8\3[ c-sharp'] d'4

    <b, d'>2 e'4 <a, c-sharp'>2 e'4
    <g, b>2 b8\3[ c-sharp'] d'4

    <b, d'>2 d'4 e'4 <a, c-sharp'>2 c-sharp'4 e'4
    <g, b>2 b4 <g, b>2 b4 b8\3[ c-sharp'] d'4

    <b, d'>2 d'4 e'4\2 <a, c-sharp'>2 c-sharp'4 e'4\2
    <g, b>2 b4 <g, b>2 b4 b8\3[ c-sharp'] d'4

    <b, d'>2 d'4 e'4\3 <a, c-sharp'>2 c-sharp'4 e'4\3
    <g, b>2 b4 <g, b>2 b4 b8\4[ c-sharp'\3] d'4\3
}

main = {
}

outro = {
}

full_part = {
    \intro
    \main
    \outro
}

\score {
    <<
    \new Staff {
        \clef "G"
        \time \timeSign
        \full_part
    }
    \new TabStaff {
        \set TabStaff.minimumFret = #0
        \time \timeSign
        \tabFullNotation
        \full_part
    }
    >>
}
