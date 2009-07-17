set terminal postscript enhanced 32 eps
set ylabel "Bandwidth (MB/s)"
set xlabel "Number of Processes"
set yrange [0:*]
set xtics 2000
set style data linespoints
set output "lanl3.eps"
set key top left
#plot 'plfs.dat' using 4:(($6*1024)/($8+$10+$12)) t "With PLFS", \
#     'redtail.dat' index 0 t "Without PLFS"
plot 'plfs.better' index 0 t "With PLFS", \
     'redtail.dat' index 0 t "Without PLFS"

set terminal png giant
set output "lanl3.png"
plot 'plfs.better' index 0 lw 3 t "With PLFS", \
     'redtail.dat' index 0 lw 3 t "Without PLFS"
