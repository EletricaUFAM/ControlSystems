% K1 - unidade da matricula 20510297
% K2 - unidade da matricula 20510051
% K  - Ganho atual
K1 = 7;
K2 = 1;
K = (K1 + K2)/2;

% N - numerador
% D - denominador
N = [K];
D = [1 3 0];

% Funcao de Transferencia
G = tf(N,D);
% Transfer function G:
%     4
% ---------
% s^2 + 3 s

rlocus(G)
grid on
sgrid(0.5,0)

% K = ganho
% r = polos
[K,r]=rlocfind(G)