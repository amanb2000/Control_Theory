A = [0 1; -4 -2]; 
B = [0; 4]; 
C = [1 0]; 
D = 0;

sys = ss(A, B, C, D);


[Y,T,X]=step(sys);

plot(T,X);


clc

sys_init = ss(A, [0; 0], C, D);
x0 = [0; 1];
[Y,T,X]=initial(sys_init,x0);

plot(T,X);

clc

t=0:0.01:20;
u=sin(t);

[Y,t,X]=lsim(sys,u,t,x0);

plot(t,X);

clc

[b, a] = ss2tf(A, B, C, D);
sys = tf(b, a);

sys

