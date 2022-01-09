\version "2.22.1"
\include "english.ly"
\header {
  title = "Fallen"
  subtitle = "Composition - 6"
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
    <b, d'>1 |
    <a, c-sharp'>1 |
    <g, b>1 |
    
    <b, d'>2. e'4 |
    <a, c-sharp'>2. e'4 |
    <g, b>2 b8\3[ c-sharp'] d'4 |

    <b, d'>2 d'4 e'4 |
    <a, c-sharp'>2 c-sharp'4 e'4 |
    <g, b>2 b2 |
    <g, b>2 b2 |
    
    b8\3[ c-sharp'] d'4 <b, d'>2 |
    d'4 e'4\2 <a, c-sharp'>2 |
    c-sharp'4 e'4\2 <g, b>2 |
    b4 <g, b>2 b4 |

    b8\3[ c-sharp'] d'4 <b, d'>2 |
    d'4 e'4 <a, c-sharp'>2 |
    c-sharp'4 e'4 <g, b>2 |
    b4 <g, b>2 b4 |
}

main = {
    b'8[ c-sharp''] d''4 <b\4 d''>2 |
    d''4 e''4 <a\4 c-sharp''>4 c-sharp''4 |
    d''4 <g\4 b'>2 b'4 |
    <g\4 b'>2 b'4 b'8[ c-sharp''] |
    d''4 <b\4 d''>2 d''4 |
    e''8[ f-sharp''16 e''] <a\4 c-sharp''>4 c-sharp''4 d''8[ e''16 d''] |
    <g\4 b'>2 b'2 |
    <g\4 b'>2 b'2 |

    b'8[ c-sharp''] d''4 <b\4 d''>2 |
    d''4 e''8[ f-sharp''] d''4 <a\4 c-sharp''>4~ |
    <a\4 c-sharp''>4 c-sharp''4 d''8[ e''] c-sharp''4 |
    <g\4 b'>2 b'2 |
    <g\4 b'>2 b'2 |
    
    b'8[ c-sharp''] d''4 <b\4 d''>2 |
    d''4 e''8[ f-sharp''] b'4 <a\4 c-sharp''>4~ |
    <a\4 c-sharp''>4 c-sharp''4 d''8[ e''] a'4 |
    <g\4 b'>2 b'2 |
    <g\4 b'>2 b'2 |

    b'8[ c-sharp''] d''4 <b\4 d''>2 |
    d''4 e''4 <a\4 c-sharp''>4 c-sharp''4 |
    d''4 <g\4 b'>2 b'4 |
    <g\4 b'>2 b'2 |

    % r2 b'4\3 c-sharp''8\2[ d''\2] |

    <b\4 f-sharp'\3 d''>1 |
    <a\4 d-sharp'\3 c-sharp''>1 |
    <g\4 c-sharp'\3 b'>2. b'8[ a'] |
    <d f-sharp'>2 <d a'>2 |
    <d g'>2 <e e'>2 |
}

outro = {
    b8\3[ c-sharp'] d'4 <b, d'>2 |
    d'4 e'4\2 <a, c-sharp'>2 |
    c-sharp'4 e'4\2 <g, b>2 |
    b4 <g, b>2 b4 |

    <b, d'>2 d'4 e'4 |
    <a, c-sharp'>2 c-sharp'4 e'4 |
    <g, b>2 b2 |
    <g, b>2 b2 |
    
    b8\3[ c-sharp'] d'4 <b, d'>2 |
    e'4 <a, c-sharp'>2 e'4 |
    
    <g, b>2 <b, d'>2 |
    <a, c-sharp'>2 <g, b>2 |

    <b, d'>1 |
    <a, c-sharp'>1 |
    <g, b>1 |
}

full_part = {
    \intro
    \main
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
