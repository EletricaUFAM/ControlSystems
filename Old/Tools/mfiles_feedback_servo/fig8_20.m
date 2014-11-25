% Fig. 8.20   Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%

clear all;
close all;

t = 0:.0005:.1;
w = 60*2*pi;
th = w*t;
yc=cos(th);
plot(t,yc,'-'),grid
axis([0 .1 -1.2 1.2])
hold on
title('Fig. 8.20  Example of aliasing')
xlabel('Time (sec)')

% now do 50 Hz samples of the sinusoid

T=1/50;
ts = 0:T:.1;
ths = w*ts;
ys=cos(ths);

% best fit through the sampled points --
ta = 0:.005:.1;
wa = 10*2*pi;
tha = wa*ta;
ya=cos(tha);

plot(ts,ys,'*',ta,ya,'--')
hold off
