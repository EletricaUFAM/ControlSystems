% Os cálculos e o desenvolvimento
a = [ -1 1 0;-15 0 1;0 0 0];
b = [0;1;1];
c = [0 0 1.4];
num=[0 1.4 1.4 21];
den=[1 1 15 0];
tf1=tf(num,den)
vc=ctrb(a,b);
pcar = poly(a);
% Matriz de transformação “q”
q=vc*[pcar(2) pcar(1) 1; pcar(1) 1 0; 1 0 0];
qi=inv(q);
A=qi*a*q;
B=qi*b;
C=c*q;
% Para ?=0.707 e  ?n < 5 rad/s, escolhemos ?n = 3 rad/s
desejado=conv([1 10],[1 2*0.707*3 9])
eqcar=desejado-pcar
% L=x*qi
L=[eqcar(3)-pcar(3) eqcar(2)-pcar(2) eqcar(1)-pcar(1)]*qi;
AR=A-B*L;
% M = D3/C3
M=90/21
