clc; % limpa a linha de comando...

N = 30;
D = [1 2 9 8 0];
w = 0.1:0.1:1000;

P = tf(N, D)
sys = zpk(P)

nyquist(P);

axis([-20 20 -20 20]);
grid on;
