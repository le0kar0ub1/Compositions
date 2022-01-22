\version "2.22.1"
\include "english.ly"
\header {
  title = "Broken"
  subtitle = "Composition - 5"
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
harmTwelveMarkup = -\markup { \center-align \abs-fontsize #8 { harm .12 }}
harmSevenMarkup = -\markup { \center-align \abs-fontsize #8 { harm .7 }}

rallentendo = -\markup { \abs-fontsize #10 { rallentendo }}

intro_first = {
  b,8[ e g] b8[ g e] |
  d'[ g e] b4. |
  g,8[ d g] b8[ g d] |
  b8[ a d] d'4. |
  c8[ e g]  c'8[ g e] |
  d'8[ g e] b4. |
  e,8[ e g] e'8[ b g] |
  g'8[ b g] a'4. |
  g,8[ d g] b8[ g d] |
  b8[ a d] g4. |
}

intro_second = {
  c8[ g b] e'8[ b g] |
  c8[ g b] g'8[ b g] |
  f8[ a c'] e'8[ c' a] |
  f8[ a c'] g'8[ c' a] |
  c8[ g b] e'8[ b g] |
  c8[ g b] g'8[ b g] |
  f8[ a c'] e'8[ c' a] |
  f8[ a c'] g'8[ c' a] |
}

intro = {
  \intro_first
  \intro_second
}

chorus = {
  c8[ g b] e'8[ b g] |
  c8[ g b] g'8[ f' e'] |
  f8[ a c'] e'8[ c' a] |
  f8[ a c'] g'8[ f' e'] |
  c8[ g b] e'8[ b g] |
  c8[ g e'] d'8[ c' b] |
  f8[ a c'] e'8[ c' a] |
  f8[ a e'] d'8[ c' b] |
  c8[ g b] e'8[ b g] |
  c8[ g b] g'8[ f' e'] |
  f8[ a c'] e'8[ c' a] |
  f8[ a c'] g'8[ f' e'] |
}

verse = {
  d8[ a c'] f'8[ c' a] |
  d8[ a c'] f'8[ g' a'] |
  d8[ g b] g'[ b g] |
  d8[ g b] e'[ b g] |
  g'8[ a' b'] g8\4[ c'\3 e'\2] |
  a'8[ e'\2 c'\3]  g8\4[ c'\3 e'\2] |
  a'8[ b' c''] d8[ g b] |
  b'8[ b g] d8[ g b] |
  b'8[ d'' e''] ^\rallentendo \> d8[ g b] |
  d''4 g8[ b] e''4 |
  d''4 b8[ g] d4 \! |
  d8[ a c'] f'8[ c' a] |
  d8[ a c'] f'8[ g' a'] |
  d8[ g b] g'[ b g] |
  d8[ g b] g'8\glissando[ a' b'] |
}

bridge = {
  <a, e'\3 c''>2. |
  <b' g\4>2. |
  <f a c' g'>2.\arpeggio |
  <f, c f a>2.\arpeggio |
}

outro = {
  b,8[ e g] b8[ g e] |
  d'[ g e] b4. |
  g,8[ d g] b8[ g d] |
  b8[ a d] d'4. |
  c8[ e g]  c'8[ g e] |
  d'8[ g e] b4. |
  e,8[ e g] e'8[ b g] |
  g'8[ b g] a'4. |
  g,8[ d g] b8[ g d] |
  b8[ a d] b8 g4 | % ~
  % g4 r4 g'4\glissando a'4 b'2 |
  % \bridge
}

full_part = {
    \intro
    \chorus
    \verse
    \bridge
    \chorus
    \bridge
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
