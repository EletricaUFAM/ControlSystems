%  Figure 4.29      Feedback Control of Dynamic Systems, 3e
%                   Franklin, Powell, Emami
%
numG=2;
den=[1 1 2];
% add integrator
denG=conv(den,[1 0]);
t=0:.03:10;
y=step(numG,denG,t);
axis('square');
plot(t,t,t,y);
grid;
title('Fig. 4.29 Relationship between ramp response and Kv');
xlabel('Time (sec)');
ylabel('r, y');
axis('normal')


