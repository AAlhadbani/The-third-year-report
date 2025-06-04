%Hopf bifurcation for DDEs example (Third year report)
syms t r
t2=t-(pi/2)
A=[1;2*cos(t);2*sin(t);2*(cos(2*t));2*(sin(2*t));2*(cos(3*t));2*(sin(3*t))] % The matrix B(t) j=0,...m
B=[1,cos(t2),sin(t2),cos(2*t2),sin(2*t2),cos(3*t2),sin(3*t2)] %The matrix B^+(t) j=0,...m
L=(sym(1)/(2*pi)) %fraction before the integral(-1/2pi)
D=L*(A*B) % Multiply fraction by the big matrix
C=int(D,[0,2*pi]) % the integral over interval [0,2pi]
%Rotaition matrix R'(0)
R=[0,  0, 0, 0, 0, 0,  0; 
 0,  0, -1, 0, 0, 0,  0;
0, 1, 0, 0, 0, 0,  0;
 0,  0, 0, 0, -2, 0,  0;
 0,  0, 0, 2, 0, 0,  0;
 0,  0, 0, 0, 0, 0, -3;
 0,  0, 0, 0, 0, 3,  0] %j=0,...m
R1=-1*R %-R
F=R1-C %F equation for DDEs
%null(F)
