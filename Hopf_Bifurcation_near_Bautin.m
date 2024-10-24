clc
clear
%Subcritical Hopf Bifurcation and Suoercritical Hopf Bifurcation of normal
%form
alpha = -1:0.01:1; % alpha values
 % parameter 
 beta=1; %Two cases: (1)if beta=-1 and alpha>0, we get supercritical hopf bif. (2)if beta=1 and alpha<0, we get subcritical hopf bif.
 %sigma=-1
%arrays 
%  limit cycle values (stable and unstable)
rstable = NaN(size(alpha));
runstable = NaN(size(alpha));

%loop to compute limit cycles
for mu = 1:length(alpha) %mu is an integer, is not parameter but alpha is a parameter
    if alpha(mu) <= 0 &&  beta>0 % the first case when alpha<= 0 and  beta>0 (Subcritical hopf bifurcation)
        runstable(mu) = sqrt(-alpha(mu)/beta);
    end
    if alpha(mu) >= 0 && beta<0  %the second case when alpha>= 0 and  beta<0 ( Supercritical hopf bifurcation)
        rstable(mu) = sqrt(-alpha(mu)/beta);
    end
end

% To plot bifurcation diagram
figure(1); clf; 
if beta<0 %first case
plot(alpha(~isnan(rstable)), rstable(~isnan(rstable)), 'r-', 'LineWidth',2,'DisplayName','stable p.o.');
end
hold on;
if beta>0 %second case
plot(alpha, runstable, 'r--', 'LineWidth', 2,'DisplayName','unstable p.o.');
end
xlabel('\alpha');
ylabel('r' );
xlim([-0.5,0.9])
ylim([-0.2,0.9])
legend('Location','northwest');
grid on;
plot(alpha(alpha<0),0*alpha(alpha<0),'g-','LineWidth', 2,'DisplayName','E_s')
plot(alpha(alpha>0),0*alpha(alpha>0),'b--','LineWidth', 2,'DisplayName','E_u')
plot(alpha,alpha,'ko','DisplayName','\Re(\lambda)=\alpha')
hold off
text(-0.4, -0.05, '\Re(\lambda)< 0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0.5, -0.05, '\Re(\lambda)>0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0, -0.05, '\Re(\lambda)=0', 'Color', 'black', 'FontSize', 9)
box('on')

%%
clc
clear
%Subcritical Hopf Bifurcation and Suoercritical Hopf Bifurcation of normal
%form
alpha = -1:0.01:1; % alpha values
 % parameter 
 beta=-1; %Two cases: (1)if beta=-1 and alpha>0, we get supercritical hopf bif. (2)if beta=1 and alpha<0, we get subcritical hopf bif.
 %sigma=-1
%arrays 
%  limit cycle values (stable and unstable)
rstable = NaN(size(alpha));
runstable = NaN(size(alpha));

%loop to compute limit cycles
for mu = 1:length(alpha) %mu is an integer, is not parameter but alpha is a parameter
    if alpha(mu) <= 0 &&  beta>0 % the first case when alpha<= 0 and  beta>0 (Subcritical hopf bifurcation)
        runstable(mu) = sqrt(-alpha(mu)/beta);
    end
    if alpha(mu) >= 0 && beta<0  %the second case when alpha>= 0 and  beta<0 ( Supercritical hopf bifurcation)
        rstable(mu) = sqrt(-alpha(mu)/beta);
    end
end

% To plot bifurcation diagram
figure(1); clf; 
if beta<0 %first case
plot(alpha(~isnan(rstable)), rstable(~isnan(rstable)), 'r-', 'LineWidth',2,'DisplayName','stable p.o.');
end
hold on;
if beta>0 %second case
plot(alpha, runstable, 'r--', 'LineWidth', 2,'DisplayName','unstable p.o.');
end
xlabel('\alpha');
ylabel('r' );
xlim([-0.5,0.8])
ylim([-0.2,0.9])
legend('Location','northwest');
grid on;
plot(alpha(alpha<0),0*alpha(alpha<0),'g-','LineWidth', 2,'DisplayName','E_s')
plot(alpha(alpha>0),0*alpha(alpha>0),'b--','LineWidth', 2,'DisplayName','E_u')
plot(alpha,alpha,'ko','DisplayName','\Re(\lambda)=\alpha')
hold off
text(-0.4, -0.05, '\Re(\lambda) < 0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0.5, -0.05, '\Re(\lambda)>0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0, -0.05, '\Re(\lambda)=0', 'Color', 'black', 'FontSize', 9)
box('on')
%%
clc
clear
%Hopf Bifurcation near Bautin (generalized Hopf bifurcation.)
% the differential equation r'=alpha(\mu)*r+\beta*r^3 + sigma* r^5, where sigma=-1 ,where alpha and beta are parameters 
alpha = -1:0.001:1; %  values of alpha
 beta=1; % we have 2 cases: figure(1) when beta=1 and figure(2) when beta=-1 
