%  Figure 7.64      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
% Robust Servo Example 
%% Example 7.27; Figure 7.64
clf;
F=[0 1; 0 -1];
G=[0;1];
H=[1 0];
J=[0];
omega=1;
a=[0 1 0 0;-omega*omega 0 1 0;0 0 0 1;0 0 0 -1];
b=[0;0;G];
% desired closed-loop poles
pc=[-1+sqrt(3)*j;-1-sqrt(3)*j;-sqrt(3)+j;-sqrt(3)-j];
k=place(a,b,pc);
% form controller matrices
k1=k(:,1:2);
ko=k(:,3:4);
ac=[0 1;-omega*omega 0];
bc=-[k(2);k(1)];;
cc=[1 0];
dc=[0];
% controller frequency response
%grid;
%sys=ss(ac,bc,cc,dc);
%bode(sys);
%title('Fig. 7.56: Controller frequency response');
% pause;
% closed-loop system
acl=[F-G*ko G*cc;bc*H ac];
bcl=[0;0;-bc];
ccl=[H 0 0];
dcl=[0];
syscl=ss(acl,bcl,ccl,dcl);
pole(syscl)
tzero(syscl);
clf;
% Frequency response
w=logspace(-2,1);
[mag,ph]=bode(syscl,w);
magdb=20*log10(mag);
subplot(211);
mag1=[ones(size(mag))];
semilogx(w,magdb(:,:));
hold on;
loglog(w,mag1(:,:),'g');
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude (db)');
title('Fig. 7.64: Closed-loop frequency response');
subplot(212);
ph1=[-180*ones(size(ph))];
semilogx(w,ph(:,:));
hold on;
semilogx(w,ph1(:,:),'g');
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase (deg)');

hold off;



