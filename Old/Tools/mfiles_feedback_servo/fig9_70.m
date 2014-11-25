%  Figure 9.70      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_70.m  script to plot the step and ramp responses for the 
%  tape drive for the SRL design; x3 and tension
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
ht=[-.2 -.2 .2 .2 0];
j = 0;
K=[.802 2.58 .489 .964 1.21];
L=[403.9; 50.6;13.1;38.6;1166.2];
ac=f-g*K-L*h2;
bc=L;
cc=K;
dc=0;
sysG=ss(f,g,h2,j);
sysD=ss(ac,bc,cc,dc);
[sysCL]=feedback(sysG,sysD)
% Inverse of closed-loop DC gain
N=1/(dcgain(sysCL));
t=0:0.1:20;
[y,t]=step(sysCL,t);
plot(t,N*y);
grid;
xlabel('Time (msec)');
ylabel('Position, x_2, (10^{-5}m)');
title('Fig. 9.70 Step response of tape drive');









