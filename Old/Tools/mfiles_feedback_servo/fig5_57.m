% Fig. 5.57   Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%script for Figure 5.57
sys=tf([1],[1 0.2 1 0]);
rlocus(sys)
Title('Figure 5.57  Root locus of 1/(s^2+0.2s + 1)')
axis([-3 1 -1.5 1.5])
hold on
r=roots([1 .2 1 .5]);
 plot(r,'*')
 z=0:.1:.9;
wn= .5:.5:3;
 sgrid(z, wn)
 hold off
