\version "2.22.1"
\include "english.ly"
\header {
  title = "Seven"
  subtitle = "Composition - 10"
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
    e8\5[ g b] e'[ b g] |
    d8\5[ g b] e'[ b g] |
    c8[ g b] e'[ b g] |
    r8 c4. d4\5 |

    e8\5[ g b] \tuplet 4/3 { e' f-sharp'\2 e'\2 b } |
    d8\5[ g e'] e'\2[ d' b] |
    c8[ g e'] d'[ c' b\laissezVibrer] |
    r4 c'8[ b\laissezVibrer] d4\5 |

    e8\5[ g b] e'[ b g] |
    d8\5[ g b] e'[ b g] |
    c8[ g b] e'[ b g] |
    r8 c4. d4\5 |

    e8\5[ g b] \tuplet 4/3 { e' b' a' e'} |
    d8\5[ g b] a'8[ g' e'] |
    c8[ g b] g'8[ f' e'\laissezVibrer] |
    r4 f'8[ e'\laissezVibrer] d4\5 |

    e8\5[ g b] e'[ b g] |
    d8\5[ g b] e'[ b g] |
    c8[ g b] e'[ b g] |

    c8[ g d'] e'[ d' g] |
}

main = {
    \arpeggioArrowDown<c'\4 f'\3 a'\2 d''>2.\arpeggio |
    c''4 b'2 |
    \arpeggioArrowDown<g\4 c'\3 e'\2 a'>2.\arpeggio |
    g'4 f'2 |
    \arpeggioArrowDown<d a d' f'>4.\arpeggio e'8[ d' c'] |
    \arpeggioArrowDown<f a c' e'>4.\arpeggio b 8[ a g] |
    \arpeggioArrowDown<f, c f a>4.\arpeggio g-sharp8[ f d] |

    \arpeggioArrowDown<c'\4 f'\3 a'\2 d''>2.\arpeggio |
    c''4 b'2 |
    \arpeggioArrowDown<g\4 c'\3 e'\2 a'>2.\arpeggio |
    g'4 f'2 |
    \arpeggioArrowDown<d a d' f'>4.\arpeggio e'8[ d' c'] |
    \arpeggioArrowDown<f a c' e'>4.\arpeggio b 8[ a g] |
    \arpeggioArrowDown<f, c f a>4.\arpeggio g-sharp8[ f d] |

    \arpeggioArrowDown<c e g c' e'>2.
}

outro = {
    \arpeggioArrowDown<d a d' f'>4.\arpeggio e'8[ d' c'] |
    \arpeggioArrowDown<f a c' e'>4.\arpeggio b 8[ a g] |
    \arpeggioArrowDown<f, c f a>4.\arpeggio g-sharp8[ f d] |
    \arpeggioArrowDown<c e g c' e'>2.

    e8\5[ g b] e'[ b g] |
    d8\5[ g b] e'[ b g] |
    c8[ g b] e'[ b g] |
    c8[ g d'] e'[ d' g] |
    \arpeggioArrowDown<c e g c' e'>2.

    e8\5[ g b] e'[ b g] |
    d8\5[ g b] e'[ b g] |
    c8[ g b] e'[ b g] |
    c8[ g d'] e'[ d' g] |
    \arpeggioArrowDown<e, g\4 b\3 e'\2>2.\arpeggio |
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
