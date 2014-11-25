%  Figure 3.33      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
clf;
a=1;
zeta=.5;
k=1/zeta;
den=[1 1 1];
num=[k/a 1];
t=0:.1:10;
yT=step(num,den,t);

num=[0 1];
yo=step(num,den,t);

num=[k/a 0];
yd=step(num,den,t);

axis([0 10 -.2 1.8])
plot(t,yo,'-',t,yd,'-',t,yT,'--'),grid
title('Fig. 3.33 Step response and its derivative')
xlabel('Time (sec)')
ylabel('y(t)')
