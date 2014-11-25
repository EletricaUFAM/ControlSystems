%% Declaraco de Variaveis

R1 = 40000;
R2 = 60000;

K = 1;

C1= 0.000000250;
C2= C1;

%% Planta (Funcao de Transferencia)


N = [-(1/(R2*C2)) 0];

D = [1 ((1/(R2*C1)) + (1/(R1*C1))) (1/(R1*C1*R2*C2))];

%% Diagrama de BODE

bode(N,D)
grid;

[m f w] = bode(N,D)
plot(w,m)
figure(1)
margin(N,D)
grid


%% Nyquist
figure(2)
nyquist(N,D)

