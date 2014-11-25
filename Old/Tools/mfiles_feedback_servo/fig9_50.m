%  Figure 9.50      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_50.m is a script to generate Fig. 9.50, the Bode plots  
%  for the fuel/air ratio with a linear sensor.  A (3,3)
%  Pade approximant is used  to approximate the delay.

% construct the F/A dynamics with the sensor time-constant too
f =[-50     0     0;
     0    -1     0;
    10    10   -10];

g =[25.0000;
    0.5000;
         0];
h =[0     0     1];
j=0;
[n3,d3]=pade(0.2,3); %  the delay Pade model

[np,dp]=ss2tf(f,g,h,j); % convert to polynomial form

np=[np(3:4)]  % remove the extraneous zeros

np=conv(np,n3);  % the plant numerator
dp =conv(dp,d3);  % the plant denominator
nc=[1 .3];
dc=[1 0]; % the PI controller in polynomial form
% form the open-loop system
nol=conv(np,nc);
dol=conv(dp,dc);
w=logspace(-1,2);
sys=tf(nol,dol);
[mag,ph]=bode(sys,w);
hold off; 
clf;
subplot(211); 
mag1=[mag; ones(size(mag))];
loglog(w,mag1(:,:));
xlabel('\omega (rad/sec)');
ylabel('Magnitude |DcG|');
title('Fig. 9.50 Bode plot for the fuel/air control')
grid;
% prtsc
subplot(212);
ph1=[ph; -180*ones(size(ph))];
semilogx(w,ph1(:,:));
xlabel('\omega (rad/sec)');
ylabel('Phase (deg)');
grid;
% 
[Gm,Pm,Wcg,Wcp] = margin(mag,ph,w) 

