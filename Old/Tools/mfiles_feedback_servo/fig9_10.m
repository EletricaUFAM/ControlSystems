%  Figure 9.10      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_10.m is a script to generate Fig 9.10    
%  the poles and zeros pattern of the notch  network
clf;
nnotch=[1/.81 0  1] ;
dnotch=[1/625 2/25  1];
pzmap(nnotch,dnotch);
grid;
title('Fig. 910 Poles and zeros of the notch network')
