%% Diagrama de Bode %%
%Planta
num = [1 1];
den = [1 38 321 -760 400];

t = tf(num, den)
zpk(t)
%Grafico
figure(1)
bode(num,den)
grid on;


%%Gera diagrama de Bode entre 0,01 rad/s e 1000 rad/s
w = logspace(-1,2);
[mag, phase, w]= bode(num, den, w);

%magnitude convertida em Decibeis
 magdB = 20 * log10(mag);
 
%% Diagrama Polar Direto %%

% encontra as raizes
roots(den)
figure(2)

%Diagrama%
nyquist(num,den)
grid on;
%encontra o ganho de fase e de 
figure(3)
%1margin(num,den)
rlocus(num, den)
grid on;
