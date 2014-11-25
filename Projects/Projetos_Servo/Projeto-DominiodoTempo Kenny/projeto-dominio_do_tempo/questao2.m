%2 questao - Projete um controlador para que a planta G(s) tenha erro de
%regime ao degrau = 0 e zeta = 0,707.

%Alunos: Kenny Vinente - 20410034
%Alunos: Izabel Fernandes - 20310134

N = 5*[1 3.94];
D = conv([1 0],[1 2.94 3.94]);
G=tf(N,D);
rlocus(G)
sgrid(0.707,0)
% [K P]=rlocfind(G)
system('pause')

%calculo de 1/T

N1 = [1 2.94 3.94 0]+[0 0 5*K 3.94*K];
D1 = [1 2.94 3.94 0 0];
G1=tf(N1,D1)
rlocus(G1)
sgrid(0.707,0)

%[T1 P1]=rlocfind(G1)
%T=1/T1


N2 = 5*K*[1 3.94 0];
temp=conv([1 T],[1 2.94 3.94 0]);
D2 = temp+(5*K/T)*[0 0 0 1 3.94];
G2=tf(N2,D2)
rlocus(G2)
sgrid(0.707,0)

% [a P2]=rlocfind(G2)