%  Figure 3.31      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%


clf;
zeta=.5;
k=1/zeta;
den=[1 1 1];

a=10;
num=[k/a 1];
t=0:.1:10;
y1=step(num,den,t);

a=4;
num=[k/a 1];
t=0:.1:10;
y2=step(num,den,t);

a=2;
num=[k/a 1];
t=0:.1:10;
y3=step(num,den,t);

a=1;
num=[k/a 1];
t=0:.1:10;
y4=step(num,den,t);

plot(t,y1,'-',t,y2,'-',t,y3,'-',t,y4,'-'),grid
title('Fig. 3.31 Step response with \xi = 0.5')
xlabel('\omegan t  (rad/sec)')
ylabel('Step response of H(s)')
