%Figure 4.35       Feedback Control of Dynamic Systems, 4e
%                      Franklin, Powell, Emami
% 
% response comparison of continuous and digital control.
clf;
numC=[1 6];
denC=[1 0];
T=.07;
[numD,denD]=c2dm(numC,denC,T,'t');
sim('fig4_34')
figure(1)
plot(ycd(:,1),ycd(:,2),':')
hold on
plot(ycd(:,1),ycd(:,3))
xlabel('Time (sec)');
ylabel('Output responses');
title('Figure 4.35(a) Output Responses')
gtext('continuous controller')
gtext('discrete controller, T =.07')
grid on
pause;
figure(2)
plot(ucd(:,1),ucd(:,2),':')
hold on
plot(ucd(:,1),ucd(:,3))
title('Figure 4.35(b)  Control Responses')
xlabel('Time (sec)');
ylabel('Control signals');
gtext('continuous controller')
gtext('discrete controller, T=.07')
grid on
pause;
hold off;
close all;
T=.035;
[numD,denD]=c2dm(numC,denC,T,'t');
sim('fig4_34')
figure(1)
plot(ycd(:,1),ycd(:,2),':')
hold on
plot(ycd(:,1),ycd(:,3))
xlabel('Time (sec)');
ylabel('Output responses');
gtext('discrete controller, T =.035')
hold off
pause;
figure(2)
plot(ucd(:,1),ucd(:,2),':')
hold on
plot(ucd(:,1),ucd(:,3))
xlabel('Time (sec)');
ylabel('Control signals');
gtext('discrete controller, T=.035')
grid on
hold off

