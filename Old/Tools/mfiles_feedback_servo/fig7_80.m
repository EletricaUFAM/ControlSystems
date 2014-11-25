%  Figure 7.80      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%% fig7_80.m
%% Simulink Simulation for Position Control
clf;
[t,x,y]=sim('fig7_79');
plot(t',x');
grid;
xlabel('Time (sec)');
ylabel('Amplitude');
title('Fig. 7.80: Position Control');
text(5,0.95,'Output');
text(3.5,0.3,'x_2');




