%Hopf bifurcation for DDEs example (Third year report)
clear
syms t r a om
tau=sym(pi/2);
om0=1;
m=2;
B=[1,reshape([cos((1:m)*t);sin((1:m)*t)],1,[])]; %B(t)
Bp=diag([1,2*ones(1,2*m)])*B.';  %B^+(t)
gtilde=subs(-B,t,t-om*a);   %B(t-tau)
gt0=subs(gtilde,[a,om],[tau,om0]);   %B(t-tau)
C0=int(Bp*gt0,[0,2*pi])/(2*pi);
R0p=blkdiag(0,kron(diag(1:m),[0,-1;1,0])); %R'(0)
F0=om0*R0p+C0
V=null(F0); %right nullspace
W=null(F0'); %left nullspace
intgt=int(Bp*gtilde,[0,2*pi])/(2*pi); %taktng integral
da=subs(diff(om*R0p+intgt,a),[a,om],[tau,om0]);
do=subs(diff(om*R0p+intgt,om),[a,om],[tau,om0]);
[W'*do*V(:,1),W'*da*V(:,1)] %matrix
