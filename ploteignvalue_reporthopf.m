clc
clear
A=0; % First
B=-1;  % Second
mu=1.2 % delay mu
    stability=dde_stst_eig_cheb(cat(3,A,B),mu,'max_number_of_eigenvalues',50,'minimal_real_part',-4,'maxsize',500);
    ev=stability.l0;

figure(1);clf
tiledlayout(1,3)
nexttile
plot(real(ev),imag(ev),'o','LineWidth',2); % Plot linear stability analysis
grid on
xline(0,'LineWidth',2)
xlim([-3,1])
ylim([-12,12])
title('\mu=1.2')
xlabel('Re $\lambda$',Interpreter='latex')
ylabel('Im $\lambda$',Interpreter='latex')
nexttile
mu=pi/2 % delay mu
    stability=dde_stst_eig_cheb(cat(3,A,B),mu,'max_number_of_eigenvalues',50,'minimal_real_part',-4,'maxsize',500);
    ev=stability.l0;
    plot(real(ev),imag(ev),'o','LineWidth',2); % Plot linear stability analysis
grid on
xline(0,'LineWidth',2)
xlim([-2.5,1])
ylim([-12,12])
title('\mu=1.5708')
xlabel('Re $\lambda$',Interpreter='latex')
ylabel('Im $\lambda$',Interpreter='latex')
nexttile
mu=1.8 % delay mu
    stability=dde_stst_eig_cheb(cat(3,A,B),mu,'max_number_of_eigenvalues',50,'minimal_real_part',-4,'maxsize',500);
    ev=stability.l0;
    plot(real(ev),imag(ev),'o','LineWidth',2); % Plot linear stability analysis
grid on
xline(0,'LineWidth',2)
xlim([-2.5,1])
ylim([-12,12])
title('\mu=1.8')
xlabel('Re $\lambda$',Interpreter='latex')
ylabel('Im $\lambda$',Interpreter='latex')
 exportgraphics(figure(1),'the eigenvalue hopf bif report hopf.png')
