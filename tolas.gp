# set terminal png transparent nocrop enhanced size 450,320 font "arial,8" 
# set output 'surface2.4.png'
set term png transparent
set output "./dipole/tolas.png"
unset border
set dummy u, v
set key bmargin center horizontal Right noreverse enhanced autotitle nobox
set parametric
set arrow 1 from -3, 0, 0 to 3, 0, 0 lw 1 #x軸作成
set arrow 2 from 0, -3, 0 to 0, 3, 0 lw 1 #y軸作成
set arrow 3 from 0, 0, -2 to 0, 0, 2 lw 1 #z軸作成
set view 45, 50, 1, 1
set isosamples 20,20
unset tics
# set hidden3d back offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set style data lines
set urange [ 0 : 2*pi ] noreverse nowriteback
set vrange [ 0 : 2*pi ] noreverse nowriteback
set zrange [ -1 : 1 ] noreverse nowriteback
unset key
f(v)=(1-0.2*cos(v))**5
splot (f(v))*cos(u),(f(v))*sin(u),sin(v) lt 7