#!/opt/local/bin/gnuplot -persist
set style data yerrorlines
#set title "DNS Checkpoint Bandwidth on RRZ" 
set xlabel "Number of Processes" 
set ylabel "Write Bandwidth (MB/s)" 
set yrange [ 0.00000 : * ] noreverse nowriteback  # (currently [:10.0000] )
set terminal postscript enhanced 20 eps
set key top left
set output "lanl2_full.eps"
plot 'data.plfs.nocb.nods.async_close' using 1:($4/$7):($5/$7) \
        with errorbars lt 1 t "PLFS, no cb, no ds, async close", \
        '' using 1:($4/$7) with lines lt 1 not, \
    'data.plfs.nocb.nods.sync_close' using 1:($4/$7):($5/$7) \
        with errorbars lt 2 t "PLFS, no cb, no ds, sync close", \
    '' using 1:($4/$7) with lines lt 2 not, \
    'data.panfs.cb.ds' using 1:($4/$7):($5/$7) \
        with errorbars lt 3 t "PanFS, cb, ds", \
    '' using 1:($4/$7) with lines lt 3 not, \
    'data.panfs.nocb.nods' using 1:($4/$7):($5/$7) \
        with errorbars lt 4 t "PanFS, no cb, no ds", \
    '' using 1:($4/$7) with lines lt 4 not

set output "lanl2.eps"
plot 'data.plfs.nocb.nods.async_close' using 1:($4/$7):($5/$7) t "With PLFS", \
    'data.panfs.cb.ds' using 1:($4/$7):($5/$7) t "Without PLFS"
