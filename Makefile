SRC=TFG

PDF=$(SRC).pdf
TEX=$(SRC).tex
OBJ=$(SRC).aux $(SRC).fls $(SRC).log $(SRC).toc $(SRC).synctex.gz

$(PDF): $(TEX) refs.bib
	pdflatex $< #&> /dev/null
	pdflatex $< #&> /dev/null

.PHONY: view
view: $(PDF)
	zathura $<

.PHONY: clean
clean:
	rm -f $(OBJ)

