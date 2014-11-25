%  Figure 3.44      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
%  Example 3.31     
% Remark: This file uses the function pendot.m

clf;
disp('This takes several seconds, be patient')
disp('After parts (a) & (b) appear, wait more for part (c)')

global Wn2 Uo       % declare global variables
r2d=57.295;
go=9.82;
l=1;
m=.2;
Wn2=go/l;           % g/l
tl=0:.05:10;
to=0;               % initial time
tf=10;              % final time
Xo=[0;0];
Tc=1;
Uo=Tc/(m*l^2);
num=Uo;
den=[1 0 Wn2];
tspan=[to tf];      % time span
% call integration routine, ode23, that calls the function pendot
[t,x]=ode23('pendot',tspan,Xo);

u=[ones(21,1);zeros(180,1)];
[ys]=lsim(num,den,u,tl);

axis([0 10 -80 80])
plot(t,x(:,1)*r2d,'--',tl,ys*r2d,'-'),grid
xlabel('Time (sec)')
ylabel('Pendulum angle (Deg)')
text(0,65,'------- linear response')
text(0,72,'- - - - nonlinear response')
text(1.3,50,'(a)&(b)')
title('Fig. 3.44 Pendulum linear and nonlinear response')
hold on

Tc=.3;
Uo=Tc/(m*l^2);
num=Uo;

[t,x]=ode23('pendot',tspan,Xo);

[ys]=lsim(num,den,u,tl);

plot(t,x(:,1)*r2d,'--',tl,ys*r2d,'-')
text(.7,8,'(c)')
hold off
