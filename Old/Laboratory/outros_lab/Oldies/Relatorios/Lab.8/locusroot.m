% zero da funcao de transferencia do controlador
a = 12;

% Controlador C(s)
N1 = [1 a];
D1 = [1 6];
C1 = tf(N1,D1);

% Planta G(s)
N = [1];
D = [1 0 0];
G = tf(N,D);

rltool(G,C1);