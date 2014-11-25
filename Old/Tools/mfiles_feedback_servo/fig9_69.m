%  Figure 9.69      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_69.m  sis a cript to plot Fig. 9.69 the root locus for the tape drive
%  for the SRL design; 
clf;
f =[0    2.0000         0         0         0;
   -0.1000   -0.3500    0.1000    0.1000    0.7500;
         0         0         0    2.0000         0;
    0.4000    0.4000   -0.4000   -1.4000         0;
         0   -0.0300         0         0   -1.0000];

g = [0;
     0;
     0;
     0;
     1];
h2 =[0     0     1     0     0];
j = 0;
K=[.802 2.58 .489 .964 1.21];
L=[403.9; 50.6;13.1;38.6;1166.2];
ac=f-g*K-L*h2;
bc=L;
cc=K;
dc=0;
[aol,bol,col,dol]=series(ac,bc,cc,dc,f,g,h2,j);
rlocus(aol,bol,col,dol);
grid;
v=[-7, 1, -6, 6];
axis(v);
title('Fig. 9.69: Root locus for the SRL design of the tape drive')
