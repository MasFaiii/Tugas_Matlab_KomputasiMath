% File: main2.m

% Contoh fungsi
f = @(x) x^3 + 2*x^2 - 5*x + 1;

% Hitung turunan pertama di x = 2 dengan berbagai nilai h
x = 2;
hValues = [0.1, 0.01, 0.001];
for h = hValues
    y = turunanPertama(f, x, h);
    fprintf('Turunan pertama di x = %f dengan h = %f: %f\n', x, h, y);
end
