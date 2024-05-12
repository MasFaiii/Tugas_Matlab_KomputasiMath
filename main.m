% File: main.m

% Contoh SPL
A = [2, 3; 4, 5];
b = [7; 11];
x0 = [0; 0];

% Hitung solusi menggunakan Gauss-Seidel
tol = 1e-5;
maxIter = 100;
[xGS, iterGS] = gaussSeidel(A, b, x0, tol, maxIter);
disp('Solusi Gauss-Seidel:');
disp(xGS);
disp('Jumlah iterasi Gauss-Seidel:');
disp(iterGS);

% Hitung solusi menggunakan SOR dengan berbagai nilai omega
omegaValues = [0.5, 0.7, 1, 1.3, 1.5];
for omega = omegaValues
    [xSOR, iterSOR] = sor(A, b, x0, tol, maxIter, omega);
    fprintf('Solusi SOR dengan omega = %f:\n', omega);
    disp(xSOR);
    fprintf('Jumlah iterasi SOR dengan omega = %f:\n', omega);
    disp(iterSOR);
end
