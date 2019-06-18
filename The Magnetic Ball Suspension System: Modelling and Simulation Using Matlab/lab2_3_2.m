%Part 2
x_star = [1; 0; sqrt(9.8)];
u_star = 3*sqrt(9.8);
A =[0 1 0;
    19.6 0 -14/sqrt(5);
    0 0 -3];
B =[0;
    0;
    1];
eigA = eig(A);
[b,a] = ss2tf(A, B, [1 0 0], 0);
Gs = tf(b,a);
poles = roots(a);

% Part 3
[sizes, x0, states] = magball;
[A,B,C,D] = linmod('magball',x_star,u_star);
sys = ss(A, B, C, D);
impulse(sys);
%step(sys);
xlim([0,2]);