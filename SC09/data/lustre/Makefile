DATA = $(wildcard *.dat)

all: lustre.eps

lustre.eps: $(DATA) plot.gnu
	gnuplot plot.gnu

clean:
	rm -f *.eps
