%%Simulação questao 2%%
%%%%%%%%%%%%%%%%%%%%%%%
RC = 2; 
K= 1;

A = [(-1/RC)*(2-K) (1/RC)*K (-1/RC);(1/RC)*K (1/RC)*K (-1/RC);(1/(2*RC))*(1+2*K) (1/(2*RC))*(1+2*K) (-1/RC)]

B = [(1/RC)*(2-K);(-1/RC)*K;(-1/RC)*K]

C = [-(1+K) -(1+K) 0;1 0 0;0 1 0;0 0 1]

D = [(1+K);0;0;0]

%%Retorna a matriz de controlabilidade%%
W = ctrb(A,B)

%%Retorna o numero de colunas LI%%%
rank(W)

%%%Retorna o polinômio característico%%%
poly(A);

%%Para encontrar a função de transferência%%
P = ss(A,B,C,D);

Tf = tf(P);

%%Para encontrar os pólos e os zeros%%
T = zpk(Tf)