% Questao 1
% 
% Aluno 1 = 20310471
% Aluno 2 = 20310467
%
% Para p1 = 71/2 = 35.5
% Para p2 = 67/2 = 33.5
n1 = 35.5*33.5; % K = p1*p2
d1 = conv([1 33.5],conv([1 35.5],[1 35.5*33.5])); %[(s + p1)(s + p2)(s + p1*p2)]
G1 = tf(n1,d1) %                     K
%                   G1 = -------------------------------
%                         [(s + p1)(s + p2)(s + p1*p2)]
zpk(G1)

