M = [-1 -12 -2; 0 4 0; 3 12 4]

detVal = det(M)

[V, D] = eig(M);
eigenvalues = sort(diag(D));

eval1 = eigenvalues(1)
evec1 = V(:, find(abs(diag(D) - eigenvalues(1)) < 1e-10))

eval2 = eigenvalues(2)
evec2 = V(:, find(abs(diag(D) - eigenvalues(2)) < 1e-10))

eval3 = eigenvalues(3)
evec3 = V(:, find(abs(diag(D) - eigenvalues(3)) < 1e-10))

evec1_scaled = evec1/evec1(1)
evec2_scaled = evec2/evec2(1)
evec3_scaled = evec3/evec3(1)
