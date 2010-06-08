#!/opt/local/bin/gnuplot -persist
set terminal postscript enhanced 20 eps
#set bar 1.000000
set boxwidth 0.7 absolute
#set style fill pattern
#set style rectangle back fc  lt -3 fillstyle  solid 1.00 border -1
set xrange [0:24]
set yrange [0:*]
set ylabel "Speedup (X)"
set output "summary.eps"
set xtics   ("BTIO" 1.50000, "Chombo" 4.50000, "FLASH" 7.50000, "LANL 1" 10.5000, "LANL 2" 13.5000, "LANL 3" 16.5000, "QCD" 19.5000, "AWE" 22.5 )
plot 'data' with boxes fill pattern 1 not

set boxwidth 1.5
set logscale y 10
set yrange [*:*]
set xrange [0:34]
set xtics   ("BTIO" 2, "Chombo" 5, "FLASH" 8, "LANL1" 11, "LANL2" 14, "LANL3" 17, "IOR" 20, "Pattern" 23, "Pixie" 26, "QCD" 29, "AWE" 32 )
set output 'page1.eps'
set grid y 
#set grid mytics
plot 'data.page1' with boxes fill pattern 1 not 

set label "23" at 2,28 center
set label "7"  at 5,8 center
set label "150" at 8,168 center
set label "12" at 11,15 center
set label "5" at 14,5.5 center
set label "28" at 17,33 center
set label "2" at 20,2.5 center
set label "58" at 23,65 center
set label "7" at 26,8 center
set label "83" at 29,92 center
set label "36" at 32,40 center
set terminal png large
set output 'page1.png'
plot 'data.page1' with boxes fs solid 0.75 lt 4 not 
