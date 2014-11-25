%  Figure 3.30      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  Example 3.27     
%                  

clf;
tr=.6;
Wn=1.8/tr;
ts=3;
sig=4.6/ts;
zeta=.6;
theta=asin(zeta);
axis('square')
Ilim=3;
axis([-5 1 -Ilim Ilim])
eta = -pi/2:.1:pi/2;
rew=-Wn*cos(eta);
imw=Wn*sin(eta);
res=[-sig -sig];
ims=[-Ilim Ilim];
R=tan(theta)*Ilim;
red=[-R 0 -R];
imd=[-Ilim 0 Ilim];
plot(rew,imw,'--',res,ims,'--',red,imd,'--'),grid
hold on
zer=[0 0];
plot([-5 1],zer,'-',zer,[-Ilim Ilim],'-')
title('Fig. 3.30 Allowable s-plane region for Example 3.27')
xlabel('Real s')
ylabel('Imag s')
hold off
axis('normal')
