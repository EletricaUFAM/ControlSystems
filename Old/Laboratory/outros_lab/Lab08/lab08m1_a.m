clc; %% limpa linha de comando...

k  = 2.5 %% AQUI ENTRA O VALOR DE K DA TABELA DA QUESTAO 01 LETRA A...
C1 = 250*10^(-9);
C2 = C1;
R1 = 40*10^3;
R2 = 60*10^3;

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
