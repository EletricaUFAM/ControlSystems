%  Figure 7.38      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% script for fig. 7.38
clf;
f=[-10 1 0;-16 0 1;0 0 0];
g=[0 0 10]';
h=[1 0 0];
j=0;
[np,dp]=ss2tf(f,g,h,0);
np=[0 0 0 10];
nc=conv([-1 0.718],[1 1.87]);
r=[-0.95+6.17*i -0.95-6.17*i];
dc=poly(r);
num=conv(np,nc);
den=conv(dp,dc);
rlocus(num,den);
axis([-9 4 -9 9])
title('Fig.7.38 Root locus for reduced-order DC Servo design')
