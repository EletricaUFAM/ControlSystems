%  Figure 9.66      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_66.m  is a Script to plot Fig. 9.66 the ramp response for the tape drive     4-26-01
%  for the SRL design; x2 and control effort
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
a1=0;b1=1;c1=1;d1=0;
[acl, bcl, ccl, dcl]=series(a1,b1,c1,d1,a,b,c,d);
axis([0 15 0 14])
t=0:.2:15;
syscl=ss(acl,bcl,ccl,dcl);
y=step(syscl, t);
plot(t,y);
grid;
xlabel('Time (msec)');
ylabel('Position x_2, (10^{-5}m)');
hold on;
plot(t,t,'--');
title('Fig. 9.66 (a) Ramp response of SRL tape design');
hold off;
pause;

% control effort
c=-K;
d=1.29;
a1=0;b1=1;c1=1;d1=0;
[acl, bcl, ccl, dcl]=series(a1,b1,c1,d1,a,b,c,d);
axis([0 15 0 .7])
t=0:0.2:15;
yu=step(acl,bcl,ccl,dcl,1, t);
plot(t,yu);
xlabel('Time (msec)');
ylabel('Control effort, e(V)');
grid;
title('Fig. 9.66 (b) Control from ramp response of SRL tape design')
