% Fig. 6.9   Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%

clear all;
close all;
clf

num=2000*[1 0.5];
den=conv([1 10 0],[1 50]);
w=logspace(-2,3);
[m,p]=bode(num,den,w);

figure(1)
loglog(w,m);
grid;
xlabel('\omega (rad/sec)');
ylabel('magnitude');
title('Fig. 6.9 Composite plots (a) magnitude');

figure(2)
semilogx(w,p);
grid;
xlabel('\omega (rad/sec)');
ylabel('phase');
title('Fig. 6.9 (b) phase');
