%RESPOSTA DA B
%Matriz A
A = [-(3/4) (1/4) -(1/2);
      (1/4) (1/4) -(1/2);
      (1/2) (1/2) -(1/2)];

%Matriz B
B = [ (3/4);
     -(1/4);
     -(1/4)];

%Matriz C
C = [-(3/2) -(3/2) 0];

%Matriz D
D = [(3/2)];


%%RESPOSTA DA C
%Matriz Observabilidade
W = obsv(A,C)

%W =
%
%   -1.5000   -1.5000         0
%    0.7500   -0.7500    1.5000
%         0    0.7500   -0.7500


%Post
P = rank(W)

%P =
%     2

%%RESPOSTA DA D
%Forma de Kalman
K = null(W)

%K =
%
%   -0.5774 //caso nao observavel 
%    0.5774
%    0.5774

%Se dividirmos por -0.5774 todos os elementos acima o valor sera
%[  1
%  -1
%  -1 ]
%e depois multiplicarmos por 10 teremos os valores iniciais aplicado
%na simulacao da questao 1.b mostrando a sainda nao obervavel.

K = null(W,'r')

%K =
%
%    -1
%     1
%     1

%K =
%
%    -1  1  0
%     1  0  1
%     1  0  0

%RESPOSTA DA E

Q = [-1  1  0;
      1  0  1;
      1  0  0];
 
Abarra = inv(Q)*A*Q

%Abarra =
%
%   -0.5000    0.5000    0.5000
%         0   -0.2500    0.7500
%         0   -0.2500   -0.2500

Am = Abarra(2:3,2:3)
%Am=
%    -0.2500     0.7500
%    -0.2500    -0.2500

Bbarra = inv(Q)*B

%Bbarra =
%
%   -0.2500
%    0.5000
%         0

Bm = Bbarra(2:3,1)
%Bm =
%
%    0.5
%      0

Cbarra = C*Q

%Cbarra =
%
%         0   -1.5000   -1.5000

Cm = Cbarra(1,2:3)
%Cm =
%
%   -1.5000   -1.5000

% Polinomio Caracteristico
Pol = poly (Am)

%Pol =
%
%    1.0000    0.5000   0.2500

Q11 = obsv(Am,Cm)

%Q11 =
%
%   -1.5000   -1.5000
%    0.7500   -0.7500

Q12 = [  1 0;
       0.5 1]

Q1 = Q12*Q11

%Q1 =
%
%   -1.5000   -1.5000
%         0   -1.5000

Qnew = [1    0    0;
        0 -1.5 -1.5;
        0    0 -1.5]

Anew =Qnew*A*inv(Qnew)
%Anew =
%
%   -0.7500   -0.1667    0.5000
%   -1.1250    0.7500   -1.7500
%   -0.7500    0.5000   -1.0000


Bnew = Qnew*B
%Bnew =
%
%    0.7500
%    0.7500
%    0.3750

Cnew = C*inv(Qnew)
%Cbarra =
%
%   -1.5000    1.0000   -1.0000         0

[NUM,DEN] = ss2tf(Anew,Bnew,Cnew,D);
G=tf(NUM,DEN)

%Transfer function:
%1.5 s^3 + 0.75 s^2 + 0.375 s + 0.1875
%-------------------------------------
%      s^3 + s^2 + 0.5 s + 0.125




%[NUMm,DENm] = ss2tf(Am,Bm,Cm,D)
%Gm=tf(NUMm,DENm)


%RESPOSTA DA F
%O resultado do sistema completo e mesmo que o do sistema minimo