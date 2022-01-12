\version "2.22.1"
\include "english.ly"
\header {
  title = ""
  subtitle = "Accompaniement - 1"
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
harmTwelveMarkup = \harmonic -\markup { \center-align \abs-fontsize #8 { harm .12 }}
harmSevenMarkup = \harmonic -\markup { \center-align \abs-fontsize #8 { harm .7 }}

rallentendo = -\markup { \abs-fontsize #10 { rallentendo }}

full_part = {
    e8_>\5[ g b] e'[ b g] |
    d8_>\5[ g b] e'[ b g] |
    c8_>[ g b] e'[ b g] |
    r4 d2_>\5 |
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
