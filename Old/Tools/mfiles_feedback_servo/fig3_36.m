%  Figure 3.36      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%

clf;
zeta =.5;
num=1;
k =1/zeta;
den1=[1 2*zeta 1];

a=100;
den2=[k/a 1];
den=conv(den1,den2);
t=0:.1:8;
y1=step(num,den,t);

a=5;
den2=[k/a 1];
den=conv(den1,den2);
y2=step(num,den,t);

a=2;
den2=[k/a 1];
den=conv(den1,den2);
y3=step(num,den,t);

a=1;
den2=[k/a 1];
den=conv(den1,den2);
y4=step(num,den,t);

plot(t,y1,'-',t,y2,'--',t,y3,'-.',t,y4,':'),grid
title('Fig. 3.36 Step response with extra pole, \xi = 0.5')
xlabel('\omegan t  ')
ylabel('y(t)')
text(.9,.9,'\alpha=100')
text(2.5,.9,'5')
text(3.2,.9,'2')
text(4.5,.9,'1')
