DATA = $(wildcard *.dat)

all: panfs.eps

panfs.eps: plot.gnu $(DATA) 
	gnuplot plot.gnu

clean:
	rm -f *.eps
