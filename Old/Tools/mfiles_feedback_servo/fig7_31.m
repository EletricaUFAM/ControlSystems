%  Figure 7.31      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% script to generate Fig. 7.31   
clf;
num = [ 1 0.619];

r=[-3.21+4.77*i -3.21-4.77*i];
den = poly(r);
den = [den 0 0];

rlocus(num,den)
axis([-10 2 -6 6])
grid on;
title(' Fig. 7.31 Root locus for the combined control and estimator')
