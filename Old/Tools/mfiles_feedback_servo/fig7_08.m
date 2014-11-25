%  Figure 7.8      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%

% fig7_08.m is a script to generate Figure 7.8 
% Impulse response
clf;
f=[0 1;-1 0];
g=[0;1];
h=[1 0];
K=[3 4];
fc=f-g*K;
gc=[4*g [1;0]];
hc=[h;[0 1]; -K/4];
jc=[0 0;0 0; 1 0];
sysCL=ss(fc,gc,hc,jc);
t=0:0.1:7;
[y]=impulse(sysCL,t);
plot(t,y(:,:,2));
grid;
xlabel('Time (sec)');
ylabel('Amplitude');
text(1.7,-.3,'x_2');
text(.5,.1,'u/4');
text(.7,.7,'x_1');
title('Fig. 7.8 Impulse response of the oscillator with full state feedback');

