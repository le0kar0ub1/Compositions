\version "2.22.1"
\include "english.ly"
\header {
  title = "Exhausted"
  subtitle = "Composition - 7"
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
    <a, c'>1 |
    <d f'>1 |
    <g, b>1 |
    <g, e'>1 |
    <f, a>1 |

    <a,\laissezVibrer c'>4 c'2. |
    <d\laissezVibrer f'>4 f'2. |
    <g,\laissezVibrer b>4 b2. |
    <g,\laissezVibrer e'>4 b2. |
    <f, c'>1 |

    <a,\laissezVibrer c'>4 c'2 e'4 |
    <d\laissezVibrer f'>4 f'2 g'4 |
    <g,\laissezVibrer b>4 b2. |
    <g,\laissezVibrer e'>4 b2. |
    <f c'>1 |

    <a,\laissezVibrer c'>4 c'2 d'8[ e'\2] |
    <d\laissezVibrer f'>4 f'2 g'8[ a'] |
    <g,\laissezVibrer b>4 b2. |
    <g,\laissezVibrer e'>4 b2. |
    \arpeggioArrowDown<f, c f a>1\arpeggio |
}

bridge = {
    a,8[ e a] c'8[ a e] a,8[ e] |
    a8[ c' d' e'] d8[ a d' f'] |
    d'8[ a] d8[ a d'] e'8[ f' g'] |
    g,8[ g d'] g'8[ d' g] g,8[ g] |
    d'4 g'4 \glissando a'4 b'4 |
    <a, e'\3 c''>2 <d\5 f'\2 a'>2 |
    <g\4 b'>2 <g, g e'>2 |
    <f, a>1 |
}

inner = {
    \arpeggioArrowDown<a,\6 e\5 a\4 c'\3 e'\2 a'>2\arpeggio a,8\6[ e\5 a\4 c'\3] |
    a8\4[ b\4 c'\3 d'\3] \arpeggioArrowDown<d\5 a\4 d'\3 f'\2 a'>2\arpeggio |
    d8\5[ a\4 d'\3 f'\2] d'8\3[ e'\3 f'\2 g'\2] |
    \arpeggioArrowDown<f c'\3 f'\2 a'>2\arpeggio f8[ c'\3 f'\2 a'] |
    <g b'(>8[ <d a')>] <f, g'>4 <d f'>4 <a, e'>4  |

    \arpeggioArrowDown<a,\6 e\5 a\4 c'\3 e'\2 a'>2\arpeggio a,8\6[ e\5 a\4 c'\3] |
    a8\4[ b\4 c'\3 d'\3] \arpeggioArrowDown<d\5 a\4 d'\3 f'\2 a'>2\arpeggio |
    d8\5[ a\4 d'\3 f'\2] d'8\3[ e'\3 f'\2 g'\2] |
    \arpeggioArrowDown<f c'\3 f'\2 a'>2\arpeggio f8[ c'\3 f'\2 a'] |

    f'8[ \glissando g'] a'4 \arpeggioArrowDown<g\4 d'\3 g'\2 b'>2\arpeggio |
}

outro = {
    <a,\laissezVibrer c'>4 c'2 d'8[ e'\2] |
    <d\laissezVibrer f'>4 f'2 g'8[ a'] |
    <g,\laissezVibrer b>4 b2. |
    <g,\laissezVibrer e'>4 b2. |
    <f c'>1 |

    <a,\laissezVibrer c'>4 c'2 e'4 |
    <d\laissezVibrer f'>4 f'2 g'4 |
    <g,\laissezVibrer b>4 b2. |
    <g,\laissezVibrer e'>4 b2. |
    <f, c'>1 |

    <a,\laissezVibrer c'>4 c'2. |
    <d\laissezVibrer f'>4 f'2. |
    <g,\laissezVibrer b>4 b2. |
    <g,\laissezVibrer e'>4 b2. |
    <f, a>1 |

    <a, c'>1 |
    <d f'>1 |
    <g, b>1 |
    <g, e'>1 |
    \arpeggioArrowDown<f, c f a>1\arpeggio |
}

outro_end = {
  <f,~ g(>8 <a) f,>4. b2\3 |
  <a, c'\3>1 |
  <d b\3>1 |
  <a, c'\3>1 |
}

full_part = {
    \intro
    \bridge
    \inner
    % \bridge
    \outro
    \bridge
    \outro_end
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
