% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

in_path = "./test.in";
  
% citirea sistemului din fisierul dat
load (in_path);

out_path = "./test.out";

% rularea propriu-zisa a algoritmului
tic();
x = conjugate_gradient(A, b, rand(length(b), 1));
cg_time = toc();
% scriem solutia
save(out_path, "x");