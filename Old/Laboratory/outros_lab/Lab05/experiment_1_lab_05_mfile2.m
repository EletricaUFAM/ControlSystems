R1=2;
R2=4;
L1=0.5;
L2=1;
C=3/8;
A=[-R1/L1,0,-1/L1;0,-R2/L2,1/L2;1/C,-1/C,0];
B= [1/L1;0;0];
C=[0,R2,0];
D=[0];
Q=[0,4,0;0,-16,4;(32/3),(160/3),-16];
AB=Q*A*inv(Q);
BB=Q*B;
CB=C*inv(Q);
DB=[0];

[Q L] = eig(A)

%Para verificar se os autovalores estao corretos, testar:
poly(A)
roots(poly(A))

P = ss(A,B,C,D);
Pb =  ss2ss(P, inv(Q))

