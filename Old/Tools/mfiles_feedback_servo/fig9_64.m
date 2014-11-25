%  Figure 9.64      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_64.m  is a script to plot Fig. 9.64 the step response  
%  for the tape drive      
%  for the SRL design
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
a=f-g*K;
b=1.29*g;
c=h2;
d=j;

t=0:0.2:15;
y=step(a,b,c,d,1, t);
plot(t,y);
v=[0, 15, 0, 1.2];
axis(v);
grid;
xlabel('Time (msec)');
ylabel('Position x_2, (10^{-5}m)');
title('Fig. 9.64 Step response at x2 of SRL tape design')
