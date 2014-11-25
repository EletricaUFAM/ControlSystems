%  Figure 9.58      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  fig9_58.m  script to used to draw the Bode plots for the tape drive

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
hold off; clf
w=logspace(-2,1);
[mag, ph] = bode(f,g,h2,j,1,w);
mag1=[mag, ones(size(mag))];
subplot(211); 
loglog(w,mag1);
grid ;
xlabel('\omega (rad/msec)');
ylabel('Magnitude, |G(j\omega)|');
title('Fig.9.58 Bode plots for the tape drive')
subplot(212); 
ph1=[ph, -180*ones(size(ph))];
semilogx(w,ph1); 
grid; 
xlabel('\omega (rad/msec)');
ylabel('Phase (deg)'); 
hold off
