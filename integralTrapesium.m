function I = integralTrapesium(f, a, b, n)
% Fungsi untuk menghitung integral numerik menggunakan metode trapesium

    h = (b - a) / n; % Lebar trapesium
    x = a:h:b; % Vektor titik evaluasi
    y = f(x); % Vektor nilai fungsi

    % Hitung luas trapesium
    I = h/2 * (y(1) + 2*sum(y(2:end-1)) + y(end));
end
