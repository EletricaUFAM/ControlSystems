%  Figure 3.23     Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig3_23.m                                                     
%
clf;
num=1;
t=0:.0001:12;

zeta=0;
den=[1 2*zeta 1];
y1=impulse(num,den,t);

zeta=.1;
den=[1 2*zeta 1];
y2=impulse(num,den,t);

zeta=.2;
den=[1 2*zeta 1];
y3=impulse(num,den,t);

zeta=.3;
den=[1 2*zeta 1];
y4=impulse(num,den,t);

axis([0 12 -1 1])
plot(t,y1,'-',t,y2,'-',t,y3,'-',t,y4,'-'),grid
title('Fig. 3.23 (a) Impulse response vs. \xi')
xlabel('\omegan t ')
ylabel('y(t)')
hold on

zeta=.4;
den=[1 2*zeta 1];
y1=impulse(num,den,t);

zeta=.5;
den=[1 2*zeta 1];
y2=impulse(num,den,t);

zeta=.6;
den=[1 2*zeta 1];
y3=impulse(num,den,t);

zeta=.7;
den=[1 2*zeta 1];
y4=impulse(num,den,t);

plot(t,y1,'-',t,y2,'-',t,y3,'-',t,y4,'-')

zeta=.8;
den=[1 2*zeta 1];
y1=impulse(num,den,t);

zeta=.9;
den=[1 2*zeta 1];
y2=impulse(num,den,t);

zeta=1;
den=[1 2*zeta 1];
y3=impulse(num,den,t);

plot(t,y1,'-',t,y2,'-',t,y3,'-')
hold off
pause;
%  Figure 3.23b     
clf
num=1;
t=0:.0001:12;

zeta=0;
den=[1 2*zeta 1];
y1=step(num,den,t);

zeta=.1;
den=[1 2*zeta 1];
y2=step(num,den,t);

zeta=.2;
den=[1 2*zeta 1];
y3=step(num,den,t);

zeta=.3;
den=[1 2*zeta 1];
y4=step(num,den,t);

axis([0 12 0 2])
plot(t,y1,'-',t,y2,'-',t,y3,'-',t,y4,'-'),grid
title('Fig. 3.23 (b) Step response vs. \xi')
xlabel('\omegan t ')
ylabel('y(t)')
hold on

zeta=.4;
den=[1 2*zeta 1];
y1=step(num,den,t);

zeta=.5;
den=[1 2*zeta 1];
y2=step(num,den,t);

zeta=.6;
den=[1 2*zeta 1];
y3=step(num,den,t);

zeta=.7;
den=[1 2*zeta 1];
y4=step(num,den,t);

plot(t,y1,'-',t,y2,'-',t,y3,'-',t,y4,'-')

zeta=.8;
den=[1 2*zeta 1];
y1=step(num,den,t);

zeta=.9;
den=[1 2*zeta 1];
y2=step(num,den,t);

zeta=1;
den=[1 2*zeta 1];
y3=step(num,den,t);

plot(t,y1,'-',t,y2,'-',t,y3,'-')
hold off
