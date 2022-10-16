% Copyright Buzea Alexandru-Mihai-Iulian 321CAb

in_path = "./test.in";

% citirea sistemului
load (in_path);

[m, n] = size(A);

out_path = "./test.out";

% rularea propriu-zisa a algoritmului
tic();
A_ext = GPP(A, b);

A = A_ext(:, 1:n);
b = A_ext(:, n + 1);

x = SST(A, b);
gpp_time = toc();

% scrierea solutiei la out
save(out_path, "x");
