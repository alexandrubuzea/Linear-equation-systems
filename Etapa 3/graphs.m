clc; close all; clear;
load "parameters.mat"

figure(1);
title("Reprezentarea grafica a timpilor de executie ai metodelor alese"); hold on;
plot(sizes_array, elapsed_time(1, :),  '.', 'color', 'b', 'Markersize', 25); hold on;
plot(sizes_array, elapsed_time(2, :),  '.', 'color', 'g', 'Markersize', 25); hold on;
plot(sizes_array, elapsed_time(3, :),  '.', 'color', 'r', 'Markersize', 25); hold on;
plot(sizes_array(31:50), elapsed_time(4, 31:50), '.', 'Markersize', 25); hold on;
xlabel('Dimensiunea sistemului de rezolvat'); hold on;
ylabel('Timpul de rulare (ms)'); hold on;
legend('GPP', 'GPPS', 'Householder', 'Conjugate Gradient', 'location', 'NorthWest'); hold on;

err = log(error_first_type);
figure(2);
title("Reprezentarea grafica a erorilor metodelor alese"); hold on;
plot(sizes_array, err(1, :),  '.', 'color', 'b', 'Markersize', 25); hold on;
plot(sizes_array, err(2, :),  '.', 'color', 'g', 'Markersize', 25); hold on;
plot(sizes_array, err(3, :),  '.', 'color', 'r', 'Markersize', 25); hold on;
plot(sizes_array(31:50), err(4, 31:50), '.', 'Markersize', 25); hold on;
xlabel('Dimensiunea sistemului de rezolvat'); hold on;
ylabel('Logaritmul erorii de tip 1'); hold on;
legend('GPP', 'GPPS', 'Householder', 'Conjugate Gradient', 'location', 'NorthWest'); hold on;

err = log(error_second_type);
figure(3);
title("Reprezentarea grafica a erorilor metodelor alese"); hold on;
plot(sizes_array, err(1, :),  '.', 'color', 'b', 'Markersize', 25); hold on;
plot(sizes_array, err(2, :),  '.', 'color', 'g', 'Markersize', 25); hold on;
plot(sizes_array, err(3, :),  '.', 'color', 'r', 'Markersize', 25); hold on;
plot(sizes_array(31:50), err(4, 31:50), '.', 'Markersize', 25); hold on;
xlabel('Dimensiunea sistemului de rezolvat'); hold on;
ylabel('Logaritmul erorii de tip 2'); hold on;
legend('GPP', 'GPPS', 'Householder', 'Conjugate Gradient', 'location', 'NorthWest'); hold on;