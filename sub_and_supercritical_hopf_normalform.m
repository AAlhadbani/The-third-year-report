%% set_arrow
% 1 Plot an example orbit
%%
clear;
alpha=-0.1 %for alpha=-0.1,alpha=0,and alpha=0.1 
omega=-1
beta=-1 %2 cases beta>0 or beta<0 
figure(1);clf;ax=gca;
f=@(t,x)[alpha*x(1)-omega*x(2)+beta*x(1)*(x(1)^2 +x(2)^2); alpha*x(2)+omega*x(1)+beta*x(2)*(x(1)^2 +x(2)^2)]; %normal form
T=pi*4;
xini=[0,0.01]; % initial value
[t,xtraj]=ode45(f,[0,-T],xini);
plot(ax,xtraj(:,1),xtraj(:,2),'b-')
hold on;
[t2,xtraj2]=ode45(f,[0,-T],[0,0.01]);
plot(ax,xtraj2(:,1),xtraj2(:,2),'b-')
plot(ax,xtraj(t<-16*pi,1),xtraj(t<-16*pi,2),'r-','LineWidth',2)
plot(ax,0,0,'go','MarkerFaceColor','g')

xlabel('$x$',Interpreter='latex');
ylabel('$y$',Interpreter='latex');
grid on
%axis equal
%% Draw arrow at approximate middle of orbit
% Optional thrid argument specifies where to put arrows as a fraction of
% the trajectory. After that, name-value pairs can change size and
% shape of arrows (search for default in the source code)
set_arrow(ax,t,xtraj,[0.1,0.3]); % this plots arrows at 10% and 30% of trajectory
%% arrow is distorted -> redraw by calling function  wiotuh arguments
set_arrow();
