IC = [0.9999;0.0001;0;0;0];
Tf = 400;

alpha = 0.2;
beta = 0.005;
gamma = 0.01;
delta = 0.03;
eta = 0.01;
rho = 0.03;

[S,I,Q,R,D] = SIRQModel_244(alpha, beta, gamma, delta, eta, rho, IC, Tf);

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
plot(0:Tf, I+Q, 'b');
legend('I+Q')
title('Initial Parameters')

Tf = 800;

alpha1 = 0.2;
beta1 = 0.142; 
gamma1 = 0.01;
delta1 = 0.03;
eta1 = 0.01;
rho1 = 0.03;

[S1,I1,Q1,R1,D1] = SIRQModel_244(alpha1, beta1, gamma1, delta1, eta1, rho1, IC, Tf);

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
plot(0:Tf, I1+Q1, 'b');
legend('I+Q')
title('Adjustment 1')

Tf = 1600;


alpha2 = 0.055;
beta2 = 0.005;
gamma2 = 0.01;
delta2 = 0.03;
eta2 = 0.01;
rho2 = 0.03;

[S2,I2,Q2,R2,D2] = SIRQModel_244(alpha2, beta2, gamma2, delta2, eta2, rho2, IC, Tf);

figure();
subplot(2,1,1);
hold on;
plot(0:Tf, S2, 'b-')
plot(0:Tf, I2, 'r-')
plot(0:Tf, Q2, 'k-')
hold off;
legend('S', 'I', 'Q');
title('Adjustment 2')

subplot(2, 1, 2);
hold on;
plot(0:Tf, D2, 'r-')
plot(0:Tf, R2, 'g-')
hold off;
legend('D', 'R');

figure()
plot(0:Tf, I2+Q2, 'b');
legend('I+Q')
title('Adjustment 2')

param1Vec = [alpha1; beta1; gamma1; delta1; eta1; rho1];
param2Vec = [alpha2; beta2; gamma2; delta2; eta2; rho2];

