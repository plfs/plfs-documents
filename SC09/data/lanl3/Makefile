DATA = $(wildcard *.dat)

all: lanl3.eps

lanl3.eps: plfs.dat plot.gnu
	gnuplot plot.gnu

clean:
	rm -f *.eps
