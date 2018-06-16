sources:=$(wildcard *.txt)
targets:=$(sources:.txt=.html)

all: $(targets)

%.html: %.txt page.theme
	theme -d . $<
