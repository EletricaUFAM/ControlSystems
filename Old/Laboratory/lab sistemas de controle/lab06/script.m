%defini��o das constantes
RC = 2;
K = 1/2;

%defini��o das matrizes
A = [-((1/RC)*(2 - K)) ((1/RC)*K)  -(1/RC); 
    ((1/RC)*K) ((1/RC)*K) -(1/RC); 
    (1/(2*RC)*(1 + 2*K)) (1/(2*RC)*(1 + 2*K)) -(1/RC)]
 
B = [(1/RC)*(2 - K); -(1/RC)*K; -(1/RC)*K]

C = [-(1+K) -(1+K)  0]

D = [1+K]


C_ = [C;
      1 0 0;
      0 1 0;
      0 0 1]
  
D_ =  [D; 0 ; 0 ; 0] 

%letra b) determinando a matriz de controlabilidade

%matriz de controlabilidade
W = ctrb(A, B)

%colunas li - determinar a controlabilidade da matriz
rank(W)


% matriz Q � igual a W 
Q = W

% calcular a forma can�nica de controlabilidade 
Q_1 = inv(W)

% calcular o ABARRA, BBARRA E CBARRA
ABARRA = Q_1 * A * Q

BBARRA = Q_1 * B

CBARRA = C * Q

%f) polin�mio caracter�stico � o mesmo denominador fun��o de transfer�ncia 

Q2 = [1 1 0.5; 0 1 1; 0 0 1]

polimonio = poly(Q2)

%calcular a inversa de q2
Q_2 = inv(Q2)


% calcular o ACHAPEU, BCHAPEU E CCHAPEU
ACHAPEU = Q_2 * ABARRA * Q2

BCHAPEU = Q_2 * BBARRA

CCHAPEU = CBARRA * Q2

