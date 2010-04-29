NAME = plfs_roadmap

PDF  = $(NAME).pdf
SRCS = $(wildcard *.tex)

all: $(PDF)

$(PDF): $(SRCS) 
	pdflatex $(NAME)
	pdflatex $(NAME)

spell:
	latexspell *.tex

clean:
	rm -f *~ *.aux *.bbl *.blg *.dvi *.ps *.pdf *.log *.toc *.lof 
