%  Figure 3.04     Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%% fig3_04.m                                            
%Satellite Pulse response Example. 3.14 
clf;
dI=1/5000;
F=[0 1;0 0];
G=[0;dI];
H=[1 0];
J=[0];
sys=ss(F,G,H,J);
t=0:0.01:10;
%pulse input
u1=[zeros(1,500) 25*ones(1,10) zeros(1,491)];
[y1]=lsim(sys,u1,t);
plot(t,u1);
grid;
xlabel('Time (sec)');
ylabel('Thrust Fc');
title('Fig. 3.4(a)')
axis([0 10 0 26]);
pause;
% conversion to degrees
ff=180/pi;
y1=ff*y1;
plot(t,y1);
grid;
xlabel('Time (sec)');
ylabel('\theta (deg)');
title('Fig. 3.4(b)')

