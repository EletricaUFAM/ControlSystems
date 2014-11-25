% Etapa 1
%
% Aluno 1 = 20310467
% Aluno 2 = 20310471
%
% Para p1 = 67/2 = 33.5
% Para p2 = 71/2 = 35.5
% Para d1 = d2 = 4
A = [1 1 0; (33.5-35.5) 0 1; 33.5*35.5 0 0];
B = [0;1;4];
C = [1 4 0];
M = ctrb(A,B);
pcar = poly(A);
rk = rank(M);
%
% Etapa 2
%
W = [pcar(2) pcar(1) 1; pcar(1) 1 0; 1 0 0]; %      [ a2  a1   1]
%                                               W = [ a1   1   0]
%                                                   [  1   0   0]
Q = M*W; % matriz de transferência de estados do controlador
wn = 5;
zeta = 0.707;
eqcar = conv([1 3.535],[1 2*zeta*wn wn^2]); % eqcar = [b0 b1 b2 b3]
roots(eqcar)
%
% Etapa 3
%
L = [eqcar(3)-pcar(3) eqcar(2)-pcar(2) eqcar(1)-pcar(1)]*[inv(Q)]
%
% Etapa 4
%
Ab = inv(Q)*A*Q;
Bb = inv(Q)*B;
Cb = C*Q;
ss2 = ss(Ab,Bb,Cb,0);
tf2 = tf(ss2);
AR = Ab-Bb*L;

