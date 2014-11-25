R1 = 2;
R2 = 4;
L1 = 0.5;
L2 = 1;
C1 = 3/8;

Q = [0 4 0; 0 -16 4; 32/3 160/3 -16];
A = [-(R1/L1) 0 -(1/L1); 0 -(R2/L2) 1/L2; 1/C1 -(1/C1) 0];
B = [1/L1; 0; 0;];
C = [0 R2 0];


%NOVA BASE
A_ = Q * A * inv(Q)
B_ = Q * B
C_ = [C * inv(Q); 1 0 0; 0 1 0; 0 0 1]

%LETRA D

A_N = [-2+2i 0  0; 0 -2-2i 0; 0 0 -4]

B_N = [ -1.7i; +1.7i; -0.943]
 
C_N = [0.784-0.784i  0.784+0.784i -2.83]
 
D_N = [0];

% matrizes de autovalores e autovetores
%Q2 É A MATRIZ DE AUTOVETORES Q2 = [V1 V2 V3]
%L É A MATRIZ DIAGONAL DE AUTOVALORES
[Q2 L] = eig(A)

% planta na base original 
P = ss(A, B, C, 0)

%Q2 TEM PARÂMETROS COMPLEXOS
Q3 = [ real(Q2(:,1)) imag(Q2(:,1)) Q2(:,3) ]

%CALCULAR NOVAS MATRIZES SEM VALORES COMPLEXOS
PHT = ss2ss( P, inv(Q3))

% NOVAS MATRIZES 
ANC = [-2 2 0;-2 -2 0;0 0 -4]

BNC = [0; 3.3; -0.9]

CNC = [0.7845 -0.7845 -2.828; 1 0 0; 0 1 0; 0 0 1]
 
%DNC = 0
