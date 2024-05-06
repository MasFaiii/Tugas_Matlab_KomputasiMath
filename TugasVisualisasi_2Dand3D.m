%Nama : Muhammad Anas Rifai
%Nim  : 662021003
%TUGAS VISUALISASI 2D and 3D

%Visualisasi 2D


% %Pertama Visualisasi 2D
% % Definisi parameter
% a = 1; % Faktor skala
% % Rentang nilai parameter t
% t = linspace(0, 25*pi, 1000);
% % Menghitung koordinat x dan y
% x = a * sqrt(t) .* cos(t);
% y = a * sqrt(t) .* sin(t);
% % Plot spiral Fermat
% figure;
% plot(x, y, 'b', 'LineWidth', 2);
% axis equal; % Agar skala sumbu x dan y sama
% % Menambahkan elemen tambahan
% hold on;
% scatter(x(1:20:end), y(1:20:end), 50, t(1:20:end), 'filled');
% colorbar;
% title('Spiral Fermat');
% xlabel('X');
% ylabel('Y');


% %Kedua Visualisasi 2D
% % Inisialisasi
% x = 0;
% y = 0;
% X = [0];
% Y = [0];
% % Transformasi dan iterasi
% for i = 1:100000
%     r = rand;
%     if r <= 0.01
%         x_new = 0;
%         y_new = 0.16 * y;
%     elseif r <= 0.86
%         x_new = 0.85 * x + 0.04 * y;
%         y_new = -0.04 * x + 0.85 * y + 1.6;
%     elseif r <= 0.93
%         x_new = 0.2 * x - 0.26 * y;
%         y_new = 0.23 * x + 0.22 * y + 1.6;
%     else
%         x_new = -0.15 * x + 0.28 * y;
%         y_new = 0.26 * x + 0.24 * y + 0.44;
%     end
%     x = x_new;
%     y = y_new;
%     X = [X x];
%     Y = [Y y];
% end
% % Plotting
% figure;
% plot(X, Y, '.', 'MarkerSize', 1, 'Color', [0.133, 0.545, 0.133]);
% title('Fractal Fern');
% xlabel('X');
% ylabel('Y');
% axis equal;


% %Ketiga Visualisasi 2D
% % Data koordinat garis bujur dan lintang untuk beberapa negara
% % (Data ini hanya sebagai contoh)
% latitudes = [40.7128, 51.5074, 48.8566, -25.2744]; % Lintang
% longitudes = [-74.0060, -0.1278, 2.3522, 133.7751]; % Bujur
% names = {'New York', 'London', 'Paris', 'Sydney'};
% % Plot peta dunia
% worldmap('World');
% load coastlines;
% % Plot garis lintang dan bujur untuk setiap negara
% for i = 1:numel(names)
%     plotm(latitudes(i), longitudes(i), 'r*', 'MarkerSize', 10);
%     textm(latitudes(i), longitudes(i), names{i}, 'Color', 'blue', 'FontSize', 10);
% end
% % Menambahkan judul
% title('Peta Dunia dengan Lokasi Beberapa Kota');
% % Menambahkan elemen tambahan yang menarik
% hold on;
% scatterm(latitudes, longitudes, 100, 'filled', 'MarkerFaceColor', 'green');


% %Keempat Visualisasi 2D
% % Membuat array dari 0 sampai 2*pi dengan inkrement kecil
% x = 0:0.1:2*pi;
% % Menghitung nilai sinus dan cosinus
% y1 = sin(x);
% y2 = cos(x);
% % Membuat plot dari sinus dan cosinus
% plot(x, y1, 'b', 'LineWidth', 2);
% hold on;
% plot(x, y2, 'r', 'LineWidth', 2);
% % Menambahkan efek visual
% axis equal; % Mengatur skala sumbu x dan y agar sama
% xlabel('Sumbu X');
% ylabel('Sumbu Y');
% title('Visualisasi Sinus dan Cosinus');
% % Menambahkan pola antar sinus dan cosinus
% for i = 1:length(x)
%     if mod(i,10) == 0
%         plot([x(i) x(i)], [y1(i) y2(i)], 'k--'); % Garis putus-putus
%     end
% end
% % Menambahkan legenda
% legend('Sinus', 'Cosinus', 'Pola');
% % Menambahkan warna latar belakang
% set(gcf, 'Color', [0.9, 0.9, 0.9]);
% % Menambahkan teks
% text(2, 0.5, 'Visualisasi Antimainstream', 'FontSize', 14, 'Color', 'magenta', 'FontWeight', 'bold');
% % Menambahkan animasi titik berputar
% theta = linspace(0,2*pi,100);
% radius = 1.5;
% x_point = radius * cos(theta);
% y_point = radius * sin(theta);
% h = plot(x_point(1), y_point(1), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'yellow');
% for i = 1:length(theta)
%     set(h, 'XData', x_point(i), 'YData', y_point(i));
%     drawnow;
%     pause(0.05);
% end


