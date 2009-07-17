set style data yerrorlines
set key top left
set ylabel "Write Bandwidth (MB/s)"
set xlabel "Number of Processes"
set terminal postscript enhanced 20 eps
set yrange [0:35000]

set output "panfs-motivation.eps"
plot 'combined.dat' index 2 t "N-N, PanFS", 'panfs_47K.dat' index 0 t "N-1, PanFS"
set terminal png giant
set output "panfs-motivation.png"
plot 'combined.dat' index 2 lw 3 lt 1 t "N-N, PanFS", 'panfs_47K.dat' index 0 lw 3 lt 3 t "N-1, PanFS"
replot
set terminal postscript enhanced 20 eps
set yrange [0:*]

set xrange [0:1500]
set output "panfs_2CUs.eps"
plot 'combined.dat' index 0 t "N-1, PLFS", '' index 2 t "N-N, PanFS", '' index 1 t "N-1, PanFS"
set terminal png giant
set output "panfs_2CUS.png"
replot

set xrange [0:*]
set yrange [0:35000]
set output "panfs_old.eps"
plot 'combined.dat' index 0 t "N-1, PLFS", '' index 2 t "N-N, PanFS", '' index 1 t "N-1, PanFS"

set terminal png giant
set output "panfs.png"
plot 'combined.dat' index 2 lw 3 t "N-N, PanFS", '' index 0 lw 3 t "N-1, PLFS", 'panfs_47K.dat' index 0 lw 3 t "N-1, PanFS"
set yrange [0:*]

set terminal png giant
set output "panfs-zoom.png"
set xrange [0:40]
plot 'combined.dat' index 2 lw 3 t "N-N, PanFS", '' index 0 lw 3 t "N-1, PLFS", 'panfs_47K.dat' index 0 lw 3 t "N-1, PanFS"
set output "panfs-motivation-zoom.png"
plot 'combined.dat' index 2 lw 3 lt 1 t "N-N, PanFS", 'panfs_47K.dat' index 0 lw 3 lt 3 t "N-1, PanFS"
set terminal postscript enhanced 20 eps
set xrange [0:*]

set terminal png giant
set output "panfs-zoom2.png"
set xrange [0:1500]
plot 'combined.dat' index 2 lw 3 t "N-N, PanFS", '' index 0 lw 3 t "N-1, PLFS", 'panfs_47K.dat' index 0 lw 3 t "N-1, PanFS"
set output "panfs-motivation-zoom.png"
plot 'combined.dat' index 2 lw 3 lt 1 t "N-N, PanFS", 'panfs_47K.dat' index 0 lw 3 lt 3 t "N-1, PanFS"
set terminal postscript enhanced 20 eps
set xrange [0:*]


set output "panfs.eps"
set multiplot
set arrow 3 from 1200,0 to 1200,9000 nohead lt 3 lw 2
set arrow 4 from 0,9000 to 1200,9000 nohead lt 3 lw 2
set arrow 5 from 1200,4500 to 3650,9000 head lw 2
plot 'combined.dat' index 0 t "N-1, PLFS", '' index 2 t "N-N, PanFS", 'panfs_47K.dat' index 0 t "N-1, PanFS"
#plot [0:2*pi] sin(t),cos(t) not
#set arrow from 1200,0 to 1200,8500
unset arrow
set xrange [0:1200]
set size 0.45,0.45
set origin 0.5,0.14
set border lt 3
unset key
unset tics
unset ylabel
unset xlabel
replot
unset multiplot
