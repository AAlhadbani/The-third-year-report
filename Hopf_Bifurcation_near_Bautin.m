clc
clear
%Subcritical Hopf Bifurcation and Suoercritical Hopf Bifurcation of normal
%form
alpha = -1:0.01:1; % alpha values
 % parameter 
 beta=1;
 %sigma=-1
%arrays
rstable = NaN(size(alpha)); % to store stable limit cycle values
runstable = NaN(size(alpha)); % to store unstable limit cycle values

%alpha and compute limit cycles
for mu = 1:length(alpha) %mu is an integer not parameter
    if alpha(mu) <= 0 && beta>0
        % Subcritical  
        runstable(mu) = sqrt(-alpha(mu)/beta);
    end
    if alpha(mu) >= 0 && beta<0
        % SuPercritical  
        rstable(mu) = sqrt(-alpha(mu)/beta);
    end
end

% Plot bifurcation diagram
figure(1); clf; 
if beta<0
plot(alpha(~isnan(rstable)), rstable(~isnan(rstable)), 'r-', 'LineWidth',2,'DisplayName','stable po');
end
hold on;
if beta>0
plot(alpha, runstable, 'r--', 'LineWidth', 2,'DisplayName','unstable po');
end
xlabel('\alpha');
ylabel('r' );
xlim([-1,1])
legend();
grid on;
plot(alpha(alpha<0),0*alpha(alpha<0),'g-','LineWidth', 2,'DisplayName','stable eq')
plot(alpha(alpha>0),0*alpha(alpha>0),'b--','LineWidth', 2,'DisplayName','unstable eq')
%%
clc
clear
%Hopf Bifurcation near Bautin
% the differential equation r'=alpha(\mu)*r+\beta*r^3 + sigma* r^5, where sigma=-1
alpha = -1:0.001:1; %  values of alpha
 % parameter 
 beta=-1;
%r_stable and r_unstable are arrays 
r_stable = NaN(length(alpha),1); % to store stable limit cycle values
r_unstable = NaN(length(alpha),1); % to store unstable limit cycle values
%loop to find limit cycles (period)
for mu = 1:length(alpha) % mu is an integer not parameter
    if alpha(mu) <= 0 && beta>0 && -4*alpha(mu)<=beta^2 % First condition
        A=beta^2 + 4*alpha(mu); % Quadratic Equation
        a = sqrt((beta - sqrt(A)) / 2);   
        b= sqrt((beta + sqrt(A)) / 2);
        r_stable(mu)= b;
        r_unstable(mu)= a;
    end
    if  alpha(mu) >= 0 && beta>0  % Second condition
         A=beta^2 + 4*alpha(mu);
        b=sqrt((beta + sqrt(A)) / 2);
        r_stable(mu)= b;
    end    
      if  alpha(mu) >= 0 && beta<0 
          A=beta^2 + 4*alpha(mu);
         b= sqrt((beta + sqrt(A)) / 2);
         r_stable(mu)= b;
     end  
end
%%
% Plot bifurcation diagram
if beta>0 
    figure(1); clf; 
else
    figure(2); clf;
end
 plot(alpha,r_stable, 'r-', 'LineWidth',2,'DisplayName','stable p.o.');
 hold on;
  plot(alpha,r_unstable, 'g--', 'LineWidth',2,'DisplayName','unstable p.o.');
xlabel('$\alpha$','Interpreter','latex');
ylabel('r','Interpreter','latex' );
xlim([-1,1])
legend();
grid on;
plot(alpha(alpha<0),0*alpha(alpha<0),'m-','LineWidth', 2,'DisplayName','E_s')% Es stable equilibrium
 plot(alpha(alpha>0),0*alpha(alpha>0),'b--','LineWidth', 2,'DisplayName','E_u')% Euunstable equilibrium

