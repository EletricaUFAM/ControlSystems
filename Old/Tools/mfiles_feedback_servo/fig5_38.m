% Fig. 5.38  Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%script to generate figure 5.38, Piper Cub autopilot design
numG = 160*conv ([1 2.5],[1 0.7]);
denG = conv([1 5 40],[1  .03  .06]);
sysG = tf(numG,denG);
sysD=tf([1   3],[1   20]);
sysDG=sysD*sysG;
figure(1)
rlocus(sysG)
axis([-30 2 -12 12])
grid
hold on
rlocus(sysDG)
hold off
figure(2)
rlocus(sysG)
hold on
rlocus(sysDG)
axis([-1.5 .1    -.6 .6])
hold off
K = 0.3;
sysH=tf(1,1);
sysT = feedback (K*sysG,sysH);
sysTD=feedback(sysDG,sysH);
figure(3)
step(sysT)
hold on
step(sysTD)
hold off
