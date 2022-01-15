\version "2.22.1"
\include "english.ly"
\header {
  title = ""
  subtitle = "Composition - 11"
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

timeSign = 3/4
harmTwelve = \harmonic -\markup { \center-align \abs-fontsize #8 { harm. 12 }}
harmSeven = \harmonic -\markup { \center-align \abs-fontsize #8 { harm. 7 }}

rallentendo = -\markup { \abs-fontsize #10 { rallentendo }}

intro = {
}

main = {
}

outro = {
}

full_part = {
    \repeat volta 2 {
      \intro
    }
    \alternative {
      { \main }
      { \outro }
    }
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
