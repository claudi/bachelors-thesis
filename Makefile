SRC=TFG

PDF=$(SRC).pdf
TEX=$(SRC).tex
OBJ=$(SRC).aux $(SRC).fls $(SRC).log $(SRC).toc $(SRC).synctex.gz

$(PDF): $(TEX) refs.bib
	pdflatex -shell-escape $<
	pdflatex -shell-escape $<

.PHONY: view
view: $(PDF)
	zathura $<

.PHONY: clean
clean:
	rm -f $(OBJ)

