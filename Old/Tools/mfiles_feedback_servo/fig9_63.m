%  Figure 9.63      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  Fig. 9.63  Symmetric rootlocus for the tape drive  
clf;
f =[0    2.0000         0         0         0;
   -0.1000   -0.3500    0.1000    0.1000    0.7500;
         0         0         0    2.0000         0;
    0.4000    0.4000   -0.4000   -1.4000         0;
         0   -0.0300         0         0   -1.0000];

g = [0;
     0;
     0;
     0;
     1];
h2 =[0     0     1     0     0];
j = 0;
as=[f, 0*f;-h2'*h2, -f'];
bs=[g;0*g];
cs=[0*g', g'];
ds=0;

rlocus(as,bs,cs,ds);
grid;
v=[-2, 2,-1.5, 1.5]; axis(v);

title('Fig. 9.63 Symmetric root locus of the compensated tape drive')

