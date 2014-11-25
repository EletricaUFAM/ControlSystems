%4 questao - Projete um controlador para que a planta G(s) tenha erro de
%regime ao degrau = 0 e zeta = 0,7.

%Alunos: Kenny Vinente - 20410034
%Alunos: Izabel Fernandes - 20310134

dij = 1;
p1 = 3.94;
p2 = 1;

N = 10*[1 0.25];
temp=[1 2*dij dij^2];
temp=temp+[0 0 p2];
D=conv(temp,[1 p1+p2]);
G=tf(N,D);
rlocus(G);
hold on
sgrid(0.7,0);
[K P]=rlocfind(G);

%escolhido um ponto K = 0.7657

N2 = N;
D2 = [1 6.94 11.88+10*K 9.88+0.25*K 0];
G2=tf(N2,D2);
rlocus(G2);
sgrid(0.7,0);
[K2 P2]=rlocfind(G2);

K 
K2

%coloque estes valores na simulacao do controlador e verifique a saida
%para editar o controlador, aperte com o botao direito em cima dele e
%depois escolha a opcao "look under mask"

system('pause')