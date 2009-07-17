DATA = $(wildcard ../*/min_max.dat)

all: summary.eps

summary.eps: data plot.gnu
	gnuplot plot.gnu

data: $(DATA) get_data
	./get_data > $@

clean: 
	rm -f data *.eps
