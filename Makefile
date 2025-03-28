# ©2010-2017 Rebecca Louise Loomis and Steven Robert Loomis
# Licensed under https://creativecommons.org/licenses/by-nc-nd/4.0/

LYFILES=$(wildcard *.ly)
PDFILES=$(LYFILES:%.ly=%.pdf)
LILYPOND=lilypond

all: $(PDFILES)


%.pdf: %.ly
	$(LILYPOND) $(<F)

-include Makefile.local

