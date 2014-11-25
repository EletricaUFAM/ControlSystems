%  Figure 3.21      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig3_21.m      
%  Example 3.25     
clf;
num=[2 1];
den=[1 3 2];
t=0:0.1:6;
y=impulse(num,den,t);
plot(t,y,'-')
grid
title('Fig. 3.21  Example 3.25 system response.')
xlabel('Time (sec)')
ylabel('h(t)')
