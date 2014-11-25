% Fig. 8.12   Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%

clear all;
close all;

numGs=1;
denGs=[1 0 0];  % s^2

numDs=.81*[1 .2];
denDs=[1 2];

numC=conv(numGs,numDs);
denC=conv(denGs,denDs);

[numCL,denCL]=feedback(numC,denC,1,1);

tf=30;
t=0:.2:tf;
y=step(numCL,denCL,t);

axis([0 30 0 1.5])
plot(t,y),grid
hold on

% discrete design

T=1;
[numGz,denGz]=c2dm(numGs,denGs,T,'zoh');

numDz2=.389*[1 -.82];
denDz2=[1 -.135];

numz2=conv(numGz,numDz2);
denz2=conv(denGz,denDz2);

[numCLz2,denCLz2]=feedback(numz2,denz2,1,1);
N=tf/T+1;
td=0:1:tf;
yd2=dstep(numCLz2,denCLz2,N);
plot(td,yd2,'-',td,yd2,'*')
title('Fig. 8.12  Step responses')
text(10,.6,'----------- Continuous design')
text(10,.4,'*----*----* Emulation design')
xlabel('Time (sec)')
ylabel('Plant output')
hold off


