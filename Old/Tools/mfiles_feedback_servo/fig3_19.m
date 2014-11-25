%  Figure 3.19     Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig3_19.m 
clf;
num=[2 1];
den=[1 3 2];
axis ('square')
pzmap(num,den)
grid;
