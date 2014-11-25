%  Figure 9.61      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_61.m is a Script to generate Fig. 9.61        
%  Ramp response of compensated tape drive
%
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
num=3*50*num;
[a,b,c,d]=tf2ss(num,den);
[A,B,C,D]=series(a,b,c,d,f,g,h2,j);
[ac,bc,cc,dc]=cloop(A,B,C,D);
t=0:.1:30;

% Lead in FB loop
sys1=ss(f,g,h2,j);
sys2=ss(a,b,c,d);
sys222=feedback(sys1,sys2);
[acl,bcl,ccl,dcl]=ssdata(sys222);
N=-ccl*inv(acl)*bcl+dcl;
N=1/N;

% add tension output
ht=[-0.2,   -0.2,    0.2,    0.2,         0];
[acl,bcl,ccl,dcl]=ssdata(sys222);
cclt=[ccl;ht, 0*ones(1,2)];
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
title('Fig. 9.61 (a) Ramp response of tape drive');
hold off;
pause;
% Tension

plot(t,N*y1t(:,2));
grid on;
xlabel('Time (msec)');
ylabel('Tension, (N)');
title('Fig. 9.61 (b) Tension response of tape drive');









