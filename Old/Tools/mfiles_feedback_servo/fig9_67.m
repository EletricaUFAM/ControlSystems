%  Figure 9.67      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_67.m  script to plot the frequency response for the tape drive
%  for the SRL design; x2 and tension outputs
clf;
f =[0    2.0000         0         0         0;
   -0.1000   -0.3500    0.1000    0.1000    0.7500;
         0         0         0    2.0000         0;
    0.4000    0.4000   -0.4000   -1.4000         0;
         0   -0.0300         0         0   -1.0000];

g = [0;
     0;
     0;
     0;
     1];
h2 =[0     0     1     0     0];
j = 0;
K=[.802 2.58 .489 .964 1.21];
L=[403.9; 50.6;13.1;38.6;1166.2];
ac=f-g*K-L*h2;
bc=L;
cc=K;
dc=0;
w=logspace(-2, 2);
[mag, ph]=bode(ac,bc,cc,dc,1,w);
mag1=[mag, ones(size(mag))];
subplot(211); loglog(w,mag1);
grid;
xlabel('\omega (rad/msec)');
ylabel('Magnitude, |Dc(j\omega)|');
title(' Fig. 9.67  Bode plot of the SRL compensator')
ph1=[ph, -180*ones(size(ph))];
subplot(212); semilogx(w,ph1)
grid;
xlabel('\omega (rad/msec)');
ylabel('Phase (deg)');
