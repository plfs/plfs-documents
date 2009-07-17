#!/tmp/gnuplot-ppc/bin/gnuplot -persist
set label 1 "PLACEHOLDER" at -1.5, 5, 0 left norotate back nopoint offset character 0, 0, 0
f(x) = x
g(x) = x * -1
set terminal postscript enhanced 32 eps
set output "fake.eps"
plot f(x) not lt 1,g(x) not lt 1