%r_stable and r_unstable are arrays 
r_stable = NaN(length(alpha),1); %  limit cycle values(stable)
r_unstable = NaN(length(alpha),1); % unstable limit cycle values (unstable)
%loop to find limit cycles (period)
for mu = 1:length(alpha) % mu is an integer not parameter
    if alpha(mu) <= 0 && beta>0 && -4*alpha(mu)<=beta^2 % First case 
        A=beta^2 + 4*alpha(mu); % Quadratic Equation
        a = sqrt((beta - sqrt(A)) / 2);   
        b= sqrt((beta + sqrt(A)) / 2);
        r_stable(mu)= b;
        r_unstable(mu)= a;
    end
    if  alpha(mu) >= 0 && beta>0  % Second case
         A=beta^2 + 4*alpha(mu);
        b=sqrt((beta + sqrt(A)) / 2);
        r_stable(mu)= b;
    end    
      if  alpha(mu) >= 0 && beta<0  % third case, we have fourth case but no real solution 
          A=beta^2 + 4*alpha(mu);
         b= sqrt((beta + sqrt(A)) / 2);
         r_stable(mu)= b;
     end  
end
%%
% To plot the bifurcation diagram
if beta>0  % first case 
    figure(1); clf; 
else  %other case
    figure(2); clf;
end
 plot(alpha,r_stable, 'r-', 'LineWidth',2,'DisplayName','stable p.o.');
 hold on;
  plot(alpha,r_unstable, 'g--', 'LineWidth',2,'DisplayName','unstable p.o.');
xlabel('$\alpha$','Interpreter','latex');
ylabel('r','Interpreter','latex' );
xlim([-0.3,1])
legend('Location','southeast');
grid on;
plot(alpha(alpha<0),0*alpha(alpha<0),'m-','LineWidth', 2,'DisplayName','E_s')% Es stable equilibrium
 plot(alpha(alpha>0),0*alpha(alpha>0),'b--','LineWidth', 2,'DisplayName','E_u')% Euunstable equilibrium
 plot(alpha(1:20:end),alpha(1:20:end),'ko','DisplayName','\Re(\lambda)=\alpha')
 hold off
text(-0.26, -0.05, '\Re(\lambda) < 0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0.45, -0.05, '\Re(\lambda)>0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0, -0.05, '\Re(\lambda)=0', 'Color', 'black', 'FontSize', 9)
box('on')

%%
clc
clear
%Hopf Bifurcation near Bautin (generalized Hopf bifurcation.)
% the differential equation r'=alpha(\mu)*r+\beta*r^3 + sigma* r^5, where sigma=-1 ,where alpha and beta are parameters 
alpha = -1:0.001:1; %  values of alpha
 beta=-1; % we have 2 cases: figure(1) when beta=1 and figure(2) when beta=-1 
%r_stable and r_unstable are arrays 
r_stable = NaN(length(alpha),1); %  limit cycle values(stable)
r_unstable = NaN(length(alpha),1); % unstable limit cycle values (unstable)
%loop to find limit cycles (period)
for mu = 1:length(alpha) % mu is an integer not parameter
    if alpha(mu) <= 0 && beta>0 && -4*alpha(mu)<=beta^2 % First case 
        A=beta^2 + 4*alpha(mu); % Quadratic Equation
        a = sqrt((beta - sqrt(A)) / 2);   
        b= sqrt((beta + sqrt(A)) / 2);
        r_stable(mu)= b;
        r_unstable(mu)= a;
    end
    if  alpha(mu) >= 0 && beta>0  % Second case
         A=beta^2 + 4*alpha(mu);
        b=sqrt((beta + sqrt(A)) / 2);
        r_stable(mu)= b;
    end    
      if  alpha(mu) >= 0 && beta<0  % third case, we have fourth case but no real solution 
          A=beta^2 + 4*alpha(mu);
         b= sqrt((beta + sqrt(A)) / 2);
         r_stable(mu)= b;
     end  
end
%% To plot the bifurcation diagram
if beta>0  % first case 
    figure(1); clf; 
else  %other case
    figure(2); clf;
end
 plot(alpha,r_stable, 'r-', 'LineWidth',2,'DisplayName','stable p.o.');
 hold on;
  plot(alpha,r_unstable, 'g--', 'LineWidth',2,'DisplayName','unstable p.o.');
xlabel('$\alpha$','Interpreter','latex');
ylabel('r','Interpreter','latex' );
xlim([-0.3,1])
legend('Location','northwest');
grid on;
plot(alpha(alpha<0),0*alpha(alpha<0),'m-','LineWidth', 2,'DisplayName','E_s')% Es stable equilibrium
 plot(alpha(alpha>0),0*alpha(alpha>0),'b--','LineWidth', 2,'DisplayName','E_u')% Euunstable equilibrium
 plot(alpha(1:20:end),alpha(1:20:end),'ko','DisplayName','\Re(\lambda)=\alpha')
hold off
text(-0.26, -0.05, '\Re(\lambda) < 0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0.5, -0.05, '\Re(\lambda)>0', 'Color', 'black', 'FontSize', 9,'FontWeight','normal'); % 
text(0, -0.05, '\Re(\lambda)=0', 'Color', 'black', 'FontSize', 9)
box('on')
