%  Figure 3.28      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% fig3_28.m                                                      

clf;
zeta = 0:.02:.98;
Mp = 100*exp(-pi*zeta./sqrt(1 - zeta.^2));
plot(zeta,Mp);
grid;
title('Fig. 3.28  Mp vs. zeta for a 2nd order system.')
xlabel('\xi')
ylabel('Mp (%)');
hold on;
% define some lines for the plot
xl=[0 0.5];
yl=[16 16];
x2=[0 0.707];
y2=[5 5];
plot(xl,yl,'--',x2,y2,'--')