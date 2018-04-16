# ©2010-2017 Rebecca Louise Loomis and Steven Robert Loomis
# Licensed under https://creativecommons.org/licenses/by-nc-nd/4.0/

LYFILES=$(wildcard *.ly)
PDFILES=$(LYFILES:%.ly=%.pdf)

all: $(PDFILES)


%.pdf: %.ly
	lilypond $(<F)

-include Makefile.local

