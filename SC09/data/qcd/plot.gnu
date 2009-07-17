#!/tmp/gnuplot-ppc/bin/gnuplot -persist
set key top right 
set logscale x 2
set style data linespoints
#set title "QCD QIO" 
set xlabel "Number of Processes" 
set terminal postscript enhanced 32 eps
filesize=40

set output "qcd-times.eps"
set ylabel "Write Time (s)" 
plot 'data' using 1:2 index 0 t "Without PLFS", '' using 1:2 index 1 t "With PLFS"

set output "qcd.eps"
set ylabel "Write Bandwidth (MB/s)" 
plot 'data' using 1:(filesize/$2) index 1 t "With PLFS", '' using 1:(filesize/$2) index 0 t "Without PLFS"
#    EOF
