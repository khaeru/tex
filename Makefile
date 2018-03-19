LOGOS_SRC = $(wildcard logo/*.svg) $(wildcard logo/*.eps)
LOGOS_PDF = $(LOGOS_SRC:%.svg=%.pdf)
LOGOS_PDF = $(LOGOS_SRC:%.eps=%.pdf)

all: $(LOGOS_PDF)

%.pdf: %.eps
	inkscape $< --export-pdf=$@

%.pdf: %.svg
	inkscape $< --export-pdf=$@
