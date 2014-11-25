% Definindo a funcao de transferencia
gs_num = 1;
gs_den = conv([1 1],conv([1 3],[1 6 13]));

%Gerando uma variavel SYS
[A,B,C,D] = tf2ss(gs_num, gs_den);
P = ss(A,B,C,D);

% Tracando os diagramas de bode
% bode(P)


% margin(gs_num, gs_den)
% grid

nyquist(P)