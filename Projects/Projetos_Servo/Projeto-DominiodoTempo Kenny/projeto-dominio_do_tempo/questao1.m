%1 questao - Projetar um controlador (P, PI, PD, PID) para obter erro ao
%degrau igual a zero, zeta = 0.8 e ts<3s. Simular o sistema para
%r(t)=degrau(t). Comente os resultados.

%Alunos: Kenny Vinente - 20410034
%Alunos: Izabel Fernandes - 20310134

p1 = 5
p2 = 1

Kdc = 10*(p1 + p2)

%estudos indicam que o controlador que resolver� o problema � do tipo PID

%primeiro root locus 

N1 = Kdc
D1 = conv([1 0],conv([1 p1],[1 p2]))
G1 = tf(N1,D1)
rlocus(G1)
% hold on
grid on
sgrid(0.8,0)
% [K1 P1]=rlocfind(G1)
system('pause')

N2 = Kdc*[1 0]
D2 = conv([1 0],conv([1 p1],[1 p2]))+Kdc*[0 0 0 K1]
G2=tf(N2,D2)
rlocus(G2)
sgrid(0.8,0)
% [K2 P2]=rlocfind(G2)
system('pause')

N3 = Kdc
D3 = conv([1 0],conv([1 0],conv([1 p1],[1 p2])))+Kdc*[0 0 K2 K1 0]
G3 = tf(N3,D3)
rlocus(G3)
sgrid(0.8,0)
% [K3 P3]=rlocfind(G3)


system('pause')