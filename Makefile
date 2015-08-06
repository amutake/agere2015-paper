.PHONY: pdf cont clean update

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
