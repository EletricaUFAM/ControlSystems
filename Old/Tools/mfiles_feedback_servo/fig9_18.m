%  Figure 9.18      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_18.m is a script to generate Fig 9.18,     
%  the symmetric  rootlocus for the LQR symmetric rootlocus 
%  compensator of the satellite position control, non-colocated case

% parameter values
m=[1, 0.1]; k=[0, 0.091] ; d=[0, 0.0036]; k1=[0, 0.4];
% call model
[f,g,h,j] = twomass(m,k,d);
s=[f, g;h, 0];r=[0*g;1]; n=s\r;nx=n(1:4);nu=n(5);
% call model
[f1,g,h,j] = twomass(m,k1,d);
% Form G(s)G(-s) in state-space 
a=[f, 0*f;
-h'*h, -f'];
b=[g;0*g];
c=[0*h, g'];
d=[0];

hold off; clf;
sysGG=ss(a,b,c,d);
rlocus(sysGG);
grid;
v=[-2 2 -1.5 1.5];axis(v); 
title('Fig. 9.18 Symmetric rootlocus for the satellite') 
