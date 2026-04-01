N = [-10 -12 12; 6 7 -4; -3 -4 7]

[V, D] = eig(N);

evec = V(:, find(abs(diag(D) - 2) < 1e-10))

wholeEvec = evec / evec(3)

