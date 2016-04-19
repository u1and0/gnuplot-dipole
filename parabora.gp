set term png transparent
set output "./dipole/parabora.png"

unset key
unset xtics
unset ytics

set clip points
set dummy t, y
set polar
set g polar
unset border
set samples 1000, 1000
# set xzeroaxis
# set yzeroaxis
# set zzeroaxis
set trange [ 0 : 2*pi ] noreverse nowriteback
plot sqrt(-cos(t)) lc 7 lw 2 notitle