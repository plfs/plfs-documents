set style data yerrorlines
set ylabel "Read Bandwidth (MB/s)"
set xlabel "Number of Original Writers"
set terminal postscript enhanced 20 eps
set yrange [0:1000]
set xrange [0:800]

set output "nn.eps"
plot '5.dat' index 1 t "With PLFS", '' index 0 t "Without PLFS"
set terminal png giant
set output "nn.png"
plot '5.dat' index 1 lw 3 t "With PLFS", '' index 0 lw 3 t "Without PLFS"
set terminal postscript enhanced 20 eps

set output "nm.eps"
plot 'nm_restart.dat' index 1 t "With PLFS", '' index 0 t "Without PLFS"
set terminal png giant
set output "nm.png"
plot 'nm_restart.dat' index 1 lw 3 t "With PLFS", '' index 0 lw 3 t "Without PLFS"
set terminal postscript enhanced 20 eps

set output "archive.eps"
plot 'archive.dat' index 0 t "With PLFS", '' index 1 t "Without PLFS"
set terminal png giant
set output "archive.png"
plot 'archive.dat' index 0 lw 3 t "With PLFS", '' index 1 lw 3 t "Without PLFS"
set terminal postscript enhanced 20 eps
