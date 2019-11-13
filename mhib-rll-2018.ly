

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
% \partial 4
%  s4 | s1 | s1 | s1 | s2. \bar "|" \break
%  s4 | s1 | s1 | s1 | s1 \bar "|."

}

sopMusic = \relative c' {
  c f g a f d c f 
  c f g a c   bn g a

  f a gb c a d b c c d e f d g e d 

   e f e d c b a c     c d c b a g e f
}

% wordsa = \lyricmode {}

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

			%\new Lyrics \lyricsto "soprano" \wordsa
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
