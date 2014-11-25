%  Figure 9.65      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_65.m  script to plot the response for the tape drive 
%  for the SRL design; control and tension outputs
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
K=[.802 2.58 .489 .964 1.21]
a=f-g*K;
b=1.29*g;
c=h2;
d=j;
axis([0 15 0 1.2])
t=0:.2:15;
y=step(a,b,c,d,1, t);
% control
c=-K;
d=1.29;
yu=step(a,b,c,d,1,t);
plot(t,yu);
grid;
xlabel('Time (msec)');
ylabel('Control effort, e (V)');
title('Fig. 9.65 (a)');
pause;
% tension
ht=[-.2 -.2 .2 .2 0];
d=0;
yT=step(a,b,ht,d,1,t);
plot(t,yT);
grid;
xlabel('Time (msec)');
ylabel('Tension, T (N)');
title('Fig. 9.65 (b)');

