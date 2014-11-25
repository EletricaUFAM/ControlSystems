
%N1 =10
%D1 =  CONV([1 10], [1 1])
%rlocus(N1, D1)
%sgrid(0.6, 0)
%k1 = rlocfind(N1, D1)


%N2 =  10
%D2 = conv([1 0], [1 11 (10+10*k1)])
%hold on
%rlocus(N2, D2)
%[K2 P] = rlocfind(N2, D2)


%R2C = 0.0615;

%h = tf([1 (1/(2* R2C))],[1 0 0]);
%rlocus(h)
%R1 = rlocfind(h)

%R1C = 4;

%h1 = tf(1,[1 (2/R1C) 0]);
%rlocus(h1)
%R2 = rlocfind(h1)

%N3 = conv([1 (0.25+2j)],[1 (0.25 -2j)])
%D3 = conv([1 32.64], [1 0.12])
%hold on
%sgrid(0.6, 0)
%rlocus(N3, D3)
%[K3 P] = rlocfind(N3, D3)

N3 =10
D3 =  conv([1 32.64], [1 0.12])
rlocus(N3, D3)
sgrid(0.6, 0)
k1 = rlocfind(N3, D3)


N4 =  10
D4 = conv([1 32.75], [1 32.75 (3.91+10*k1) 0])
hold on
rlocus(N4, D4)
[K2 P] = rlocfind(N4, D4)
