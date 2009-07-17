#! /opt/local/bin/gnuplot

set pointsize 2
#set logscale x 2
set style data linespoints
set ylabel "Write Bandwidth (MB/s)"
set xlabel "Number of Processors"

#set key top left
set key graph 0.97,0.8 
set terminal png giant
set output "lanl1.png"
plot 'data' index 5 using 3:9 t "PLFS, MPI-IO" lw 3 lt 1, \
     ''     index 2 using 3:9 t "Without PLFS, Bulkio" lw 3 lt 3, \
     ''     index 4 using 3:9 t "Without PLFS, MPI-IO" lw 3 lt 6

#set title "Asteroid Problem on RRZ"
set terminal postscript enhanced 20 eps 
set output "lanl1_full.eps"
plot 'data' index 1 using 3:9 t "PLFS, MPI-Ind" lw 3 lt 1, \
     ''     index 5 using 3:9 t "PLFS, MPI-Col" lw 3 lt 7, \
     ''     index 0 using 3:9 t "PLFS, Bulkio" lw 3 lt 4, \
     ''     index 2 using 3:9 t "PanFS, Bulkio" lw 3 lt 3, \
     ''     index 4 using 3:9 t "PanFS, MPI-Col" lw 3 lt 6, \
     ''     index 3 using 3:9 t "PanFS, MPI-Ind" lw 3 lt 5

set output "lanl1.eps"
plot 'data' index 5 using 3:9 t "PLFS, MPI-IO" lw 3 lt 1, \
     ''     index 0 using 3:9 t "PLFS, Bulkio" lw 3 lt 4, \
     ''     index 2 using 3:9 t "Without PLFS, Bulkio" lw 3 lt 3, \
     ''     index 4 using 3:9 t "Without PLFS, MPI-IO" lw 3 lt 6
