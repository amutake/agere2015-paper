.PHONY: pdf cont clean update

MAIN=sig-alternate.tex
TEXINPUTS=".:./sty//:"

pdf: sig-alternate.tex
	TEXINPUTS=$(TEXINPUTS) latexmk -pdf $(MAIN)

cont: sig-alternate.tex
	TEXINPUTS=$(TEXINPUTS) latexmk -pvc -pdf $(MAIN)

clean:
	latexmk -C $(MAIN)

update:
	mkluatexfontdb -vvv
