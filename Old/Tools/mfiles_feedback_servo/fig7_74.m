%  Figure 7.74      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%% fig7_74.m
%% Heat Exchanger
clf;
[t]=sim('fig7_73cl');
plot(t,y);
grid;
title('Fig. 7.74: Open and Closed-loop responses for heat exchanger');
text(50,1.2,'Closed-loop');
xlabel('Time (sec)');
ylabel('Output Temperature, y');
hold on;
[t1]=sim('fig7_73ol');
plot(t1,yol);
text(50,0.4,'Open-loop');
hold off;





