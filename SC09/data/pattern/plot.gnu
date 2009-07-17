set terminal postscript enhanced 32 eps 
set output "pattern.eps"
set key bottom right
set ylabel "Write Bandwidth (MB/s)"
set xlabel "Write Size (MB)"
set pointsize 1
set xrange [0:8]
plot 'data.txt' using ($2/1048576):($4*1024) index 0 pt 1 ps 2 t "With PLFS", '' using ($2/1048576):($4*1024) index 1 pt 7 t "Without PLFS"

set xrange [0:5]
set terminal png giant
set output "pattern.png"
plot 'data.txt' using ($2/1048576):($4*1024) index 0 lt 1 pt 1 ps 2 t "With PLFS", '' using ($2/1048576):($4*1024) index 1 lt 2 pt 7 t "Without PLFS"
set output "pattern_panfs_only.png"
plot 'data.txt' using ($2/1048576):($4*1024) index 1 lt 2 pt 7 t "Without PLFS"

#set key bottom right
#set xlabel "Blocksize (MB)"
#set ylabel "Bandwidth (GB/s)"
#set title "PatternIO Benchmark testing on 512 Procs on RRZ"
#plot 'data.txt' using ($2/1048576):4 index 0 t "PLFS|PanFS", '' using ($2/1048576):4 index 1 t "PanFS"
#set xrange [*:*]
#set logscale x 2
#set output "pattern.logx.eps"
#replot
#unset logscale x
#set output "pattern.0-5.eps"
#replot
