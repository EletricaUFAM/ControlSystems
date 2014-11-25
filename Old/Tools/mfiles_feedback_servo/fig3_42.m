%  Figure 3.42      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
clf;
t=0:.05:10;
k=1;
ki=0;
numCL=[k ki];
denCL=[1 3 2+k ki];
y1=step(numCL,denCL,t);
ki=1;
numCL=[k ki];
denCL=[1 3 2+k ki];
y2=step(numCL,denCL,t);
k=10;
ki=5;
numCL=[k ki];
denCL=[1 3 2+k ki];
y3=step(numCL,denCL,t);
axis([0 10 0 1.2]);
plot(t,y1,t,y2,t,y3);
grid;
xlabel('Time (sec)');
ylabel('y');
title('Fig. 3.42 Transient responses');
axis('normal');


