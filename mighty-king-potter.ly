%{


Lyrics: Isaac Watts, Public Domain

Music and this arrangement:

©2010-2017 Rebecca Louise Loomis and Steven Robert Loomis

Licensed under https://creativecommons.org/licenses/by-nc-nd/4.0/


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
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "|" \break
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "|" \break
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "|" \break
  s2 | s1 | s1 | s1 | s1 | s1 |  s2 \bar "|."

}


\header{
  title = "Behold The Potter And The Clay"
  subtitle = "Jeremiah 18, Isaiah 64, Romans 9"
  poet = "Isaac Watts"
  opus = "MIGHTY KING"
  composer = "Rebecca L. Loomis"
  copyright = "© 2010-2017 Rebecca Louise Loomis cc-by-nc-nd 4.0 see https://creativecommons.org/licenses/by-nc-nd/4.0/"
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
	Be -- |  hold the pot -- ter | and the clay __ | He | forms His ves -- sels | as He please __ 
| Such | is our God, and | such are we __ | The | sub -- jects of His | high de -- crees __
| Doth | not the work -- man’s | pow’r ex -- tend __ | O’er | all the mass, which | part to choose __
| and | mold it for a | nob __ ler end __ | And | which to leave for | vi -- ler use? __ 
}

wordsb = \lyricmode { 
 \set stanza = #"2. "
	May | not the sov’ -- reign | Lord on high __ | Dis -- pense His fav -- ors as He will __
| Choose | some to life, while | o -- thers die __ | And | yet be just and | gra -- cious still? __
| What | if, to make His | ter -- ror known __ | He | lets His pa -- tience | long en -- dure __
| Suff’ -- ring vile re -- bels | to go on __ And | seal their own de -- struc -- tion sure? __
}

wordsc = \lyricmode { 
 \set stanza = #"3. "
	What if He means to show His grace   And His e -- lect -- ing love em -- ploys __
| To | mark out some of mor -- tal race     And form them fit for heav'n -- ly joys? __
| Shall |  man re -- ply a -- gainst the Lord     And call his Ma -- ker’s ways un -- just __
| The | thun -- der of Whose dread -- ful word     Can crush a thou -- sand worlds to dust? __

}

wordsd = \lyricmode { 
 \set stanza = #"4. "
	But, O my soul! If truths so bright   Should da -- zzle and con -- found thy sight __
| Yet | still His writ -- ten will o -- bey   And wait the great de -- cis -- ive day. __
| Then | shall He make His jus -- tice known   And the whole world be -- fore His throne __
| With | joy or ter -- ror shall con -- fess __  The glo -- ry of His right -- eous -- ness. __

}



\score {
	\new ChoirStaff <<
%		\chords { c4 c f c2 f2 c1. f4 c2. g1  c4 f c }
		\new Staff = "women" <<
			\new Voice = "sopranos" {
				\voiceOne
				<< \global \sopMusic >>
			}
			% A, T, B here
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
