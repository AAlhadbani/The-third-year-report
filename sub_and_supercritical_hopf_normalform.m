%%Supercritical and subcritical Hopf bifurcation for β < 0 and  β < 0 
% report hopf bifuraction (second year 2024)
%%
%subcritical when alpha>0
clear;
alpha=0.1  
omega=-1
beta=1 %2 cases beta>0 or beta<0 
figure(1);clf;ax=gca;
f=@(t,x)[alpha*x(1)-omega*x(2)+beta*x(1)*(x(1)^2 +x(2)^2); alpha*x(2)+omega*x(1)+beta*x(2)*(x(1)^2 +x(2)^2)]; %normal form
T=pi*40;
xini=[0,0.1]; % initial value
[t,xtraj]=ode45(f,[0,-T],xini);
plot(ax,xtraj(:,1),xtraj(:,2),'b-')
hold on;
[t2,xtraj2]=ode45(f,[0,-T],[0,0.0001]);
plot(ax,xtraj2(:,1),xtraj2(:,2),'b-')
plot(ax,xtraj(t<-16*pi,1),xtraj(t<-16*pi,2),'g-','LineWidth',3)
plot(ax,0,0,'ro','MarkerFaceColor','r') %equil. is unstable

xlabel('$x$',Interpreter='latex');
ylabel('$y$',Interpreter='latex');
grid on
%axis equal
%%
%subcritical when alpha<0
clear;
alpha=-0.1 
omega=-1
beta=1 %2 cases beta>0 or beta<0 
figure(1);clf;ax=gca;
f=@(t,x)[alpha*x(1)-omega*x(2)+beta*x(1)*(x(1)^2 +x(2)^2); alpha*x(2)+omega*x(1)+beta*x(2)*(x(1)^2 +x(2)^2)]; %normal form
T=pi*40;
xini=[0,0.5]; % initial value
[t,xtraj]=ode45(f,[0,-T],xini);
plot(ax,xtraj(:,1),xtraj(:,2),'b-')
hold on;
[t2,xtraj2]=ode45(f,[0,-T],[0,0.1]);
plot(ax,xtraj2(:,1),xtraj2(:,2),'b-')
plot(ax,xtraj(t<-16*pi,1),xtraj(t<-16*pi,2),'r-','LineWidth',3) %limit cycle is unstable
plot(ax,0,0,'go','MarkerFaceColor','g') %equil. is stable

xlabel('$x$',Interpreter='latex');
ylabel('$y$',Interpreter='latex');
grid on
%axis equal

%% 
%supercritical when alpha>0
clear;
alpha=0.1 
omega=-1
beta=-1 %2 cases beta>0 or beta<0 
figure(1);clf;ax=gca;
f=@(t,x)[alpha*x(1)-omega*x(2)+beta*x(1)*(x(1)^2 +x(2)^2); alpha*x(2)+omega*x(1)+beta*x(2)*(x(1)^2 +x(2)^2)]; %normal form
T=pi*40;
xini=[0,0.5]; % initial value
[t,xtraj]=ode45(f,[0,T],xini);
plot(ax,xtraj(:,1),xtraj(:,2),'b-')
hold on;
[t2,xtraj2]=ode45(f,[0,T],[0,0.001]);
plot(ax,xtraj2(:,1),xtraj2(:,2),'b-')
plot(ax,xtraj(t>16*pi,1),xtraj(t>16*pi,2),'g-','LineWidth',2) %limit cycle is stable
plot(ax,0,0,'ro','MarkerFaceColor','r') %equil. is unstable

xlabel('$x$',Interpreter='latex');
ylabel('$y$',Interpreter='latex');
grid on
%axis equal

%%
% supercritical alpha=0
clear;
alpha=0 
omega=-1
beta=-1 %2 cases beta>0 or beta<0 
figure(1);clf;ax=gca;
f=@(t,x)[alpha*x(1)-omega*x(2)+beta*x(1)*(x(1)^2 +x(2)^2); alpha*x(2)+omega*x(1)+beta*x(2)*(x(1)^2 +x(2)^2)]; %normal form
T=pi*40;
xini=[0,0.1]; % initial value
[t,xtraj]=ode45(f,[0,T],xini);
plot(ax,xtraj(:,1),xtraj(:,2),'b-')
hold on;
[t2,xtraj2]=ode45(f,[0,T],[0,0.0001]);
plot(ax,xtraj2(:,1),xtraj2(:,2),'b-')
plot(ax,xtraj(t<-16*pi,1),xtraj(t<-16*pi,2),'g-','LineWidth',3)
plot(ax,0,0,'go','MarkerFaceColor','g') %equil. is stable

xlabel('$x$',Interpreter='latex');
ylabel('$y$',Interpreter='latex');
grid on
%axis equal
%% subcritical alpha=0
clear;
alpha=0 
omega=-1
beta=1 %2 cases beta>0 or beta<0 
figure(1);clf;ax=gca;
f=@(t,x)[alpha*x(1)-omega*x(2)+beta*x(1)*(x(1)^2 +x(2)^2); alpha*x(2)+omega*x(1)+beta*x(2)*(x(1)^2 +x(2)^2)]; %normal form
%f=@(t,x)[x(1)*(alpha +beta*x(1)^2 - x(1)^4)] %Bautin
T=pi*40;
xini=[0,0.1]; % initial value
[t,xtraj]=ode45(f,[0,-T],xini);
plot(ax,xtraj(:,1),xtraj(:,2),'b-')
hold on;
[t2,xtraj2]=ode45(f,[0,-T],[0,0.0001]);
plot(ax,xtraj2(:,1),xtraj2(:,2),'b-')
plot(ax,xtraj(t>16*pi,1),xtraj(t>16*pi,2),'g-','LineWidth',3)
plot(ax,0,0,'ro','MarkerFaceColor','r')%equil. is unstable

xlabel('$x$',Interpreter='latex');
ylabel('$y$',Interpreter='latex');
grid on
%axis equal
%%
%supercritical when alpha<0
clear;
alpha=-0.1 
omega=-1
beta=-1 %2 cases beta>0 or beta<0 
figure(1);clf;ax=gca;
f=@(t,x)[alpha*x(1)-omega*x(2)+beta*x(1)*(x(1)^2 +x(2)^2); alpha*x(2)+omega*x(1)+beta*x(2)*(x(1)^2 +x(2)^2)]; %normal form
%f=@(t,x)[x(1)*(alpha +beta*x(1)^2 - x(1)^4)] %Bautin
T=pi*40;
xini=[0,0.5]; % initial value
[t,xtraj]=ode45(f,[0,T],xini);
plot(ax,xtraj(:,1),xtraj(:,2),'b-')
hold on;
[t2,xtraj2]=ode45(f,[0,T],[0,0.001]);
plot(ax,xtraj2(:,1),xtraj2(:,2),'b-')
plot(ax,xtraj(t>16*pi,1),xtraj(t>16*pi,2),'g-','LineWidth',2)
plot(ax,0,0,'go','MarkerFaceColor','g') %equil. is stable

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
