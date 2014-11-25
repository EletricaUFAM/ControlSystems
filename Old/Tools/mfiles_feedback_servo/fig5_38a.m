% Fig. 5.38a  Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
numG = 160*conv ([1 2.5],[1 0.7]);
denG = conv([1 5 40],[1  .03  .06]);
sysG = tf(numG,denG);
sysD=tf([1   3],[1   20]);
sysDG=sysD*sysG;
rlocus(sysG,'--')
axis([-30 2 -12 12])
grid
hold on
rlocus(sysDG)
  z=0:.1:.9;
 wn=2:5:30;
 sgrid(z, wn)
 hold off