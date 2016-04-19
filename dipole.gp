set term png transparent
set output "./dipole/dipole.png"

unset border
unset key
unset xtics
unset ytics

set clip points
set dummy t, y
set polar
set g polar
set samples 800, 800
set xzeroaxis
set yzeroaxis
set zzeroaxis
set trange [ 0 : 2*pi ] noreverse nowriteback
s='lc 7 lw 2 notitle'
r=0.5
plot sqrt(cos(t)**r) @s ,-sqrt(cos(t)**r) @s