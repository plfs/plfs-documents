DATA = $(wildcard *.dat)

all: gpfs.eps 

gpfs.eps: $(DATA) plot.gnu
	gnuplot plot.gnu

clean:
	rm -f *.eps
