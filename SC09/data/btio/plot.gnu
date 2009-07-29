#!/opt/local/bin/gnuplot -persist
set terminal postscript enhanced 32 eps
set bar 1.000000
set boxwidth 0.7 absolute
set style fill pattern 
set style rectangle back fc  lt -3 fillstyle  solid 1.00 border -1
set xrange [0.5:2.5]
set xtics   ("Without PLFS" 1.00000, "With PLFS" 2.00000)
set ytics 1
#set title "BT-IO, 16 NP, LANL RRZ" 
set ylabel "Write Time (s)" 

set output "btio-times.eps"
plot 'data.processed' using 1:3 index 0 with boxes not, '' using 1:3 index 1 with boxes not, '' using 1:3:4 with errorbars not

set ylabel "Write Bandwidth (MB/s)"
set output "btio.eps"
plot 'data.processed' using 1:6 index 0 with boxes fill pattern 1 not, '' using 1:6 index 1 with boxes fill pattern 1 not, '' using 1:6:7 with errorbars not
#    EOF
