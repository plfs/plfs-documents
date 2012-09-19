all:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex

clean:
	rm -rf *.aux *.out *.log *.bbl
