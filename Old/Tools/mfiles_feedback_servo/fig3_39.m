%  Figure 3.39      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%
clf;
k=7.5;
numCL=[k k];
denCL=[1 5 k-6 k];
t=0:.05:12;
y1=step(numCL,denCL,t);
k=13;
numCL=[k k];
denCL=[1 5 k-6 k];
y2=step(numCL,denCL,t);
k=25;
numCL=[k k];
denCL=[1 5 k-6 k];
y3=step(numCL,denCL,t);
axis([0 12 -1 3]);
plot(t,y1,t,y2,t,y3)
grid;
xlabel('Time (sec)');
ylabel('y');
title('Fig. 3.39 transient responses')
axis('normal');

