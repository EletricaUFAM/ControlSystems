%  Figure 9.60      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_60.m is a Script to generate Fig. 9.60       
%  Step response of compensated tape drive
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
yyy2=step(sys222,t);
plot(t,N*yyy2);
grid;
title('Fig. 9.60 Step response of compensated tape drive');
xlabel('Time (msec)');
ylabel('Position x_2 (10^{-5}m)');

