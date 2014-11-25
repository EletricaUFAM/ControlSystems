% Fig. 6.46   Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%

clear all;
close all;

num=1;
den=[1 0 0];
w=logspace(-2,2,100);
[m,p]=bode(num,den,w);
loglog(w,m);
grid;
xlabel('\omega (rad/sec)');
ylabel('magnitude');
title('Fig. 6.46 Spacecraft frequency-response magnitude');
