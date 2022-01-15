\version "2.22.1"
\include "english.ly"
\header {
  title = "Close"
  subtitle = "Composition - 9"
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
    \arpeggioArrowDown<c\6 g g'\2 e'>2.\arpeggio |
    \arpeggioArrowDown<g, g d' e'>2.\arpeggio |
    \arpeggioArrowDown<a, g c' f'>2.\arpeggio |
    \arpeggioArrowDown<f, g c' e'>2.\arpeggio |

    c8\6[ g g'\2] c8\6[ e' g'\2] |
    g,8[ g d'] g,8[ e' d'] |
    a,8[ g c'] a,8[ f' c'] |
    f,8[ g c'] f,8[ e' c'] |

    c8\6[ g g'\2] c8\6[ c'' g'\2] |
    g,8[ g d'] g,8[ g' d'] |
    a,8[ g c'] a,8[ f' c'] |
    f,8[ g c'] f,8[ e' c'] |

    c8\6[ g g'\2] c8\6[ b' g'\2] |
    g,8[ g d'] g,8[ f-sharp' d'] |
    a,8[ g c'] a,8[ e' c'] |
    f,8[ g c'] f,8[ g' c'] |

    c8\6[ g g'\2] c8\6[ d'' g'\2] |
    g,8[ g d'] g,8[ a' d'] |
    a,8[ g c'] a,8[ g' c'] |
    f,8[ g c'] f,8[ e' c'] |
}

main = {
    c8\6[ g g'\2] c''4 b'16[ a'] |
    g,8[ g d'] g'4 f'16[ e'] |
    a,8[ g c'] f'4 e'16[ d'] |
    \arpeggioArrowDown<f, g c' e'>2.\arpeggio |

    c8\6[ g g'\2] c''4 d''16[ a'] |
    g,8[ g d'] g'4 a'16[ e'] |
    a,8[ g c'] f'4 e'16[ d'] |
    \arpeggioArrowDown<f, g c' e'>2.\arpeggio |

    c8\6[ g g'\2] e''4 d''16[ c''] |
    g,8[ g d'] c''4 b'16[ a'] |
    a,8[ g c'] g'4 f'16[ e'] |
    \arpeggioArrowDown<f, g c' e'>2.\arpeggio |

    c8\6[ g g'\2] c''4 e''16[ d''] |
    g,8[ g d'] g'4 b'16[ a'] |
    a,8[ g c'] f'4 a'16[ g'] |
    \arpeggioArrowDown<f, g c' e'>2.\arpeggio |

    c8\6[ g g'\2] c''4 b'16[ a'] |
    g,8[ g d'] g'4 f'16[ e'] |
    a,8[ g c'] f'4 e'16[ d'] |
    \arpeggioArrowDown<f, g c' e'>2.\arpeggio |

    \arpeggioArrowDown<c\6 b\4 d'\3 g'\2>2.\arpeggio |
    \arpeggioArrowDown<g, f-sharp a d'>2.\arpeggio |
    \arpeggioArrowDown<a, c'\3 e'\2 b'>2.\arpeggio |
    \arpeggioArrowDown<f a c' g'>2.\arpeggio |
}

outro = {
    \arpeggioArrowDown<c\6 g g'\2 e'>2.\arpeggio |
    \arpeggioArrowDown<g, g d' e'>2.\arpeggio |
    \arpeggioArrowDown<a, g c' f'>2.\arpeggio |
    \arpeggioArrowDown<f, g c' e'>2.\arpeggio |
    
    \arpeggioArrowDown<c\6 b\4 d'\3 g'\2>2.\arpeggio |
    \arpeggioArrowDown<g, f-sharp a d'>2.\arpeggio |
    \arpeggioArrowDown<a, c'\3 e'\2 b'>2.\arpeggio |
    \arpeggioArrowDown<f, c f a>\arpeggio |
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
