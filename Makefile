SRC=TFG

PDF=$(SRC).pdf
TEX=$(SRC).tex
OBJ=$(SRC).aux $(SRC).fls $(SRC).log $(SRC).toc $(SRC).synctex.gz

$(PDF): $(TEX) refs.bib
	pdflatex $<
	pdflatex $<

.PHONY: view
view: $(PDF)
	zathura $<

.PHONY: clean
clean:
	rm -f $(OBJ)

