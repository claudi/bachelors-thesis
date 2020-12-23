SRC=TFG

PDF=$(SRC).pdf
TEX=$(SRC).tex
OBJ=$(SRC).aux $(SRC).fls $(SRC).log $(SRC).synctex.gz

$(PDF): $(TEX)
	pdflatex $< #&> /dev/null
	pdflatex $< #&> /dev/null

.PHONY: view
view: $(PDF)
	zathura $<

.PHONY: clean
clean:
	rm -f $(OBJ)

