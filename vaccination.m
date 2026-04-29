IC = [0.9999;0.0001;0;0;0];
Tf = 400;

alpha = 0.2;
beta = 0.005;
gamma = 0.01;
delta = 0.03;
eta = 0.01;
rho = 0.03;

zeta = 0.018;

[S,I,Q,R,D] = SIRQVModel_244(alpha, beta, gamma, delta, eta, rho, zeta, IC, Tf);

figure();
subplot(2,1,1);
hold on;
plot(0:Tf, S, 'b-')
plot(0:Tf, I, 'r-')
plot(0:Tf, Q, 'k-')
hold off;
legend('S', 'I', 'Q');
title('Set 1')

subplot(2, 1, 2);
hold on;
plot(0:Tf, D, 'r-')
plot(0:Tf, R, 'g-')
hold off;
legend('D', 'R');

figure()
plot(0:Tf, D, 'b');
legend('D')
title('Vaccination during spread')

R0 = 0.73;

IC = [0.95 - R0; 0.05; R0;0;0];

[S1,I1,Q1,R1,D1] = SIRQModel_244(alpha, beta, gamma, delta, eta, rho, IC, Tf);

figure();
subplot(2,1,1);
hold on;
plot(0:Tf, S1, 'b-')
plot(0:Tf, I1, 'r-')
plot(0:Tf, Q1, 'k-')
hold off;
legend('S', 'I', 'Q');
title('Adjustment 1')

subplot(2, 1, 2);
hold on;
plot(0:Tf, D1, 'r-')
plot(0:Tf, R1, 'g-')
hold off;
legend('D', 'R');

figure()
plot(0:Tf, I1, 'r');
legend('I')
title('Herd Immunity')

param0Vec = [alpha; beta; gamma; delta; eta; rho; zeta];
