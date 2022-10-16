% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

in_path = "./test.in";
  
% citirea sistemului din fisierul dat
[A, b] = parse_system(in_path);

out_path = "./test.out";

% rularea propriu-zisa a algoritmului
x = conjugate_gradient(A, b, rand(length(b), 1));

% scriem solutia
write_solution(x, out_path);