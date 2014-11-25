%  Figure 9.54      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_54.m is a script to generate Fig. 9.54
clf;
[t,x,y,e]=sim('fig9_53and54');

plot(t,e);
xlabel('Time (sec)');
ylabel('e');
title('Fig. 9.54(b)');
grid on;
pause;
plot(t,y);
xlabel('Time (sec)');
ylabel('F/A');
title('Fig. 9.54(c)');
grid on;
