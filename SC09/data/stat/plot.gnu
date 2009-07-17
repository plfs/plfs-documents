set terminal postscript enhanced 20 eps
set style data linespoints
set logscale y 10
set xrange [0:650]
set yrange [0.01:1]
set grid y
#set ytics mirror 
#set y2axis
set key top left 
set ylabel "Stat Time (s)"
set xlabel "Number of Writers"


set output "stat_full.eps"
plot 'output.noopt' index 0 t "Open PLFS Read", \
    'output.really_stat.no_statahead.noopt' index 0 t "Open PLFS Stat No SA", \
    'output.really_stat.statahead.noopt' index 0 t "Open PLFS Stat SA", \
    'output.opt' index 0 t "Closed PLFS", \
    'output.panfs.nocache' index 0 t "Closed PanFS" 

set output "stat.eps"
plot 'output.really_stat.statahead.noopt' index 0 t "PLFS Open File", \
    'output.opt' index 0 t "PLFS Closed File", \
    'output.panfs.nocache' index 0 t "PanFS Closed File" 

set terminal png giant
set output "stat.png"
plot 'output.really_stat.statahead.noopt' index 0 lw 3 t "PLFS Open File", \
    'output.opt' index 0 lw 3 t "PLFS Closed File", \
    'output.panfs.nocache' index 0 lw 3 t "PanFS Closed File" 

set yrange [0.01:10]
set terminal png giant
set output "stat_full.png"
plot 'output.noopt' index 0 t "Open PLFS (Read)", \
    'output.really_stat.statahead.noopt' index 0 lw 3 t "Open PLFS (Stat)", \
    'output.opt' index 0 lw 3 t "Closed PLFS (Readdir)", \
    'output.panfs.nocache' index 0 lw 3 t "Closed PanFS" 

set yrange [*:*]
unset logscale y
set terminal png giant
set output "stat_full_nolog.png"
plot 'output.noopt' index 0 t "Open PLFS (Read)", \
    'output.really_stat.statahead.noopt' index 0 lw 3 t "Open PLFS (Stat)", \
    'output.opt' index 0 lw 3 t "Closed PLFS (Readdir)", \
    'output.panfs.nocache' index 0 lw 3 t "Closed PanFS" 
