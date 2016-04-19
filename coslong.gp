set term png transparent
set output "./dipole/coslong.png"
unset border #軸消去
unset tics #目盛り消去
unset key #凡例消去
set arrow 1 from -0.3, 0, 0 to 0.3, 0, 0 lw 1 #x軸作成
set arrow 2 from 0, -0.4, 0 to 0, 0.4, 0 lw 1 #y軸作成
set arrow 3 from 0, 0, -0.3 to 0, 0, 0.3 lw 1 #z軸作成
set xr [-0.5:0.5] #x軸範囲指定
set yr [-0.5:0.5] #y軸範囲指定
set zr [-0.5:0.5] #z軸範囲指定

set parametric #媒介変数表示系
set view 70, 20 #視点指定
set ur [0:pi] #パラメータu範囲
set vr [-pi:pi] #パラメータv範囲
set isosample 20, 20 #面描画に使用する線の本数指定
# set size 0.975, 1.5 #縮尺変更

x(u,v)=cos(u)*cos(v)
y(u,v)=sin(u)*cos(v)
z(u,v)=sin(v)

#球面調和関数
s=1/(4*pi)
pp=2*3/(4*pi)
np=0.5*3/(4*pi)
# p=3/(4*pi)
d0=5/(16*pi)
d1=15/(4*pi)
d2=15/(16*pi)
px(u,v)=cos(u)*cos(v)
py(u,v)=sin(u)*cos(v)
pz(u,v)=sin(v)
dpos1(u,v)=cos(u)*cos(v)*sin(v)
dneg1(u,v)=sin(u)*cos(u)*sin(v)
dpos2(u,v)=cos(2*u)*cos(v)**2
dneg2(u,v)=sin(2*u)*cos(v)**2
d0(u,v)=(sin(v)**2)-1

# #軌道の位相を考慮
posp(u,v)= px(u,v)>0 ? 0 : px(u,v)
negp(u,v)= px(u,v)<0 ? 0 : px(u,v)

# #s軌道
# splot s*x(u,v), s*y(u,v), s*z(u,v) lc rgb 'red' lw 1

# #p軌道
splot 	pp*posp(u,v)**2*x(u,v), pp*posp(u,v)**2*y(u,v), pp*posp(u,v)**2*z(u,v) lc rgb 'red' lw 1#,\
	#pp*negp(u,v)**2*x(u,v), 0.5*pp*negp(u,v)**2*y(u,v), 0.5*pp*negp(u,v)**2*z(u,v) lc rgb 'red' lw 1

# #d軌道
# splot d0*posp(u,v)**2*x(u,v), d0*posp(u,v)**2*y(u,v), d0*posp(u,v)**2*z(u,v) lc rgb 'blue' lw 1
# splot d0*negp(u,v)**2*x(u,v), d0*negp(u,v)**2*y(u,v), d0*negp(u,v)**2*z(u,v) lc rgb 'red' lw 1
