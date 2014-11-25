N1=10;
D1=conv([1 10],[1 1]);
rlocus(N1, D1);
sgrid(0.6,0);
K1=rlocfind(N1,D1);

N2=10;
D2=conv([1 0],[1 11 10+10*K1]);
hold on;
rlocus(N2,D2);
[K2 P]=rlocfind(N2,D2);