%  Figure 9.71      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_71.m  script to plot the Ramp and tension responses for the  
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
% add tension output
[acl,bcl,ccl,dcl]=ssdata(sysCL);
cclt=[ccl;ht, 0*ones(1,5)];
dclt=[dcl;0];
sysCLt=ss(acl,bcl,cclt,dclt);

% Augment with integrator
a1=0;
b1=1;
c1=1;
d1=0;
sys1=ss(a1,b1,c1,d1);
[sysCL1t]=series(sys1,sysCLt);
[y1t,t]=step(sysCL1t,t);
plot(t,N*y1t(:,1));
hold on;
plot(t,t,'--');
grid on;
xlabel('Time (msec)');
ylabel('Position, x_2, (10^{-5}m)');
title('Fig. 9.71 (a) Ramp response of tape drive');
hold off;
pause;
% Tension

plot(t,N*y1t(:,2));
grid on;
xlabel('Time (msec)');
ylabel('Tension, (N)');
title('Fig. 9.71 (b) Tension response of tape drive');









