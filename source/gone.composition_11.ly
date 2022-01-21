\version "2.22.1"
\include "english.ly"
\header {
  title = "Gone"
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
    d8[ a d'] f-sharp'8[ d' a] |
    g'8[ d' a] f-sharp'4. |

    g,8[ g b] e'8[ b g] |
    f-sharp'8[ b g] e'4. |

    d8[ a c-sharp'] f-sharp'8[ c-sharp' a] |
    g'8[ c-sharp' a] f-sharp'4. |

    g,8[ g b] g'8[ b g] |
    a'8[ b g] f-sharp'4. |

    d8[ a d'] a'8[ d' a] |
    g'8[ d' a] \arpeggioArrowDown<d a d' f-sharp'>4. |
    r4. b8[ d' e'] |
}

bridge = {
    <d f-sharp'>8[ d' a] f-sharp'16([ g') f-sharp'8 f-sharp'] |
    g,8[ d g b] d'4 |
    <d a'>8[ c-sharp' a] f-sharp'16([ a') e'8 f-sharp'] |
    <b\3 g'>4 <c-sharp'\3 a'>4 b'4 |
    <g d''>4 c-sharp''16[ b' a'8] e'4 |
    <c-sharp'\3 a'>4 <b\3 g'>4 e'4 |
    \arpeggioArrowDown<d a d' f-sharp'>2.\arpeggio |
}

part_one = {
    <d~ e'(>16[ <d f-sharp')> d'8 a] g'8[ f-sharp' e'] |
    g,8[ d g b] d'4|
  
    <d f-sharp'>8[ c-sharp' a] g'8[ f-sharp' e'] |
    g,8[ d g b] f-sharp'4 |
  
    <d a'>8[ c-sharp' a] g'8[ a' f-sharp'] |
    g,8[ d g b] g'4 |

    a,8[ e c-sharp' e'] f-sharp'4 |
    g,8[ g b f-sharp'] g'4 |
    g,8[ d g] b8[ d' e'] |



    <d~ e'(>16[ <d f-sharp')> d'8 a] g'8[ a' e'] |
    g,8[ d g b] d'4|
  
    <d f-sharp'>8[ c-sharp' a] f-sharp'16[ g' f-sharp'8 e'] |
    g,8[ d g b] f-sharp'4 |
  
    <d a'>8[ c-sharp' a] f-sharp'16[ a' f-sharp'8 e'] |
    g,8[ d g b] g'4 |

    g,8[ g b f-sharp'] e'4 |
    a,8[ e c-sharp' e'] d''4 |
    r4. b8[ d' e'] |
}

outro = {
    \intro
}

full_part = {
    \repeat volta 2 {
      \intro
    }
    \alternative {
      { \part_one \bridge }
      { \bridge }
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