% %Kelima Visualisasi 2D
% % Membuat data titik-titik untuk spiral
% theta = linspace(0, 10*pi, 1000);
% r = theta;
% % Konversi dari koordinat polar ke koordinat kartesian
% x = r .* cos(theta);
% y = r .* sin(theta);
% % Plot spiral dengan warna-warni acak
% plot(x, y, 'LineWidth', 2);
% hold on;
% % Menambahkan warna-warni pada setiap titik spiral
% colors = rand(length(x), 3); % Membuat warna acak untuk setiap titik
% scatter(x, y, 30, colors, 'filled');
% % Menambahkan efek visual
% axis equal;
% xlabel('Sumbu X');
% ylabel('Sumbu Y');
% title('Visualisasi Spiral Berwarna-Warni');
% % Menambahkan kotak warna
% c = colorbar;
% c.Label.String = 'Parameter Warna';
% % Menambahkan elemen dekoratif
% text(-10, 0, 'Spiral Berwarna-Warni', 'FontSize', 14, 'Color', 'blue', 'FontWeight', 'bold');



%Visualisasi 3D


% %Pertama Visualisasi 3D
% % Buat koordinat silinder untuk membentuk mawar
% theta = linspace(0,2*pi,100); % Sudut
% r = sin(2*theta).^2; % Radius
% z = cos(2*theta); % Koordinat z
% % Visualisasi
% figure;
% subplot(1,2,1);
% plot3(r.*cos(theta), r.*sin(theta), z, 'r', 'LineWidth', 2); % Plot mawar
% title('Mawar 3D - Bidang XY');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% grid on;
% subplot(1,2,2);
% plot3(r.*cos(theta), r.*sin(theta), z, 'r', 'LineWidth', 2); % Plot mawar
% view(-37.5,30); % Ubah sudut pandang
% title('Mawar 3D - Bidang XYZ');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% grid on;


% %Kedua Visualisasi 3D
% % Parameter spiral logaritmik
% theta = linspace(0, 6*pi, 1000); % Sudut
% a = 0.1; % Parameter skala
% b = 0.3; % Parameter kelengkungan
% c = 1; % Parameter tinggi
% % Koordinat spiral logaritmik
% x = a * exp(b*theta) .* cos(theta);
% y = a * exp(b*theta) .* sin(theta);
% z = c * theta;
% % Visualisasi
% figure;
% plot3(x, y, z, 'b', 'LineWidth', 2); % Plot spiral
% title('Spiral Logaritmik 3D');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% grid on;


% %Ketiga Visualisasi 3D
% % Buat kisi kristal sederhana
% a = 1; % Panjang sisi kubus
% [X,Y,Z] = meshgrid(0:a:3*a, 0:a:3*a, 0:a:3*a); % Grid 3D
% atoms = [X(:), Y(:), Z(:)]; % Koordinat atom
% % Visualisasi
% figure;
% scatter3(atoms(:,1), atoms(:,2), atoms(:,3), 100, 'filled', 'c'); % Plot atom
% title('Struktur Kristal Kubus Sederhana');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% axis equal;
% grid on;


% %Keempat Visualisasi 3D
% theta = linspace(0, 2*pi, 100);
% z = linspace(0, 1, 100);
% [theta, z] = meshgrid(theta, z);
% x = cos(theta);
% y = sin(theta);
% % Menggambar siluet bentuk lngkr
% body_x = [x(:); 0.5*x(:); -0.5*x(:)];
% body_y = [y(:); 0.5*y(:); -0.5*y(:)];
% body_z = [z(:); 0.5*ones(size(z(:))); 0.5*ones(size(z(:)))];
% % Plotting
% figure;
% plot3(body_x, body_y, body_z, 'r');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Silhouette Plot of Circle Friends');
% axis equal;
% grid on;


%Kelima Visualisasi 3D
% Membuat data untuk plot 3D
theta = linspace(0, 2*pi, 100);
z = linspace(-2, 2, 100);
[theta, z] = meshgrid(theta, z);
x = (1 + 0.5*cos(3*theta)).*cos(theta);
y = (1 + 0.5*cos(3*theta)).*sin(theta);
% Membuat plot 3D
figure;
surf(x, y, z, 'EdgeColor', 'none');
colormap(jet); % Mengubah colormap
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Plot 3D Punya Fai');