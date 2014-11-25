%  Figure 3.32b      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%

clf;
zeta=.5;
k=1/zeta;
den=[1 2*zeta 1];
t=0:.1:10;

a=10;
num=[k/a 1];
y1=step(num,den,t);

a=4;
num=[k/a 1];
y2=step(num,den,t);

a=2;
num=[k/a 1];
y3=step(num,den,t);

a=1;
num=[k/a 1];
y4=step(num,den,t);

a=.5;
num=[k/a 1];
y5=step(num,den,t);

axis([0 6 1 3])
plot(t,y1,'-',t,y2,'-',t,y3,'-',t,y4,'-',t,y5,'-'),grid
title('Fig. 3.32b Step response with \xi = 0.5')
xlabel('\omegan t  (rad/sec)')
ylabel('Step response of H(s)')
