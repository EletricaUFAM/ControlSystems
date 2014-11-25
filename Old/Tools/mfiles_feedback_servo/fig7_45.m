%  Figure 7.45      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% LTR Example 
% 
clf;
F=[0 1; 0 0];
G=[0;1];
H=[1 0];
J=[0];
sys0=ss(F,G,H,J);
H1=[1 0];
sys=ss(F,G,H1,J);
Q=H1'*H1;
r=1;
[k]=lqr(F,G,Q,r);
sys1=ss(F,G,k,0);
q=10;
gam=q*G;
q1=gam'*gam;
rv=1;
[l]=lqe(F,gam,H,q1,rv);
aa=F-G*k-l*H;
bb=l;
cc=k;
dd=0;
% run SIMULINK simulation
[t]=sim('fig7_45');
plot(t,v);
grid;
xlabel('Time (sec)');
ylabel('Sensor noise signal');
Title('7.45(a) Sample band-limited white sensor noise');
pause;
plot(t,u);
grid;
xlabel('Time (sec)');
ylabel('Control signal');
title('7.45(b) Sample of control signal due to band-limited white noise excitation');
