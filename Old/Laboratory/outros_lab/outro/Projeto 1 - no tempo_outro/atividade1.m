% N1 - numerador
% D1 - denominador
N1 = [1];
D1 = [1 4 5 0];

% Funcao de Transferencia
G1 = tf(N1,D1);
% Transfer function G1:
%         1
% -----------------
% s^3 + 4 s^2 + 5 s

% Traca o root locus
rlocus(G1)
grid on
sgrid(0.5,0)

% K = ganho
% r = polos
[K,r]=rlocfind(G1)

% RESULTADOS:
% K = 4.2679
% r = 
% 
%   -2.7449             Polo 1        
%   -0.6276 + 1.0775i   Polo 2
%   -0.6276 - 1.0775i   Polo 3