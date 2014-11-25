%  Figure 9.57     Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_57.m  script is used to draw Fig. 9.57   
%  the root locus for the tape drive
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


rlocus(f,g,h2,j);
v =[-3.0000    1.0000   -1.5000    1.5000];
axis(v);
title('Fig.9.57 Rootlocus for the tape drive');
grid;
hold off
