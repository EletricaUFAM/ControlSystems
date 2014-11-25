%  Figure 9.54      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% fig9_54a.m is a script to generate Fig. 9.54, the step response
% for the fuel/air ratio with a non-linear sensor.  A (3,3)
% Pade approximant is used to approximate the delay.
clf;
% construct the F/A dynamics with the sensor time-constant too
f =[-50     0     0;
     0    -1     0;
    10    10   -10];

g =[25.0000;
    0.5000;
         0];
h =[0     0     1];
j=0;
[f3,g3,h3,j3 ]=pade(.2,3); %  the delay Pade model
% put the plant and the delay in series
[fp,gp,hp,jp]=series(f,g,h,j,f3,g3,h3,j3); 
% construct the controller
nc=.1*[1 .3];
dc=[1 0]; % the PI controller in polynomial form
[fc,gc,hc,jc]= tf2ss(nc, dc); % put the controller in state form
[fol,gol,hol,jol] = series(fc,gc,hc,jc,fp,gp,hp,jp);
% get a discrete model at Ts = .01
[phi,gam] = c2d(fol,gol,.01);
% keyboard
% form the closed loop difference equation
x=[0 0 0 0 0 0 0]';
yout=[];

for t=0:.01:20;
 y=hol*x ;
 e=.4*sat(150*(.068-y));
 x=phi*x+gam*e;
 yout=[yout [e;y]];
end

t=0:.01:20;
axis( [0 20 -.6 .6]);
subplot(211); 
plot(t,yout(1,:));
xlabel('Time (sec)');
ylabel('e');
title('Fig. 9.54 (b) Error plot for non-linear control of F/A')
grid on;
axis([0 20 0 .09]);
subplot(212);
plot(t,yout(2,:));
xlabel('Time (sec)');
ylabel('F/A');
title('Fig. 9. 54 (c) Output F/A ratio for non-linear control')
grid on;
hold off;



