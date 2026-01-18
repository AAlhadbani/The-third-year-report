clc
clear
A=0; % First
B=-1;  % Second
a=pi/4 % delay mu
    stability=dde_stst_eig_cheb(cat(3,A,B),a,'max_number_of_eigenvalues',50,'minimal_real_part',-4,'maxsize',500);
    ev=stability.l0;

figure(1);clf
tiledlayout(1,3)
nexttile
plot(real(ev),imag(ev),'o','LineWidth',2); % Plot linear stability analysis
grid on
xline(0,'LineWidth',2)
xlim([-5,1])
ylim([-12,12])
title('$a=\frac{\pi}{4}$','Interpreter','latex')
xlabel('Re $\lambda$',Interpreter='latex')
ylabel('Im $\lambda$',Interpreter='latex')
nexttile
a=pi/2 % delay mu
    stability=dde_stst_eig_cheb(cat(3,A,B),a,'max_number_of_eigenvalues',50,'minimal_real_part',-4,'maxsize',500);
    ev=stability.l0;
    plot(real(ev),imag(ev),'o','LineWidth',2); % Plot linear stability analysis
grid on
xline(0,'LineWidth',2)
xlim([-2.5,1])
ylim([-12,12])
title('$a=\frac{\pi}{2}$','Interpreter','latex')
xlabel('Re $\lambda$',Interpreter='latex')
ylabel('Im $\lambda$',Interpreter='latex')
nexttile
a=(3*pi)/2 % delay mu
    stability=dde_stst_eig_cheb(cat(3,A,B),a,'max_number_of_eigenvalues',50,'minimal_real_part',-4,'maxsize',500);
    ev=stability.l0;
    plot(real(ev),imag(ev),'o','LineWidth',2); % Plot linear stability analysis
grid on
xline(0,'LineWidth',2)
xlim([-2.5,1])
ylim([-12,12])
title('$a=\frac{3\pi}{2}$','Interpreter','latex')
xlabel('Re $\lambda$',Interpreter='latex')
ylabel('Im $\lambda$',Interpreter='latex')
 exportgraphics(figure(1),'the eigenvalue hopf bif report hopf.png')
 set(gcf, 'Position', [100, 100, 1100, 400]); % Set the figure size
