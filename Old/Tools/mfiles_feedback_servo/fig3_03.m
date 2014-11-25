%  Figure 3.3      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%% fig3_03.m
% Example 3.12 : DC Motor Angular velocity 
clf;
F=[0, 1, 0;0 -0.1, 100;0, -1, -10];
G=[0;0;1];
H=[1, 0, 0];
J=[0];
sys=ss(F,G,H,J);
H1=[0, 1, 0];
sys1=ss(F,G,H1,J);
t=0:0.01:5;
y=step(sys1,t);
plot(t,y);
grid;
Title('Fig. 3.3: step response');
xlabel('Time (sec)');
ylabel('\omega (rad/sec)');
