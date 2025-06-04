%Hopf bifurcation for DDEs example (Third year report)
syms t r
tau=sym(pi/2);
m=3; % change as you want
B=[1,reshape([cos((1:m)*t);sin((1:m)*t)],1,[])]; %B(t)
Bp=diag([1,2*ones(1,2*m)])*B.';  %B^+(t)
Bdel=subs(B,t,t-tau);   %B(t-tau)
C=int(Bp*Bdel,[0,2*pi])/(2*pi);
R0p=blkdiag(0,kron(diag(1:m),[0,-1;1,0])); %R'(0)
F=R0p-C
N1=null(F) %right nullspace
N2=null(F')%left nullspace
