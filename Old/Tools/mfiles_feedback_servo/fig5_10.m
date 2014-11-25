% Fig. 5.10   Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami

n10=[-1 6];
d10=[1 4 13 0];
rlocus(n10,d10)
axis([-6 10 -6 6])
title('Fig.5.10 Negative locus of (6-s)/s(s^2=4s+13)')
z=0:.1:.9;
 wn= 1:6;
 sgrid(z, wn)
 hold off
