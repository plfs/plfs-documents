set key inside left top vertical Right noreverse enhanced autotitles nobox
set logscale x 2
set style data linespoints
#set title "Chombo on LANL's RRZ" 
set xlabel "Number of Processes" 
set ylabel "Write Bandwidth (MB/s)" 
#set grid y
set terminal postscript enhanced 32 eps 
set output "chombo.eps"
set xrange [7:590]
set ytics 200
plot 'plfs.dat' using 1:($4/$15) t "With PLFS" lt 1, \
    '' using 1:($4/$15):($4/($15+$16)):($4/($15-$16)) with errorbars lt 1 not, \
    'panfs.dat' using 1:($4/$15) t "Without PLFS" lt 2, \
    '' using 1:($4/$15):($4/($15+$16)):($4/($15-$16)) with errorbars lt 2 not
set output "chombo.concurrent.eps"
plot 'plfs.dat' using 1:($4/$15) t "With PLFS" lt 1, \
    '' using 1:($4/$15):($4/($15+$16)):($4/($15-$16)) with errorbars lt 1 not, \
    'panfs.dat' using 1:($4/$15) t "PanFS, No hints" lt 2, \
    '' using 1:($4/$15):($4/($15+$16)):($4/($15-$16)) with errorbars lt 2 not, \
    'panfs.concurrent.dat' using 1:($4/$15) t "PanFS, CW hint" lt 3, \
    '' using 1:($4/$15):($4/($15+$16)):($4/($15-$16)) with errorbars lt 3 not
set terminal postscript color enhanced 32
set output "chombo.concurrent.ps"
replot
