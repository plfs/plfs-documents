NAME = plfs_roadmap

PDF  = $(NAME).pdf
SRCS = $(wildcard *.tex)

all: $(PDF)

# $(PDF): $(SRCS) mapping.png

$(PDF): $(SRCS) # mapping.png
	pdflatex $(NAME)
	pdflatex $(NAME)

mapping.png: mapping.dot
	dot -Gsize="2.8,5" -Tpng -o $@ $<

spell:
	latexspell *.tex

clean:
	rm -f *~ *.aux *.bbl *.blg *.dvi *.ps *.pdf *.log *.toc *.lof *.png
