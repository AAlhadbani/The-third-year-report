clc
clear
A=0; % First
B=-1;  % Second
mu=pi/2; % delay mu
    stability=dde_stst_eig_cheb(cat(3,A,B),mu,'max_number_of_eigenvalues',50,'minimal_real_part',-4,'maxsize',500);
    ev=stability.l0;

figure(1);clf
plot(real(ev),imag(ev),'o','LineWidth',2); % Plot linear stability analysis
grid on
xlim([-2,1])
ylim([-10,10])
xlabel('Re $\lambda$',Interpreter='latex')
ylabel('Im $\lambda$',Interpreter='latex')
 exportgraphics(figure(1),'the eigenvalue hopf bif report hopf.png')