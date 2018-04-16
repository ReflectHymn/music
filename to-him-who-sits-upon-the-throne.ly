%{


Lyrics: Issac Watts / Rev 5:14
More on this text: 
  https://hymnary.org/text/to_him_who_sits_upon_the_throne_the_god

Music and this arrangement:

©2005,2018 Rebecca Louise Loomis and Steven Robert Loomis

Licensed under https://creativecommons.org/licenses/by-nc-nd/4.0/


%}

\language "english"

\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key c \major
  \time 4/4
 \partial 4
  s4 | s1 | s1 | s1 | s1 \bar "|" \break
  s1 | s1 | s1 | s1 \bar "|."

}


\header{
  title = "To Him Wo Sits Upon the Throne"
  subtitle = "Revelation 5:14"
  poet = "Isaac Watts"
  opus = "TO HIM WHO SITS 8.6.8.6"
  composer = "Rebecca L. Loomis"
  copyright = "© 2005,2018 Rebecca Louise Loomis cc-by-nc-nd 4.0 see https://creativecommons.org/licenses/by-nc-nd/4.0/"
}


sopMusic = \relative c' {
c8 e8 g4 g a8 g8 f8 a8 g2.
g4 a4. g8 f4 e d2.
c8 e8 g4 g a b c b8 a8 g4
a g4. a8 e4 d4 c1
}



altMusic = \relative c' {
c4 c e f8 e f f e2.
e4 c4. c8 d4 c d2.
c4 c e d d c ds8 fs8 e4
e e4. c8 b4 b c1
}

wordsa = \lyricmode { 
To __ _  | Him who sits u -- pon the throne, The God whom we a -- dore,
And __ _ to the Lamb that once was __ _ slain Be glo -- ry ev -- er -- more.
}


tenMusic = \relative c {
f4 f a f8 g8 a8 b8 c2.
g4 f4. e8 f4 fs g2.
e4 e g f gs a a b
c b4. c8 g4 f4 e1
}

basMusic = \relative c {
c4 c c f8 f8 f8 f8 c2.
c4 a4. a8 d4 a4 b2.
c4 c c f e a, b e
c4 g4. a8 g4 g c1
}



\score {
	\new ChoirStaff <<
%		\chords { c4 c f c2 f2 c1. f4 c2. g1  c4 f c }
		\new Staff = "men" <<
		     	\clef "treble"
			\new Voice = "soprano" {
				\voiceOne
				<< \global \sopMusic >>
			}
			\new Voice = "alto" {
				\voiceTwo
				<< \global \altMusic >>
			}
			\new Lyrics \lyricsto "soprano" \wordsa
		>>
		\new Staff = "men" <<
		     	\clef "bass"
			\new Voice = "tenor" {
				\voiceOne
				<< \global \tenMusic >>
			}
			\new Voice = "bass" {
				\voiceTwo
				<< \global \basMusic >>
			}
			% A, T, B here
		>>
	>>
	  \layout {
    \context { \Score }
  }

}

\paper {  % Start paper block
  indent = 0     % don't indent first system
%  line-width = 130   % shorten line length to suit music
}  % End paper block


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
