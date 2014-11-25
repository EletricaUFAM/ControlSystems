% Fig. 5.38b  Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
numG = 160*conv ([1 2.5],[1 0.7]);
denG = conv([1 5 40],[1  .03  .06]);
sysG = tf(numG,denG);
sysD=tf([1   3],[1   20]);
sysDG=sysD*sysG;
rlocus(sysG,'--')
hold on
rlocus(sysDG)
axis([-3.9 .1    -1.5 1.5])
title('Low frequency part of auto-pilot root locus')
  z=0:.1:.9;
 wn=.5:.5:4;
 sgrid(z, wn)
 hold off