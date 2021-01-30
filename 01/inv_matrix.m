n = 500; % Dimensionality of matrix
Q = orth(randn(n,n)); % Making an orthonormal matrix of size nxn
d = logspace(0,-10,n); % Logarithmically spaced vector between 


A = Q*diag(d)*Q'; % A has eigenvalues in d, vectors in Q
A = randn(4, 4)
x = randn(4,1); 
b = A*x;

disp("Inverse of A:")
inv(A)

tic, y = inv(A)*b; toc
disp("Errors from regular inverse");
err = norm(y-x)
res = norm(A*y-b)
pause
tic, z = A\b; toc
disp("Errors from left divide inverse");
err = norm(z-x)
res = norm(A*z-b)

tic, w = b'/A; toc
disp("Errors from right divide inverse");
err = norm(w'-x)
res = norm(A*w'-b)

pause