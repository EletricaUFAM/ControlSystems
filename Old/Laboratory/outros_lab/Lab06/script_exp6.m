%%Forma can�nica do controlador%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = [-3/4,1/4,-1/2; 1/4,1/4,-1/2; 1/2,1/2,-1/2]
B = [3/4;-1/4;-1/4]
C = [-3/2, -3/2, 0]
D = [3/2]

%%encontra a matriz de controlabilidade%%%
w = ctrb(A, B)

%%Numero de colunas LI%%%
rank(w)

%%encontra o polinomio caracter�stico%%
poly(A)

%%Regras de mudan�a de base%%%
CB = C * w

Q2 = [1,1,0.5;0,1,1;0,0,1]

Q = w * Q2

CCHAP = C * Q

%%para encontrar a fun��o de transferencia%%
P = ss(A,B,C,D)%%monta sistema

H = tf(P)%%devolve a fun��o de transferencia
