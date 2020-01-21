

\header{
  title = "My Hope Is Built on Nothing Less"
  composer = "Rebecca L. Loomis"
  
  copyright = \markup {
		 © 2018,2019 Rebecca Loomis 
\with-url #"https://creativecommons.org/licenses/by-nc-nd/4.0/" {
  \teeny { cc-by-nc-nd 4.0 see creativecommons.org/licenses/by-nc-nd/4.0/
  \general-align #Y #DOWN {
    \epsfile #X #10 #"by-nc-nd.eps"
  }
  }
 } }
   tagline = \markup { \with-url #"http://reflecthymn.com" { "reflecthymn.com" } }

}

global = {
  \key f \major
  \time 3/4
\partial  4.
 s4. | s1 | s1 | s1 | s4. \bar "|" \break
 s4. | s1 | s1 | s1 | s4. \bar "|" \break
 s4. | s1 | s1 | s1  \bar "|."
%  s1 \bar "|."

}

sopMusic = \relative c' {
  c8 f8 g8 a4. f8 d8 c8 f4. 
  c8 f g a c b4 g4 a4. % << should be 4 4 4. ?
  %f8 a ges c a d b c c d e f d g e d 
  f8 a b c4. a8 d b c2 c8 d e f1 d8 g8. f16 e2  % name…
  e4 f e d2 c8 b4. a8 c4 c8 d c b4 a g e f2
  %ges c a d b c c d e f d g e d 
  % e f e d c b a c     c d c b a g e f
}

wordsa = \lyricmode { 
  \set stanza = #"1. "
  My hope is built on noth -- ing less Than Je -- sus’ blood and right -- eous -- ness;
  I dare not trust the sweet -- est frame, But whol -- ly lean on Je -- sus’ Name.
  On Christ, the sol -- id Rock, I stand; All oth -- er ground is sink -- ing sand.
% 	Be -- |  hold the pot -- ter | and the clay __ | He | forms His ves -- sels | as He please __ 
% | Such | is our God, and | such are we __ | The | sub -- jects of His | high de -- crees __
% | Doth | not the work -- man’s | pow’r ex -- tend __ | O’er | all the mass, which | part to choose __
% | and | mold it for a | nob __ ler end __ | And | which to leave for | vi -- ler use? __ 

}

\score {
	\new ChoirStaff <<
%		\chords { 
%			s4 c2 f2 c1 f4. a8:m7 d4:m fs4:7 
%  			g2. c4 c2 d4:m e4:7 a:m b:7 e:m a:m e4.:m a8:m g2:7 c1
%		}
		\new Staff = "high" <<
		     	\clef "treble"
			\new Voice = "soprano" {
				\voiceOne
				<< \global \sopMusic >>
			}

			\new Lyrics \lyricsto "soprano" \wordsa
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
