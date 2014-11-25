%  Figure 9.59      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_59.m is a Script to generate Fig. 9.59  
%  Compensated rootlocus for the tape drive
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
num=conv([1 .968],[1 .968]);
den= conv([1 9.68],[1 50]);
num=50*num;
[a,b,c,d]=tf2ss(num,den);
[A,B,C,D]=series(a,b,c,d,f,g,h2,j);

rlocus(A,B,C,D);
grid;
v=[-11 1 -2 2]; axis(v)
title('Fig. 9.59  Root locus of the compensated tape drive')
%  Fig59.m is a Script to generate Fig. 9.59            4-26-01
%  Compensated rootlocus for the tape drive
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
num=conv([1 .968],[1 .968]);
den= conv([1 9.68],[1 50]);
num=50*num;
[a,b,c,d]=tf2ss(num,den);
[A,B,C,D]=series(a,b,c,d,f,g,h2,j);

rlocus(A,B,C,D);
grid;
v=[-11 1 -2 2]; axis(v)
title('Fig. 9.59  Root locus of the compensated tape drive')
