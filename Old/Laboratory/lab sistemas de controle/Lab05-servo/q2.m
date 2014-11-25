A = [-4 2 ; -3 1]
B = [0 ; 0]
C = [1 0 ; 0 1]

% matrizes de autovalores e autovetores
%Q É A MATRIZ DE AUTOVETORES Q2 = [V1 V2 V3]
%L É A MATRIZ DIAGONAL DE AUTOVALORES
[Q L] = eig(A)

% % planta na base original 
% P = ss(A, B, C, 0)
% 
% %Q2 TEM PARÂMETROS COMPLEXOS
% Q3 = [ real(Q2(:,1)) imag(Q2(:,1)) Q2(:,3) ]
% 
% %CALCULAR NOVAS MATRIZES SEM VALORES COMPLEXOS
% PHT = ss2ss( P, inv(Q3))
% 
% % NOVAS MATRIZES 
% ANC = [-2 2 0;-2 -2 0;0 0 -4]
% 
% BNC = [0; 3.3; -0.9]
% 
% CNC = [0.7845 -0.7845 -2.828; 1 0 0; 0 1 0; 0 0 1]
%  
% %DNC = 0
