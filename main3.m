% File: main3.m

% Contoh fungsi
f = @(x) exp(x);

% Hitung integral di [0, 1] dengan berbagai nilai n
a = 0;
b = 1;
nValues = [10, 100, 1000];
for n = nValues
    I = integralTrapesium(f, a, b, n);
    fprintf('Integral di [%f, %f] dengan n = %d: %f (error: %f)\n', a, b, n, I, abs(I - exp(1)));
end
