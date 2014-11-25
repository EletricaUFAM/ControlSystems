%  Figure 3.35      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  Example 3.26     

clf;
u=-1;  % magnitude of impulsive elevator input (Deg)
num=30*[1 -6];
den=[1 4 13 0];
t=0:.02:5;
y=impulse(u*num,den,t);
zero=[0 0];
tzero=[0 5];
axis([0 5 -2 16])
plot(t,y,'-',tzero,zero,'-'),grid
title('Fig. 3.35  Impulse response of aircraft altitude')
xlabel('Time (sec)')
ylabel('Altitude (ft)')
