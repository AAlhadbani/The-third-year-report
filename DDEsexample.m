%Hopf bifurcation for DDEs example (Third year report)
syms t r a
tau=sym(pi/2);
m=2; % change as you want
B=[1,reshape([cos((1:m)*t);sin((1:m)*t)],1,[])]; %B(t);
Bp=diag([1,2*ones(1,2*m)])*B.';  %B^+(t)
Bdel=subs(B,t,t-tau); %B(t-tau)
gx=subs(-B,t,t-a);
gx0=subs(gx,a,tau);
A=Bp*(gx0);
C0=int(A,[0,2*pi])/(2*pi);
R0p=blkdiag(0,kron(diag(1:m),[0,-1;1,0])); %R'(0)
F0=R0p+C0;
V=null(F0); %right nullspace
W=null(F0'); %left nullspace
dgxa=diff(gx,a);
dgxa0=subs(dgxa,a,tau);
dgxa1=int(Bp*dgxa0,[0,2*pi])/(2*pi);
W'*dgxa1*V(:,1)
