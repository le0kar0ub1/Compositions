\version "2.22.1"
\include "english.ly"
\header {
  title = "A minor journey"
  subtitle = "Composition - 3"
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
  \arpeggioArrowDown<g\4 c'\3 e'\2 b'>1\arpeggio | c'8\3[ e'\2 b'] c'8\3[ e'\2 b'] c'8\3[ e'\2] | a'4 b'4 e''2\fermata |
  \arpeggioArrowDown<c'\4 f'\3 a'\2 e''>1\arpeggio | f'8\3[a'\2 e''] f'8\3[a'\2 e''] f'8\3[a'\2] | e''4 d''4 c''2\fermata |
  \arpeggioArrowDown<a e'\3 f'\2 c''>1\arpeggio | e'8\3[ f'\2 c''] e'8\3[ f'\2 c''] e'8\3[ f'\2] | c''4 a'2.\fermata | 
  \arpeggioArrowDown<f a-sharp d' a'>1\arpeggio | a-sharp8[ d' a'] a-sharp8[ d' a'] a-sharp8[ d'] | a'4 g'4 e'2\fermata |
  \arpeggioArrowDown<a, e a c-sharp' e'>1\arpeggio
}

first_verse = {
  \arpeggioArrowDown<e\5 b\4 e'\3 g'\2 b'>1\arpeggio | e'8\3[ g'\2 b'] e'8\3[ g'8\2( f-sharp'\2)] e'8\3[ d'\3] |

  <a, e'>8[ e a] c'8([ b]) a8 g4 |
  <d f'>8[ a d'] f'8([ e']) d'8 c'4 |
  <e, g>8[ b, e] g([ g-sharp)] e8 d4 |

  <e\5 b'>8[ b\4 e'\3] g'8\2[( f-sharp'\2)] e'8\3 d'4\3 |

  <a, e'>8[ e a] c'8([ b]) a8 g4 |
  <d f'>8[ a d'] f'8([ e']) d'8 c'4 |
  <e, g>8[ b, e] g([ g-sharp)] e8 d4 |
  e2.\fermata e'4 |
}

bridge = {
  g'4 a'4 \glissando( b'2)
}

second_verse = {
  \arpeggioArrowDown<a\4 e'\3 a'\2 c''>1\arpeggio | e'8\3[ a'\2 c''] e'8\3[ a'\2 c''] e'8\3[ a'\2] | c''4 d''2. |
  \arpeggioArrowDown<a\5 d'\4 f'\3 a'\2 d''>1\arpeggio | f'8\3[ a'\2 d''] f'8\3[ a'\2 d''] f'8\3[ a'\2] | d''4 c''2. |

  a8\4[ e'8\3] a8\4[ c''] a8\4[ e'8\3] a8\4[ c''] |
  a8\5[d'\4] a8\5[ d''] a8\5[d'\4] a8\5[ d''] |
  b8\4[ e'\3] b8\4[ b'] b8\4[ e'\3] b8\4[ b'] |

  a8\4[ e'8\3] a8\4[ c''] a8\4[ e'8\3] a8\4[ e'] |
  a8\5[d'\4] a8\5[ d''] a8\5[d'\4] a8\5[ e'] |
  b8\4[ e'\3] b8\4[ b'] b8\4[ e'\3] b8\4[ e'] |

  a8\4[ e'8\3] a8\4[ c''] a8\4[ e'8\3] a8\4[ e'\harmonic\harmTwelveMarkup] |
  a8\5[d'\4] a8\5[ d''] a8\5[d'\4] a8\5[ b\harmonic\harmTwelveMarkup] |
  b8\4[ e'\3] b8\4[ b'] b8\4[ e'\3] b8\4[ <g\harmonic b\harmonic>\harmSevenMarkup] |
}

last_chorus = {
  \arpeggioArrowDown<g\4 c'\3 e'\2 b'>1\arpeggio | c'8\3[ e'\2 c'\3 b'] c'8\3[ e'\2 c'\3 a'] | b'4 e''2.\fermata |
  \arpeggioArrowDown<c'\4 f'\3 a'\2 e''>1\arpeggio | f'8\3[a'\2 f'\3 e''] f'8\3[a'\2 f'\3 e''] | d''4 c''2.\fermata |
  \arpeggioArrowDown<a e'\3 f'\2 c''>1\arpeggio | e'8\3[ f'\2 e'\3 c''] e'8\3[ f'\2 e'\3 c''(] | c''4) a'2.\fermata | 
  \arpeggioArrowDown<f a-sharp d' a'>1\arpeggio | a-sharp8[ d' a'] a-sharp8[ d' a'] a-sharp8[ d'] | a'4 g'4 e'2\fermata |
  \arpeggioArrowDown<a, e a c-sharp' e'>1\arpeggio
}

full_part = {
    \chorus
    \first_verse
    \bridge
    \chorus
    \second_verse
    \bridge
    \last_chorus
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
