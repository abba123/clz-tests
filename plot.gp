reset
set xlabel 'function'
set xtics add ("iteration" 1)
set xtics add ("binary search" 2)
set xtics add ("byte shift" 3)
set xtics add ("recursive" 4)
set xtics add ("harley" 5)
set ylabel 'sec'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot[0:6][:0.045] 'output.txt' using (1):1 title "iteration" with points, \
'output.txt' using (2):2 title "binary search" with points, \
'output.txt' using (3):3 title "byte shift" with points, \
'output.txt' using (4):4 title "recursive" with points, \
'output.txt' using (5):5 title "harley" with points
