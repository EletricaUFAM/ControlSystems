%RESPOSTA DA B
%Matriz A
A = [-(1/2) (1/2) -(1/2);
      (1/2) (1/2) -(1/2);
      (3/4) (3/4) -(1/2)];

%Matriz B
B = [ (1/2);
     -(1/2);
     -(1/2)];

%Matriz C
C = [-2 -2 0];

%Matriz D
D = [2];

%Matriz Contrabilidade
W = ctrb(A,B)

%W =
%    0.5000   -0.2500    0.1250
%   -0.5000    0.2500   -0.1250
%   -0.5000    0.2500   -0.1250


%Post
P = rank(W)

%P =
%     1


%RESPOSTA DA C
Vc = [ 0.5;
      -0.5
      -0.5];
  
 
%RESPOSTA DA E
[NUM,DEN] = ss2tf(A,B,C,D)
G=tf(NUM,DEN)

%   2 s^3 + s^2 + 0.5 s + 0.25
% ------------------------------
% s^3 + 0.5 s^2 + 0.25 s + 0.125

Fpolos = zpk(G)

% 2 (s+0.5) (s^2 + 0.25)
% ----------------------
%  (s+0.5) (s^2 + 0.25)

%RESPOSTA DA F
Q = [ 0.5 1 0;
     -0.5 0 0;
     -0.5 0 1];
Qinv = inv(Q)

%Qinv =
%     0    -2     0
%     1     1     0
%     0    -1     1

Abarra = Qinv*A*Q
Bbarra = Qinv*B
Cbarra = C*Q
Dbarra = D

% Xbarra = Abarra*x(t) + Bbarra*u(t)
% Y = Cbarra*x(t) + Dbarra*u(t)

%Abarra =
%   -0.5000   -1.0000    1.0000
%         0         0   -1.0000
%         0    0.2500         0

%Bbarra =
%     1
%     0
%     0

%Cbarra =
%     0    -2     0

%Dbarra =
%     2

%Estado controlavel 
%   -0.5000
%         0
%         0

%Estado não-controlavel
%   -1.0000    1.0000
%         0   -1.0000
%         0    0.2500         0



