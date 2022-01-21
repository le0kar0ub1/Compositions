\version "2.22.1"
\include "english.ly"
\header {
  title = "Accidental"
  subtitle = "Composition - 8"
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

intro = {
    <e, b\4 g'\2>2. |
    <d b\3 f-sharp'\2>2. |
    <c g e'>2. |
    <g, d b>2. |
}

chorus = {
    e,8[ b\4 g'\2] e,8[ b\4 g'\2] |
    a'8\2[ b'\2 g'\2] <d b\3 f-sharp'\2>4. |
    d8[ b\3 f-sharp'\2] d8[ b\3 f-sharp'\2] |
    g'8\2[ a'\2 f-sharp'\2] <c g e'>4.|
    c8[ g e'] c8[ g e'] |
    d'[ c' b] <g, d b>4. |

    g,8[ d b] g,8[ d b(] |
    d'8)[ e'\2 f-sharp'\2] <e, b\4 g'\2>4. |
    
    e,8[ b\4 g'\2] e,8[ b\4 g'\2] |
    a'8\2[ g'\2 e'\2] <d b\3 f-sharp'\2>4. |
    d8[ b\3 f-sharp'\2] d8[ b\3 f-sharp'\2] |
    g'8\2[ e'\2 d'] <c g e'>4.|
    c8[ g e'] c8[ g e'] |
    d'[ e' b] <g, d b>4. |

    g,8[ d b] g,8[ d b(] |
    e'8\2)[ f-sharp'\2 a'\2] <e, b\4 g'\2>4. |

    e,8[ b\4 g'\2] e,8[ b\4 g'\2] |
    b\harmTwelveMarkup[ a'8\2 g'\2] <d b\3 f-sharp'\2>4. |
    d8[ b\3 f-sharp'\2] d8[ b\3 f-sharp'\2] |
    a'8\2[ g'\2 e'\2] <e, b\4 g'\2>4. |
    e,8[ b\4 g'\2] e,8[ b\4 g'\2] |
    b\harmTwelveMarkup[ g'\2 e'\2] <d b\3 f-sharp'\2>4. |
    d8[ b\3 f-sharp'\2] d8[ b\3 f-sharp'\2] |
    a'8\2[ e'\2 d'\2] <c g e'>4.|
    c8[ g e'] c8[ g e'] |
    d'4 c'4 b4 |
}

bridge = {
    <e e'>4 f-sharp'4 <d g'>4 |
    a'4 <g, b'>4 a'4 |
    <a, c''>4 e'4\harmTwelveMarkup <b\4 f-sharp'\3 d''>4 |
    b'4 <a, e'\3 c''>4 d''4 |
    e''4 <g\4 b'>4 c''4 |
    g'4 <d a'>4 g'4 |
    f-sharp'4 <e, e'>2 |
}

outro = {
    \intro
    \deadNote <e, a d g b e'>4 -\markup { \center-align \abs-fontsize #12 { mute }} r2  |
    e,4 \tuplet 3/2 { g4\harmTwelveMarkup b4\harmTwelveMarkup e'4\harmTwelveMarkup } |
}

full_part = {
    \repeat volta 2 {
      \intro
      \chorus
    }
    \alternative {
      { \bridge }
      { \outro  }
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
