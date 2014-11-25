R1 = 2;
R2 = 4;
L1 = 0.5;
L2 = 1;
C1 = 3/8;

Q = [0 4 0; 0 -16 4; 32/3 160/3 -16];
A = [-(R1/L1) 0 -(1/L1); 0 -(R2/L2) 1/L2; 1/C1 -(1/C1) 0];
B = [1/L1; 0; 0;];
C = [0 R2 0];


%NOVA BASE
A_ = Q * A * inv(Q)
B_ = Q * B
C_ = [C * inv(Q); 1 0 0; 0 1 0; 0 0 1]

%LETRA D

A_N = [-2+2i 0  0; 0 -2-2i 0; 0 0 -4 0]

B_N = [ -1.7i; +1.7i; -0.943]
 
c = 
                 x1            x2            x3
   y1  0.784-0.784i  0.784+0.784i         -2.83
 
d = 
       u1
   y1   0
