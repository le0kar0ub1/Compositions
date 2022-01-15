\version "2.22.1"
\include "english.ly"
\header {
  title = "Last sigh"
  subtitle = "Composition - 4"
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

chorus = {
  d''8[ <b\4 d''> b'\2 f-sharp'\3] d''8[ <b\4 e''> g-sharp'\2 e'\3] |
  e''8[ <c-sharp'\4 f-sharp''> a-sharp'\2 f-sharp'\3 c-sharp'\4] <b e'>4.\harmTwelveMarkup |

  e'8[ <e' f> c' a] e'8[ <f-sharp' d> d' b\3]  |
  f-sharp'8[ <e e'> c' a] e'8[ <g, d'> g d] |
  e'8[ <c c'> g e] e'[ <g, b> g d] |
  e'8[ <d f-sharp'> d' a] f-sharp'8[ <g\4 b'> e'\2 c'\3] |
  b'8[ <g\4 c''> e'\2 c'\3] 

  d''8[ <b\4 d''> b'\2 f-sharp'\3] d''8[ <b\4 e''> g-sharp'\2 e'\3]
  e''8[ <c-sharp'\4 f-sharp''> a-sharp'\2 f-sharp'\3] | 
  c-sharp'8\4 <g b>4.\harmSevenMarkup e'8[ <e' f> c' a] |
  e'8[ <f-sharp' d> d' b\3] <e' b>2\harmTwelveMarkup
}

bridge = {
  <f a'>2. b'4 |
  <a, e'\3 c''>2. d''4 |
  <e, b\4 g'\2>2. e''4 |
  <g\4 b'>2. g'4 |
  <f a'>2. b'4 |
  <a, e'\3 c''>2. d''4 |
  <e, b\4 g'\2>2. e''4 |
  <g\4 b'>2. a'4 |
}

full_part = {
    \chorus
    \bridge
    \chorus
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
