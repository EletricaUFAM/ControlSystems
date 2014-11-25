clc; %% limpa linha de comando...

R1 = 40*10^3 %% AQUI ENTRA O VALOR DE R1 DA TABELA DA QUESTAO 01 LETRA B...

R2 = 60*10^3;
R3 = 5*10^3;
R4 = 5*10^3;
k  = R3/R4;

C1 = 250*10^(-9);
C2 = C1;

A = [((-1/(R1*C1))-(1/(R2*C1))) ((1+k)*(1/(R1*C1))+k*(1/(R2*C1)));(-1/(R2*C2)) (1/(R2*C2))*k];

B = [(-1/(R1*C1));0];

C = [0 (1+k)];

D = [0];


%% Função de Transferência

P = ss(A,B,C,D)

Tf = tf(P)

ZPK_TF = zpk(Tf)

%% matriz de observabilidade
matrizObs = obsv(A, C);

RANK_MATRIZ_OBS = rank(matrizObs);


%% Root locus

N1 = [-1/(R2*C2) 0]
D1 = [1 ((1/(R1*C1))+((1/(R2*C1)))) (1/(R1*C1*R2*C2))]

rlocus(N1, D1)
%{
[K P] = rlocfind(N1,D1)

Tf_2 = tf({1}, {[1 0 0]})

rltool(Tf_2)
%}
