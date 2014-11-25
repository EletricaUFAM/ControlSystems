% Fig. 5.34  Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
% script to generate figure 5.34(a) and (b)
% response comparison of continuous and digital lead control.
sim('fig534sim')
figure(1)
plot(ycd(:,1),ycd(:,2),ycd(:,1),ycd(:,3))
% plot(ycd(:,1),ycd(:,2))
title('Figure 5.34 Comparison of analog and digital control(a) Output Response')
xlabel('Time (sec)');
ylabel('Amplitude');
gtext('continuous controller')
gtext('digital controller')
grid
figure(2)
plot(ucd(:,1),ucd(:,2),ucd(:,1),ucd(:,3))
% plot(ucd(:,1),ucd(:,2))
xlabel('Time (sec)');
ylabel('Amplitude');
title('Figure 5.34(b) Control Responses')
gtext('continuous controller')
gtext('digital controller')
grid


