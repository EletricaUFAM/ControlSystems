% Fig. 6.7    Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%

clear all;
close all;

num=1;
den=[10 1];
w=logspace(-3,3);
[m,p]=bode(num,den,w);;
m1=ones(50,1)./m;
loglog(w,m1);
axis([.001 10 .1 100])
grid;
xlabel('\omega (rad/sec)');
ylabel('magnitude');
title('Fig. 6.7 Magnitude plot for j\omega \tau + 1; \tau = 0.1');

