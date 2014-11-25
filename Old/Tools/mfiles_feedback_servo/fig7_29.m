%  Figure 7.29      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%% fig7_29.m
%% SRL for estimator design
clf;
num=[1];
den=conv([1 0 1],[1 0 1]);
rlocus(num,den);
grid;
title('Fig. 7.29: SRL for Estimator Design');
text(0,0.9,'q --> 0');
text(0,-0.9,'q --> 0');
text(-5,4,'q-->\infty');
text(-5,-4,'q-->\infty');




