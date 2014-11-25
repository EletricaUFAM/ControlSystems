% Fig. 5.54  Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
% script to generate figure 5.54
% using the general simulation nonlin
N=1;
a=2;
r=0;
num=[1 2 1];
den=[1 0 0 0];
rlocus(num,den)
axis([-6 2 -3 3])
title('Root locus for the system of Figure 5.53')
 z=0:.1:.9;
 wn= 1:6;
 sgrid(z, wn)
 hold off
