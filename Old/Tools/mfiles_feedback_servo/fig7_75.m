%  Figure 7.75      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%% fig7_75.m 
%% Heat Exchanger
clf;
[t]=sim('Fig7_73cl');
plot(t,u);
grid;
title('Fig. 7.75: Control effort for heat echanger');
xlabel('Time (sec)');
ylabel('Control, u');




