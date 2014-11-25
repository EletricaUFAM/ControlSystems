%  Figure 3.46      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  Example 3.28     
clf;
t=[0 .1 .2 .3 .4 .5 1 1.5 2 2.5 3 4 10];
y=[0 .005 .034 .085 .140 .215 .510 .7 .817 .890 .932 .975 1];
axis([0 6 -.2 1])
plot(t,y,'o'),grid
title('Fig. 3.46 Step response data')
ylabel('y(t)')
xlabel('Time (sec)')
