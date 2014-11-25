R=50;
L=0.2;
KB=0.08;
KT=10;
J1=8;
J2=4;
J3=20;
B1=0.2;
B2=0.4;
B3=0.8;
V=12;

N1 = 10;
N2 = 80;
N3 = 40;
N4 = 50;

JEQ = J1 +((N1/N2)^2)*J2 + ((N1/N2)^2)*((N3/N4)^2)*J3;
BEQ = B1 +((N1/N2)^2)*B2 + ((N1/N2)^2)*((N3/N4)^2)*B3;

A = [-R/L,-KB/L,0;KT/JEQ,-BEQ/JEQ,0;0,1,0];
B = [1/L;0;0];
C = [0,(N1*N3)/(N2*N4),0;0,0,(N1*N3)/(N2*N4)];
D = [0;0];
P = ss(A,B,C,D);
G = tf(P);
Gp = zpk(P)

