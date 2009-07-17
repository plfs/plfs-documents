#!/tmp/gnuplot-ppc/bin/gnuplot -persist
set key top left 
set style data yerrorlines
set xlabel "Number of Processors" 
set ylabel "Write Bandwidth (MB/s)" 
set xrange [0:*]
set yrange [0:*]

set terminal postscript enhanced 20 eps
set output "lustre.eps"
plot '2.dat' index 2 t "N-N Lustre", \
    '' index 1 t "N-1 PLFS", \
    '' index 0 t "N-1 Lustre"
set output "lustre.png"
set terminal png giant
plot '2.dat' index 2 with linespoints lw 3 t "N-N Lustre", \
    '' index 1 with linespoints lw 3 t "N-1 PLFS", \
    '' index 0 with linespoints lw 3 t "N-1 Lustre"
set terminal postscript enhanced 20 eps

set key top right
set output "lustre-motivation.eps"
plot '2.dat' index 2 lt 1 t "N-N", \
    '' index 0 lt 3 t "N-1"
set output "lustre-motivation.png"

set style data linespoints
set key top left
set terminal png giant
plot '2.dat' index 2 using 1:2 lw 3 t "N-N", \
    '' index 0 using 1:2 lw 3 t "N-1"
set terminal postscript enhanced 20 eps
