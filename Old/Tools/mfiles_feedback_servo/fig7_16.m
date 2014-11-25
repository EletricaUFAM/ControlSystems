%  Figure 7.16      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% Script to generate fig. 7.16.
clf;
num=1;
den=[1 0 0 0 0];
rlocus(num,den);
title('Fig. 7.16 Symmetric root locus for satellite system')
grid;
