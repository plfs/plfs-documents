NAME = plfs
BIB  = bibtex

SRCS = ${wildcard *.tex}

FIGURESRC = ${wildcard figs/*.fig}
FIGURES = ${FIGURESRC:.fig=.eps}

PS  = $(NAME).ps
PDF = $(NAME).pdf

all: $(PS)

pdf: $(PDF)

%.pdf: %.ps 
	ps2pdf14 $<

%.eps: %.fig
	fig2dev -L eps < $< > $@

$(PS): $(SRCS) $(FIGURES)
	find data -name Makefile -execdir make \;
	latex $(NAME)
	$(BIB) -min-crossrefs=100 $(NAME)
	latex $(NAME)
	latex $(NAME)
	dvips -t letter $(NAME) -o $(NAME).ps

spell:
	latexspell *.tex

clean:
	find data -name Makefile -execdir make clean \;
	rm -f *~ *.aux *.bbl *.blg *.dvi *.ps *.pdf *.log *.toc *.lof figs/*.eps
