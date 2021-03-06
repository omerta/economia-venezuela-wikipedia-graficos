# glengemann v0.1
# wxt
#set terminal wxt size 500,412 enhanced font 'Verdana,10' persist
#set terminal wxt size 600,512 enhanced font 'Verdana,10' persist
# png
set terminal pngcairo size 750,462 enhanced font 'Verdana,10'
set output 'importaciones_exportaciones_venezuela_1994_2014.png'
# svg
set terminal svg size 800,462 fname 'Verdana, Helvetica, Arial, sans-serif' \
fsize '10'
set output 'importaciones_exportaciones_venezuela_1994_2014.svg'

set key top left
set xlabel 'Años'
set ylabel 'Millones de US$'

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1   # --- red
plot 'importaciones_exportaciones_venezuela_1994_2014.dat' index 0 with linespoints ls 1 title 'Exportaciones', \
     ''                                         index 1 with linespoints ls 2 title 'Importaciones'