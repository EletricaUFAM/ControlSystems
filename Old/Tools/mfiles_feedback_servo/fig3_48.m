%  Figure 3.48      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%

%  Example 3.28     

clf;
t=[0 .1 .2 .3 .4 .5 1];
y=[0 .005 .034 .085 .140 .215 .510];
A=-1.37;
alpha=1;
dy=y-(ones(1,7)+A*exp(-alpha*t));
axis([0 1 -3 0]);
B=.37;     % 0.37 adjust B & beta to get best fit
beta=4.3;  % 4.3 to data by trial and error
tf=[0 .1 .2 .3 .4 .5 .6 1];
fity=B*exp(-beta*tf);
dyl=log10(dy);
fityl=log10(fity);
plot(t,dyl,'o',tf,fityl,'-');grid;
title('Fig. 3.48 Plot of log10[y(t) - [y(10) + A*e^{(-\alpha*t)}]] vesus t');
ylabel('log B*e^{(-\beta*t)} ');
xlabel('Time (sec)');
