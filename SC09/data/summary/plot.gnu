#!/opt/local/bin/gnuplot -persist
set terminal postscript enhanced 32 eps
#set bar 1.000000
set boxwidth 0.7 absolute
#set style fill pattern
#set style rectangle back fc  lt -3 fillstyle  solid 1.00 border -1
set xrange [0:21]
set yrange [0:*]
set ylabel "Speedup (X)"

set terminal postscript enhanced 19 eps
set boxwidth 1.5
set logscale y 10
set yrange [*:*]
set xrange [0:22]
set xtics   ("BTIO" 2, "Chombo" 5, "FLASH" 8, "LANL 1" 11, "LANL 2" 14, "LANL 3" 17, "QCD" 20)
set output 'page1.eps'
plot 'data.page1' with boxes fill pattern 1 not 

set terminal png giant
set output 'page1.png'
plot 'data.page1' with boxes fs solid 0.75 lt 4 not 

set yrange [0:160]
set terminal postscript enhanced 32 eps
set output "summary.eps"
set ytics 25 
set xtics   ("(i)" 1.50000, "(l)" 4.50000, "(j)" 7.50000, "(d)" 10.5000, "(e)" 13.5000, "(f)" 16.5000, "(g)" 19.5000)
unset logscale y
plot 'data' with boxes fill pattern 1 not
