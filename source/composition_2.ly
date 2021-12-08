\version "2.22.1"
\include "english.ly"
\header {
  title = "Composition - 2"
  subtitle = ""
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
harmTwelveMarkup = -\markup { \center-align \abs-fontsize #8 { 12 }}
harmSevenMarkup = -\markup { \center-align \abs-fontsize #8 { 7 }}

intro = {
    <c e'>4 e8[ g c'] e'8([g'()e')] |
    <g, g'>8 d8[ g d] g'[ \glissando a' g' e'] |
    <c e'>4 e8[ g e] e'8([f'()e')] |
    <g, d'>8 d8[ g d]  d'8[\glissando e'\2 g' b] |
    <a, c'>8 e8[a e]  c'8[\glissando d' c' b] |
    <f-sharp, a>8 a,8[d a,] a8[\glissando b\3 a g] |
}

chorus = {
    <g, d g>4 d8[ g(a()g)] c'[ b]
    <g, g d'>4 d8[ b(d') e'\2] d'([ b)] |
    <g, b>4 d8[ b(c'()b)] a8[ b] |
    <g, b>4 d8[ b(c'()b)] a8([ g)] |
}

verse = {
}

outro = {
    <c e'>4 e8[ g c'] e'8([f'()e')] |
    <g, d'>8\fermata d8[ a d]  d'8[\glissando e'\2 g' b] |
    <a, c'>8\fermata e8[a e]  c'8[\glissando d' c' b] |
    <f-sharp, a>8\fermata a,8[d a,] a8[\glissando b\3 a g] |
    d8\harmonic\harmSevenMarkup[ b\harmonic\harmTwelveMarkup g\harmonic\harmSevenMarkup  g\harmonic\harmTwelveMarkup]
}

full_part = {
    % \intro
    \chorus
    % \outro
}

\score {
    <<
    \new Staff {
        \clef "G"
        \time \timeSign
        \tempo 4 = 60
        \full_part
    }
    \new TabStaff {
        \set TabStaff.minimumFret = #0
        \tempo 4 = 60
        \time \timeSign
        \tabFullNotation
        \full_part
    }
    >>
}
