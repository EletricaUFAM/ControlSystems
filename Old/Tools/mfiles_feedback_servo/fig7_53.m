%  Figure 7.53      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% script for Fig. 7.53             
% 
clf;
dp=[1 1 0];
np=[1];
nc=conv([1 1],[8.32 0.8]);
dc=conv([1 4.08],[1 0.0196]);
num=conv(np,nc);
den=conv(dp,dc);
dcl=[0 0 num]+den; % closed-loop denominator
t=0:.1:5;
sys=tf(num,dcl);
y=step(sys,t);
plot(t,y)
grid;
xlabel('Time (sec)');
ylabel('y');
title('Fig.7.52 Step response for lag compensation design');
[a,b,c,d]=tf2ss(nc,dc);
% Samplig period
ts=0.1;
% Convert controller to discrete
[ad,bd,cd,dd]=c2dm(a,b,c,d,ts,'zoh');
[ncd,dcd]=ss2tf(ad,bd,cd,dd);
% response comparison of continuous and digital control.
sim('fig7_52')
figure(1)
plot(ycd(:,1),ycd(:,2))
hold on
plot(ycd(:,1),ycd(:,3),'--')
title('Figure 7.53(a) Output Responses of Digital and Continuous Controllers')
xlabel('Time (sec)');
ylabel('y');
gtext('continuous controller')
gtext('digital controller')
grid
hold off
pause;
figure(2)
plot(ucd(:,1),ucd(:,2))
hold on
plot(ucd(:,1),ucd(:,3),'--')
title('Figure 7.53(b)  Control Responses of Digital and Continuous Controllers')
xlabel('Time (sec)');
ylabel('u');
gtext('continuous controller')
gtext('digital controller')
grid
hold off
