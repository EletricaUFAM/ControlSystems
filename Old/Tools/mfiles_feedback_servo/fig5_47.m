% Fig. 5.47  Feedback Control of Dynamic Systems, 4e 
%             Franklin, Powell, Emami
%  Figure 5.47 Root locus for the heat exchanger, with and without delay

clf
numG=1;
denG=conv([10 1],[60 1]);
sysG=tf(numG, denG);
rlocus(sysG);
axis([-.6 .6 -.45 .45]); grid
hold on
Td=5;
numDe2=[Td^2/12 -Td/2 1];
denDe2=[Td^2/12 +Td/2 1];
numGD=conv(numG,numDe2);
denGD=conv(denG,denDe2);
sysGD= tf(numGD, denGD);
rlocus(sysGD);
gtext('locus without delay')
gtext('locus with(2,2) Pade')
title('Fig. 5.47 Root locus for heat exchanger with and without delay')
z=0:.1:.9;
 wn= .1:.1:.6;
 sgrid(z, wn) 
hold off