%  Figure 3.44      Feedback Control of Dynamic Systems, 4e
%                        Franklin, Powell, Emami
%
function xdot=pendot(t,x)    % function pendot

global Wn2 Uo                  % declare global variables

if t <= 1,
	U = Uo;
	else U = 0;
	end
xdot(1,1)=x(2);                % compute derivative of first state variable
xdot(2,1)=-Wn2*sin(x(1)) + U;  % compute derivative of second state variable
