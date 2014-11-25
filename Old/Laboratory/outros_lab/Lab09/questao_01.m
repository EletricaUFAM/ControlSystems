n1 = 10;
d1 = conv([1 10],[1 1]);
rlocus(n1,d1);
sgrid(0.6, 0);

[k1 p] = rlocfind(n1,d1)
% k1 = 3.03;

n2 = 10;
d2 = conv([1 0], [1 11 10+10*k1]);

hold on;

rlocus(n2,d2);
[k2 p] = rlocfind(n2,d2)