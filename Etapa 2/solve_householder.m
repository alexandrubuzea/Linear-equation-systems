% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

in_path = "./test.in";

% citirea sistemului
[A, b] = parse_system(in_path);

out_path = "./test.out";

% rularea propriu-zisa a algoritmului
[Q, R] = Householder(A);
x = SST(R, Q' * b);

% afisarea la out
write_solution(x, out_path);