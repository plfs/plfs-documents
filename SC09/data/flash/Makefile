all: flash.eps

flash.eps: panfs.dat plfs.dat plot.gnu
	gnuplot plot.gnu

clean:
	rm -f *.eps
