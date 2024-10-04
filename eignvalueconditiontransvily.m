clc
clear

alpha_val = -1:0.1:1; % alpha values from -1 to 1

eigenvalues = zeros(length(alpha_val), 2); % for real and imaginary parts

% the parameter alpha values and find eigenvalues
for i = 1:length(alpha_val)
    alpha = alpha_val(i);
    
    % Find Jacobian 
    Jac = [alpha, -1; 1, alpha] ;
    
    % Find the eigenvalues
    eigs = eig(Jac);
    eigenvalues(i, :) = [real(eigs(1)), imag(eigs(1))]; % store first eigenvalue
end

% Plot eigenvalues in the plane
figure;
plot(eigenvalues(:, 1), eigenvalues(:, 2), 'b--o');
hold on;
plot(eigenvalues(:, 1), -eigenvalues(:, 2), 'b--o');
xlabel('Re');
ylabel('Im');
title('Eigenvalues in the Complex Plane');
grid on;
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ylim([-2,2])
xline(0, 'k--'); %  for Re = 0
yline(0, 'k--'); %  for Im = 0


