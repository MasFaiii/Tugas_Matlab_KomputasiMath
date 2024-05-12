% File: sor.m

function [x, iter] = sor(A, b, x0, tol, maxIter, omega)
% Fungsi untuk menyelesaikan SPL menggunakan metode Successive Over Relaxation (SOR)

    n = size(A, 1); % Dimensi SPL
    x = x0; % Vektor solusi awal
    iter = 0; % Jumlah iterasi

    for i = 1:maxIter
        for j = 1:n
            sum = b(j);
            for k = 1:n
                if k ~= j
                    sum = sum - A(j, k) * x(k);
                end
            end
            x(j) = (1 - omega) * x(j) + omega * (sum / A(j, j));
        end

        % Hentikan iterasi jika error sudah di bawah toleransi
        if norm(A * x - b) < tol
            break;
        end

        iter = iter + 1;
    end
end
