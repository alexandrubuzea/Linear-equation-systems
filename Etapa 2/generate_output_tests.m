clc; close all; clear;

% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

% script care genereaza testele de output pe baza testelor de
% input deja generate

num_tests = 50;

in_path = "in/";
out_path = "out/";

for i=1:num_tests

  % citim sistemul corespunzator testului test$i.in

  in_file_path = [in_path, 'test', num2str(i), '.in'];
  
  [A, b] = parse_system(in_file_path);

  % scriem solutia sistemului, data de operatorul \
  out_file_path = [out_path, 'test', num2str(i), '.out'];

  x = A \ b;

  write_solution(x, out_file_path);
endfor
