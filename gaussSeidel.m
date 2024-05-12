% File: gaussSeidel.m

function [x, iter] = gaussSeidel(A, b, x0, tol, maxIter)
% Fungsi untuk menyelesaikan SPL menggunakan metode Gauss-Seidel

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
            x(j) = sum / A(j, j);
        end

        % Hentikan iterasi jika error sudah di bawah toleransi
        if norm(A * x - b) < tol
            break;
        end

        iter = iter + 1;
    end
end
