%%  Figure 6.87      Feedback Control of Dynamic Systems, 4e
%                   Franklin, Powell, Emami
% 

clear all
close all;

w=logspace(-1,3,100);
num=[1/1.33 1];
den=conv([1/2.66 1],[1/(10.4*10.4) 1/(10.4) 1]);
[mag,phas]=bode(num,den,w);

num2=1;
den2=[1/(10.4*10.4) 1/(10.4) 1];
[mag2,phas2]=bode(num2,den2,w);
subplot(2,1,1)
loglog(w/(2*pi),mag,w/(2*pi),mag./mag2);
grid;
xlabel('f  (Hz)');
ylabel('magnitude');
title('Fig. 6.87: Experimental Frequency Response : (a) Magnitude');
subplot(2,1,2)
semilogx(w/(2*pi),phas,w/(2*pi),phas-phas2);
grid;
xlabel('f (Hz)');
ylabel('phase (deg)');
title('                                             (b) Phase');