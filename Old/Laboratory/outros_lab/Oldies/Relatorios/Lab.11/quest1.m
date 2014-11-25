%Variaveis
R1 = 40*10^3;
R2 = 60*10^3;
C1 = 250*10^(-9);
C2 = C1;
W = 2;

%K = 0.5;
%K = 1;
K = 2;

N1 = conv((1+K),(1/(R1*C1*R2*C2)));
D1 = [1 ((1/(R1*C1))+(1/(R2*C1))-(K*(1/(R2*C2)))) (1/(R1*C1*R2*C2))];
G1 = tf(N1,D1);

%Transfer function G1 para K = 0.5:
%        1e004
% --------------------
% s^2 + 133.3 s + 6667

%Transfer function G1 para K = 1:
%     1.333e004
% ------------------
% s^2 + 100 s + 6667

%Transfer function G1 para K = 2:
%        2e004
% --------------------
% s^2 + 33.33 s + 6667

N2 = [-(1/(R2*C2)) 0];
D2 = [1 ((1/(R1*C1))+(1/(R2*C1))) (1/(R1*C1*R2*C2))];
G2 = tf(N2,D2);

%Transfer function:
%       66.67 s
% --------------------
% s^2 + 166.7 s + 6667

zpk(G2)
%Zero/pole/gain:
%    -66.6667 s
% -----------------
% (s+100) (s+66.67)

bode(G2)
margin(G2)
grid on;

bode(G1)
margin(G1)
grid on;

nyquist((1/0.4)*G2)
Kest = (1/0.4);
