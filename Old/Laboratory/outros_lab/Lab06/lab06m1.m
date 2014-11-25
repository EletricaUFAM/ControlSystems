t = 4;
RC = 2; 
K= (1/2);


A = [(-1/RC)*(2-K) (1/RC)*K (-1/RC);(1/RC)*K (1/RC)*K (-1/RC);(1/(2*RC))*(1+2*K) (1/(2*RC))*(1+2*K) (-1/RC)]

B = [(1/RC)*(2-K);(-1/RC)*K;(-1/RC)*K]

C = [-(1+K) -(1+K) 0]

D = [(1+K)]

%%Retorna a matriz de controlabilidade%%
W = ctrb(A,B);

%%Retorna o numero de colunas LI%%%
rank(W);

%%%Retorna o polin"omio caracter�stico%%%
poly(A);

%%Para encontrar a fun��o de transfer�ncia%%
P = ss(A,B,C,D);

Tf = tf(P);

%%
F1 = expm(A*t)*[4;-3;8]