%  Figure 9.62      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  Fig. 9.62  Compensated rootlocus for the tape drive
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
num=conv([1 .968],[1 .968]);
den= conv([1 9.68],[1 50]);
num=3*50*num;
sysD=tf(num,den);
sysG=ss(f,g,h2,j);
sysDG=series(sysD,sysG);
w=logspace(-2,1);
[mag, ph]=bode(sysDG,w);
subplot(211);
mag1=[mag; ones(size(mag))];
loglog(w,mag1(:,:)); grid;
xlabel('\omega (rad/msec)');
ylabel ('Magnitude, |Dc(j\omega)G(j\omega)|');
title('Fig. 9.62  Bode plot for the compensated tape drive')
%pause
subplot(212);
ph1=[ph;-180*ones(size(ph))];
semilogx(w,ph1(:,:)); grid
xlabel('\omega (rad/msec)');
ylabel ('Phase (deg)');

[Gm,Pm,Wcg,Wcp] = margin(mag,ph,w)