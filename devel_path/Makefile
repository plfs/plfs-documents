NAME = plfs_devel
BIB  = bibtex

SRCS = ${wildcard *.tex}

FIGURESRC = ${wildcard figs/*.fig}
FIGURES = ${FIGURESRC:.fig=.pdf}

PS  = $(NAME).ps
PDF = $(NAME).pdf

all: $(PS)

pdf: $(PDF)

%.pdf: %.eps 
	epstopdf $<

%.eps: %.fig
	fig2dev -L eps < $< > $@

$(PS): $(SRCS) $(FIGURES)
	pdflatex $(NAME)
	#$(BIB) -min-crossrefs=100 $(NAME)
	#pdflatex $(NAME)
	#latex $(NAME)
	#latex $(NAME)
	#dvips -t letter $(NAME) -o $(NAME).ps

spell:
	latexspell *.tex

clean:
	rm -f *~ *.aux *.bbl *.blg *.dvi *.ps *.pdf *.log *.toc *.lof figs/*.eps
