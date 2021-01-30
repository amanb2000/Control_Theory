A = [7 2 -3; 4 6 -4; 5 2 -1];

% Computing the eigen vectors of A:
disp("Normalized eigenvectors of A:");
[V,D] = eig(A);
V

% pause

% Computing the non-scaled eigen vectors of A:
disp("Unscaled eigenvectors of A:")
[V,D] = eig(A, "nobalance");

for i = 1:3
    fac = min(V(:,i))
    
    j = 2
    while fac <= 0.001
        M = sort(V(:,i));
        fac = M(j);
        j = j+1;
    end
    disp(fac);
    V(:,i) = V(:,i).*(1/fac);
end

V

% pause

disp("Characteristic polynomial coefficients: ")
P = poly(A);
P

disp("Roots: ")

R = roots(P);
R



disp("Eigen values from eig(): ")
D

[Ve,De] = eig(A);

disp("AV-VD:")
disp(norm(A*Ve-Ve*De))

clc

V = round(V);
D = round(D);
disp("AV-VD (integers):")
disp(norm(A*V-V*D))

clc

disp("Checking diagonalization...");
disp("D (rounded for clarity):")
round(De)
disp("inv(V)*A*V (rounded for clarity):")
round(inv(Ve)*A*Ve)

clc

A = [0 4 3; 0 20 16; 0 -25 -20];
[V,J] = jordan(A);
V
J