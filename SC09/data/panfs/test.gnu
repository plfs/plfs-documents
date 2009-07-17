# output
set terminal postscript enhanced eps color solid
set output "pressureSlopes.eps"

# set spaging between titels of plot
set key spacing 2

# set data syle line
set  style data l
# vertical lines
set arrow 1 from 0.15,-1.45 to 0.15,1  nohead lt 5 
set arrow 2 from 0.3,-1.45 to 0.3,1  nohead lt 5

# text inside the graph
set label "aortic" at graph 0.19,0.15 
set label "valve" at graph 0.19,0.05  
set label "open" at graph 0.19,-0.05  

#more than one plot
set multiplot
#set origin and size of first plot
set origin 0.0,0.5
set size 1.0,0.5

### upper graph 
#y axis
set ylabel "normalized pressure P"
set xrange [0:1]
#x axis
set format x ""
unset xtics
unset xlabel
#y2 axis (this is a trick to achieve correct alignment) 
set y2label " "
set y2range [0:1]
set y2tics  ("    " 0.17)

# plot
plot "pressureSlopes.dat" u ($1*0.01):(($3+$5)/140) t "Pa0" lt 5 lw 3,\
     "pressureSlopes.dat" u($1*0.01):($3/140) t "PWk" lt 8 lw 3


### lower graph
set origin 0.0,0.0
set size 1.0,0.5

#y axis
set ylabel "normalized Qin"
set ytics nomirror
#y2 axis
set y2range [*:*]
set y2label "scaled Pex"
set y2tics -0.2,0.2,1
#x axis
set xlabel "time [s]"
set xtics 0,0.1,1
set xtics nomirror
set format x 
#no labels and arrows in second graph
unset arrow 1
unset arrow 2
unset label 1
unset label 2
unset label 3
# plot
plot "pressureSlopes.dat" u ($1*0.01):(($6/4)/100) t "Qin" lw 3,\
     "pressureSlopes.dat" u($1*0.01):($5/100) t "Pex" lt 9 lw 3

unset multiplot
