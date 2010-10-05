NAME = plfs_other_write

PDF  = $(NAME).pdf
SRCS = $(wildcard *.tex)

all: $(PDF) 

$(PDF): $(SRCS) state.png
	pdflatex $(NAME)
	pdflatex $(NAME)

%.png: %.dot
	dot -Gsize="5,5" -Tpng -o $@ $<

spell:
	latexspell *.tex

clean:
	rm -f *~ *.aux *.bbl *.blg *.dvi *.ps *.pdf *.log *.toc *.lof *.png
