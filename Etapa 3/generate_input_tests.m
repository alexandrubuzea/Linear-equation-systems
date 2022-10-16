clc; close all; clear;

% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

% sisteme generale

general_tests = 30;

% numarul total de teste (diferenta de 20 de teste este de 
% la testele destinate metodei gradientului conjugat)
num_tests = 50;

% calea unde vom genera fisierele de intrare pentru algoritmii
% nostri

in_path = "in/";
out_path = "out/";

% dimensiunile maxime pentru testele generale

max_dim_def = 20;
min_dim_def = 10;

% un coeficient de corectie, pentru a nu avea toti coeficientii
% sistemului subunitari

coef = 10;

for i = 1:general_tests
    
    % crestem complexitatea testelor odata cu numarul
    % testului, asa ca am folosit aceasta formula empirica
    max_dim = max_dim_def + 5 * i;
    min_dim = min_dim_def + 5 * i;

    n = uint32(rand() * (max_dim - min_dim) + min_dim);
    
    % asignarea valorilor random pentru A si b
    A = coef * rand(n, n);
    b = coef * rand(n, 1);
    
    % scriem testul de intrare in fisierul test$i.in
    in_file_path = [in_path, 'test', num2str(i), '.in'];
    save (in_file_path, "A", "b");
    
endfor

% pentru metoda gradientului conjugat, am ales teste mai mari
coef = 1;
max_dim = 300;
min_dim = 200;

for i = (general_tests + 1):num_tests
    n = uint32(rand() * (max_dim - min_dim) + min_dim);
    
    A = coef * rand(n, n);
    
    % matricea A trebuie sa fie pozitiv definita
    A = A * A';
    A += 1 / coef * eye(n);

    b = coef * rand(n, 1);
    
    % scriem testul de intrare in fisierul test$i.in
    in_file_path = [in_path, 'test', num2str(i), '.in'];
    save (in_file_path, "A", "b");
endfor
