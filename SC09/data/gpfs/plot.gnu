set style data yerrorlines
set key inside left top 
set xlabel "Number of Processors" 
set ylabel "Write Bandwidth (MB/s)" 
set terminal postscript enhanced 32 eps

set ytics 1000
set output 'gpfs.eps'
plot '1.dat' index 2 t 'N-N, GPFS', \
     '' index 1 t 'N-1, PLFS', \
     '' index 0 t 'N-1, GPFS'
set output "gpfs.png"
set terminal png giant
plot '1.dat' index 2 lw 3 t 'N-N, GPFS', \
     '' index 1 lw 3 t 'N-1, PLFS', \
     '' index 0 lw 3 t 'N-1, GPFS'

set terminal postscript enhanced 32 eps

set output 'gpfs-motivation.eps'
plot '1.dat' index 2 t 'N-N', \
     '' index 0 t 'N-1'
set terminal png giant
set output 'gpfs-motivation.png'
plot '1.dat' index 2 lw 3 lt 1 t 'N-N', \
     '' index 0 lw 3 lt 3 t 'N-1'
