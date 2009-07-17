DATA = $(wildcard data*)
all: lanl2.eps

lanl2.eps: plot.gnu $(DATA)	
	gnuplot plot.gnu

clean:
	rm -f *.eps
