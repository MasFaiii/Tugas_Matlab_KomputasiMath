% File: turunanPertama.m

function y = turunanPertama(f, x, h)
% Fungsi untuk menghitung turunan pertama numerik

    y = (f(x + h) - f(x - h)) / (2 * h);
end
