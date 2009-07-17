DATA = $(wildcard *.dat)
all: nn.eps

nn.eps: $(DATA) plot.gnu
	gnuplot plot.gnu

clean:
	rm -f *.eps
