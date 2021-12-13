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
harmTwelveMarkup = -\markup { \center-align \abs-fontsize #8 { 12 }}
harmSevenMarkup = -\markup { \center-align \abs-fontsize #8 { 7 }}

rallentendo = -\markup { \abs-fontsize #10 { rallentendo }}

intro = {
  \arpeggioArrowDown<g\4 c'\3 e'\2 b'>2\arpeggio c'8\3[ e'\2] b'4 | c'8\3[ e'\2] b'4 c'8\3[ e'\2] a'8[ b'] | e''1\fermata |
  \arpeggioArrowDown<c'\4 f'\3 a'\2 e''>2\arpeggio f'8\3[a'\2] e''4 | f'8\3[a'\2] e''4 f'8\3[a'\2] e''8[ d''] | c''1\fermata |
  \arpeggioArrowDown<a e'\3 f'\2 c''>2\arpeggio e'8\3[ f'\2]  c''4 | e'8\3[ f'\2] c''4 e'8\3[ f'\2] c''[ b'] | a'1\fermata | 
  \arpeggioArrowDown<f a-sharp d' a'>2\arpeggio a-sharp8[ d'] a'4 | a-sharp8[ d'] a'4 a-sharp8[ d'] a'8[ g'] e'1\fermata |
  \arpeggioArrowDown<a, e a c-sharp' e'>1\arpeggio

}

verse = {

}

outro = {
}

full_part = {
    \intro
    \verse
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
