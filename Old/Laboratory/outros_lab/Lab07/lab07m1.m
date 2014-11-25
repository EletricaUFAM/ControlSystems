
A = [-1/2 1 1;1/2 1 0;3/2 -1 1]
Ra = rank(A)
B = [0;1;1];

C = [0 1 -1];

D = [0];

E = [1 -1 0 1;1 1 0 -1;-1 1 0 1;1 -1 2 -1];
Re = rank(E);
H= [tf([1 0],1) -1 0 0;0 tf([1 0],1) -1 0;1 3 tf([1 3],1) 0;-1 0 -1 tf([1 1],1)];
Hi = inv(H);

dois = E*E;
Rd = rank(dois);
tres = dois*E;
Rt = rank(tres);
quatro = tres*E;
Rq = rank(quatro);
cinco = quatro*E;
Rc = rank(cinco);
%%Retorna a matriz de controlabilidade%%
W = ctrb(A,B)

%%Retorna a matriz de observalidade%%
matrizObs = obsv(A,C);

%%Retorna o numero de colunas LI%%%
rank(W)

%%%Retorna o polin"omio característico%%%
poly(A)

%%Para encontrar a função de transferência%%
P = ss(A,B,C,D);

Tf = tf(P);

ZPK = zpk(Tf);

T = null(matrizObs,'r')
 
x = (rref(W'))'
 
Vc = x(:,1:2)
 
x1 = null(Vc','r')
 
x2 = null(T','r')
 
x3 = [x1 x2]
 
v1 = null(x3', 'r')
v2 = [0;1;0];
v3 = [0;0;1];

    
