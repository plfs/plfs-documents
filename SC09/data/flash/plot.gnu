set key inside left top vertical Right noreverse enhanced autotitles nobox
set logscale x 2
set style data linespoints
set xlabel "Number of Processors" 
set ylabel "Write Bandwidth (MB/s)" 
#set grid y
set terminal postscript enhanced 32 eps
set xrange [7:2048]
set yrange [0:*]
set xtics 8,4,2048
set ytics 4000

set output "flash_ckpt.eps"
#set title "FLASH-IO (HDF5) on LANL's RRZ for Checkpoint File" 
plot 'plfs.dat' using 1:($12/$5) t "With PLFS" lt 1, \
    '' using 1:($12/$5):($12/($5+$6)):($12/($5-$6)) with errorbars lt 1 not, \
    'panfs.dat' using 1:($12/$5) t "Without PLFS" lt 2, \
    '' using 1:($12/$5):($12/($5+$6)):($12/($5-$6)) with errorbars lt 2 not
set output "flash.eps"
replot
set xrange [7:1024]
set terminal png giant
set output "flash.png"
plot 'plfs.dat' using 1:($12/$5) t "With PLFS" lw 3 lt 1, \
    '' using 1:($12/$5):($12/($5+$6)):($12/($5-$6)) with errorbars lt 1 not, \
    'panfs.dat' using 1:($12/$5) t "Without PLFS" lw 3 lt 2, \
    '' using 1:($12/$5):($12/($5+$6)):($12/($5-$6)) with errorbars lt 2 not
set terminal postscript enhanced 32 eps
set xrange [7:2048]

set output "flash_ckpt_without_open.eps"
#set title "FLASH-IO (HDF5) on LANL's RRZ for Checkpoint File" 
plot 'plfs.dat' using 1:($12/($5-$19)) t "With PLFS" lt 1, \
    '' using 1:($12/($5-$19)):($12/($5+$6-$19-$20)):($12/($5+$19-$6+$20)) with errorbars lt 1 not, \
    'panfs.dat' using 1:($12/$5) t "Without PLFS" lt 2, \
    '' using 1:($12/$5):($12/($5+$6)):($12/($5-$6)) with errorbars lt 2 not

set output "flash_ckpt_write_only.eps"
#set title "FLASH-IO (HDF5) on LANL's RRZ for Checkpoint File" 
plot 'plfs.dat' using 1:($12/($5-($19+$22))) t "With PLFS" lt 1, \
    '' using 1:($12/($5-($19+$22))):($12/($5+$6-($19+$22)+($20+$23))):($12/($5-($19+$22)-$6+($20+$23))) with errorbars lt 1 not, \
    'panfs.dat' using 1:($12/$5) t "Without PLFS" lt 2, \
    '' using 1:($12/$5):($12/($5+$6)):($12/($5-$6)) with errorbars lt 2 not

set output "flash_plot_no.eps"
#set title "FLASH-IO (HDF5) on LANL's RRZ for Plot without Corners" 
plot 'plfs.dat' using 1:($14/$7) t "With PLFS" lt 1, \
    '' using 1:($14/$7):($14/($7+$8)):($14/($7-$8)) with errorbars lt 1 not, \
    'panfs.dat' using 1:($14/$7) t "Without PLFS" lt 2, \
    '' using 1:($14/$7):($14/($7+$8)):($14/($7-$8)) with errorbars lt 2 not

set output "flash_plot_yes.eps"
#set title "FLASH-IO (HDF5) on LANL's RRZ for Plot with Corners" 
plot 'plfs.dat' using 1:($16/$9) t "With PLFS" lt 1, \
    '' using 1:($16/$9):($16/($9+$10)):($16/($9-$10)) with errorbars lt 1 not, \
    'panfs.dat' using 1:($16/$9) t "Without PLFS" lt 2, \
    '' using 1:($16/$9):($16/($9+$10)):($16/($9-$10)) with errorbars lt 2 not

set ylabel "Time (s)"
set output "flash_ckpt_opens.eps"
#set title "FLASH-IO (HDF5) on LANL's RRZ for Checkpoint File" 
plot 'plfs.dat' using 1:19 t "With PLFS" lt 1, \
    '' using 1:19:($19+$20):($19-$20) with errorbars lt 1 not

set output "flash_ckpt_closes.eps"
#set title "FLASH-IO (HDF5) on LANL's RRZ for Checkpoint File" 
plot 'plfs.dat' using 1:22 t "With PLFS" lt 1, \
    '' using 1:22:($22+$23):($22-$23) with errorbars lt 1 not
