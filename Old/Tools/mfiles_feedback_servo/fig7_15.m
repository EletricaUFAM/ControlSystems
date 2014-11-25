%  Figure 7.15      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% Script to generate fig. 7.15.
clf;
num=-1;
den=[1 0 -1];
rlocus(num,den);
title('Fig. 7.15 Symmetric root locus for a first-order system')
grid;
