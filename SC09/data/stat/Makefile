DATA = $(wildcard output.*)

all: stat.eps

stat.eps: plot.gnu $(DATA)
	gnuplot plot.gnu

clean:
	rm -f *.eps
