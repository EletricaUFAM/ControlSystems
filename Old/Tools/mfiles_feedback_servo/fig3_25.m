%  Figure 3.25      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%% fig3_25.m 
clf;
num=[1];          % form transfer function
den=[1 2*.2 1];
t=0:.01:30;       % define time vector
sys=tf(num,den);  % define system
y=impulse(sys,t); % compute impulse response
plot(t,y)
hold on
% compute e^(-.2t)
ne=1;
de=[1 .2];
syse=tf(ne,de);
ye=impulse(syse,t);
plot(t,ye,':r')
plot(t,-ye,':r'), grid
axis([0 30 -1 1])
hold off
title('Figure 3.25')
xlabel('Time (sec)')
ylabel('h(t)')
text(7,.3,'e^{-\sigma t}');
text(7,-.3,'-e^{-\sigma t}');

