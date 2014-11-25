clc; % limpa a linha de comando...

A = [1 1 0;-12 0 1; 20 0 0]

B = [0;1;1]

C = [21 -1 1]

D = [0]

P = ss(A, B, C, D);

[f_num, f_den] = ss2tf(A,B,C,D,1);

Tf = tf(P)

ZPK_TF = zpk(Tf)

pol_caracteristico = poly(A)

D1 = pol_caracteristico

D2 = conv([1 5],[1 (2*0.6*4) 16])

D3 = D2-D1

L_BARRA = D3(2:4)

Vc = [B A*B (A^2*B)]

MUL = [1 -1 12;0 1 -1;0 0 1]

Q = Vc*MUL

QINV = inv(Q)

A_BARRA = QINV*A*Q

B_BARRA = QINV*B

C_BARRA = C*Q

D_BARRA = [0]

pol_caracteristico_barra = poly(A_BARRA)

L = L_BARRA*QINV

Tf = tf(f_num, D2)

%TES =  (A_BARRA - B_BARRA*L_BARRA)


rltool(Tf)