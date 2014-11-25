% Fig. 8.15   Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%

clear all;
close all;

alpha = .7;
numGz=1 - alpha;
denGz=[1 -alpha];  

K = [0 100];
r=rlocus(numGz,denGz,K);
subplot(1,2,1)
plot(real(r),[0;0],'-'),grid
axis('square')
axis([-1.5 1.5 -1.5 1.5])
hold on
plot(alpha,0,'x')
title('Fig. 8.15a  z-plane locus')
xlabel('Re(s)')
ylabel('Im(s)')

% unstable point

Ku = (1 + alpha)/(1 - alpha);
ru=rlocus(numGz,denGz,Ku);
plot(ru,0,'*')

% now put in unit circle

th=0:.1:2.1*pi;
xc=cos(th);
yc=sin(th);
plot(real(r),[0;0],'-',xc,yc,'-')
plot(alpha,0,'x')
title('Fig. 8.15 (a)  z-plane locus')
xlabel('Re(s)')
ylabel('Im(s)')
hold off

% now do s-plane locus
% assume T = 1 sec

T=1;
so = -log(alpha)/T;
numGs=so;
denGs=[1 so];
subplot(1,2,2)
K = [0 100];
rs=rlocus(numGs,denGs,K);
ru=rlocus(numGs,denGs,Ku);

plot(real(rs),[0;0],'-',ru,0,'*'),grid
axis([-5 1 -3 3])
axis('square')
hold on
plot(-so,0,'x')
title('Fig. 8.15 (b)  s-plane locus')
xlabel('Re(s)')
ylabel('Im(s)')
hold off


