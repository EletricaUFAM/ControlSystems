%  Figure 9.68      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_68.m  script to plot the Bode plot for the tape drive          
%  for the SRL design; 
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
[aol,bol,col,dol]=series(ac,bc,cc,dc,f,g,h2,j);
w=logspace(-1, 1);
[mag, ph]=bode(aol,bol,col,dol,1,w);
mag1=[mag, ones(size(mag))];
subplot(211); loglog(w,mag1);
grid;
xlabel('\omega (rad/msec)');
ylabel('Magnitude, |Dc(j\omega)G(j\omega)|');
title(' Fig. 9.68  Bode plot of the SRL design');
ph1=[ph, -180*ones(size(ph))];
subplot(212); semilogx(w,ph1);
grid;
xlabel('\omega (rad/msec)');
ylabel('Phase (deg)');

[Gm,Pm,Wcg,Wcp] = margin(mag,ph,w)