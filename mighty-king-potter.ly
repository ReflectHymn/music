%{

©2010 Rebecca Louise Loomis

%}

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
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "||" \break
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "||" \break
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "||" \break
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "||"

}


\header{
  title = "Behold The Potter And The Clay"
}

sopMusic = \relative c'' {
% behold the potter and the clay he forms his vessels as He please
g4 e f g c, a'4. g8 g2 ~ g2. g4 a g e g d4. c8 d2 ~ d2.
% such si our God and such are we the subjects of His high decrees
g4 e f g c, a'4. b8 c2 ~ c2. g4 a g e g d4. c8 c2 ~ c2.
%| Doth | not the work -- man’s | pow’r ex -- tend __ | O’er | all the mass, which | part to choose __
g'4 c b c g a4. g8 g2 ~ g2. g4 c b c g a4. b8 c2 ~ c2. 
%| and | mold it for a | nob __ ler end __ | And | which to leave for | vi -- ler use? __ 
d4 c b c g a4. g8 g2 ~ g2. e4 g e g e d4. c8 c2 ~ c2.

}

wordsa = \lyricmode { 
  \set stanza = #"1. "
	Be -- |  hold the pot -- ter | and the clay __ |  He forms His ves -- sels | as He please __ 
| Such | is our God, and | such are we __ | The | sub -- jects of His | high de -- crees 
| Doth | not the work -- man’s | pow’r ex -- tend __ | O’er | all the mass, which | part to choose __
| and | mold it for a | nob __ ler end __ | And | which to leave for | vi -- ler use? __ 
}

wordsb = \lyricmode { 
 \set stanza = #"2. "
	May not 
}

wordsc = \lyricmode { 
 \set stanza = #"3. "
	May not 
}

wordsd = \lyricmode { 
 \set stanza = #"4. "
	May not 
}



\score {
	\new ChoirStaff <<
		\new Staff = "women" <<
			\new Voice = "sopranos" {
				\voiceOne
				<< \global \sopMusic >>
			}
		>>
	\new Lyrics \lyricsto "sopranos" \wordsa
	\new Lyrics \lyricsto "sopranos" \wordsb 
	\new Lyrics \lyricsto "sopranos" \wordsc 
	\new Lyrics \lyricsto "sopranos" \wordsd 

%		\context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
%		\context Lyrics = "sopranos" \lyricsto "sopranos" \sopWordsB
	>>
}

\paper {  % Start paper block
  indent = 0     % don't indent first system
%  line-width = 130   % shorten line length to suit music
}  % End paper block


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
