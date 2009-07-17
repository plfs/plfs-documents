set style data yerrorlines
set key inside left top 
set xlabel "Number of Processors" 
set ylabel "Write Bandwidth (MB/s)" 
set terminal postscript enhanced 32 eps

set output 'gpfs.eps'
plot 'gpfst.dat' index 6 t "GPFS, N-N", \
     'gpfst.dat' index 7 t "NoopFS, N-N", \
     'gpfst.dat' index 8 t "PLFS, N-N", \
     'gpfst.dat' index 3 t "PLFS, N-1", \
     'gpfst.dat' index 0 t "GPFS, N-1", \
     'gpfst.dat' index 2 t "NoopFS, N-1"
set output 'gpfs.png'
set terminal png giant
replot

set terminal postscript enhanced 32 eps
set yrange [0:*]
set key right top Left
set logscale x 2
set output 'gpfs-blocksize.eps'
set xlabel "Write Size (KB)"
plot 'gpfst_blocksize.dat' index 2 t 'N-N, GPFS', \
     '' index 3 t 'N-N, FUSE', \
     '' index 1 t 'N-1, PLFS'
set output 'gpfs-blocksize.png'
set terminal png giant
replot
