%%Simula��o questao 2%%
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

%%%Retorna o polin�mio caracter�stico%%%
poly(A);

%%Para encontrar a fun��o de transfer�ncia%%
P = ss(A,B,C,D);

Tf = tf(P);

%%Para encontrar os p�los e os zeros%%
T = zpk(Tf)