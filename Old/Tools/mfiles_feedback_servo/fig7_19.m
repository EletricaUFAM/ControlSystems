%  Figure 7.19      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% fig7_19.m 
% script to generate Fig. 7.19, symmetric root locus for the inverted pendulum.
clf;
zer=[-2 2];
pol=[-1 -1 1 1];
num = poly(zer);
den = poly(pol);
rlocus(-num,den);
axis([-4 4 -3 3]);
title('Fig.7.19  Symmetric root locus for the inverted pendulum')


