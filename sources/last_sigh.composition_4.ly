\version "2.22.1"
\include "english.ly"
\header {
  title = "Last sigh"
  subtitle = "Composition - 4"
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
  d''8[ <b\4 d''> b'\2 f-sharp'\3] d''8[ <b\4 e''> g-sharp'\2 e'\3] |
  e''8[ <c-sharp'\4 f-sharp''> a-sharp'\2 f-sharp'\3 c-sharp'\4] <b e'>4.\harmTwelveMarkup |

  e'8[ <e' f> c' a] e'8[ <f-sharp' d> d' b\3]  |
  f-sharp'8[ <e e'> c' a] e'8[ <g, d'> g d] |
  e'8[ <c c'> g e] e'[ <g, b> g d] |
  e'8[ <d f-sharp'> d' a] f-sharp'8[ <g\4 b'> e'\2 c'\3] |
  b'8[ <g\4 c''> e'\2 c'\3] 
  % c''[ <a\4 c''> a'\2 e'\3] |
  % c''8[ <a\4 d''> f-sharp'\2 d'\3]

  d''8[ <b\4 d''> b'\2 f-sharp'\3] d''8[ <b\4 e''> g-sharp'\2 e'\3]
  e''8[ <c-sharp'\4 f-sharp''> a-sharp'\2 f-sharp'\3] | 
  c-sharp'8\4 <g b>4.\harmSevenMarkup e'8[ <e' f> c' a] |
  e'8[ <f-sharp' d> d' b\3] <e' b>2\harmTwelveMarkup
}

verse = {
  f-sharp8[ b\3 d' f-sharp'] f-sharp'16[ d' b\3] e'16[ d' b\3] e'8 |
  b,8[ e g b] b16[ g e] b16[ g d] b8 |
  c-sharp[ f-sharp a c-sharp'] c-sharp'16[ a f-sharp] b16[ a f-sharp] b8 |
  % b8\4[ d'\3 f-sharp'\2 b'] b'16[ f-sharp'\2 d'\3] e'16[ f-sharp'\2 d'\3] e'8 |
  b8\4[ d'\3 f-sharp'\2 b'] b'16[ f-sharp'\2 d'\3] e'16[ b d'\3] e'8 |
  e8[ b\3 e'\2 g'] g'16[ e'\2 b\3] f-sharp'16[ e'\2 b\3] f-sharp'8 |
  f-sharp8[ c-sharp'\3 f-sharp'\2 a'] a'16[ f-sharp'\2 c-sharp'\3] g-sharp'16[ d-sharp'\2 c-sharp'\3] g-sharp'8
}

bridge = {
  \arpeggioArrowDown<c-sharp'' a\4 f-sharp'\2 d'\3>4\arpeggio d'8\3[ f-sharp'\2 c-sharp'']  b'8[c-sharp'' d'']
}

full_part = {
    \chorus
    \verse
    \bridge
    \chorus
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
