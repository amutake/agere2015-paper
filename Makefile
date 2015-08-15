.PHONY: pdf cont clean update final

MAIN=sig-alternate
TEXINPUTS=".:./sty//:"

pdf: $(MAIN).tex
	TEXINPUTS=$(TEXINPUTS) latexmk -pdf $(MAIN)

cont: $(MAIN).tex
	TEXINPUTS=$(TEXINPUTS) latexmk -pvc -pdf $(MAIN)

clean:
	latexmk -C $(MAIN)

update:
	mkluatexfontdb -vvv

final:
	TEXINPUTS=$(TEXINPUTS) latex $(MAIN)
	TEXINPUTS=$(TEXINPUTS) bibtex $(MAIN)
	TEXINPUTS=$(TEXINPUTS) latex $(MAIN)
	dvipdfmx $(MAIN).dvi
