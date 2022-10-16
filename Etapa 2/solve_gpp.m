% Copyright Buzea Alexandru-Mihai-Iulian 321CAb

in_path = "./test.in";

% citirea sistemului
[A, b] = parse_system(in_path);

[m, n] = size(A);

out_path = "./test.out";

% rularea propriu-zisa a algoritmului
A_ext = GPP(A, b);

A = A_ext(:, 1:n);
b = A_ext(:, n + 1);

x = SST(A, b);

% scrierea solutiei la out
write_solution(x, out_path);
