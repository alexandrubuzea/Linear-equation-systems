% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

in_path = "./test.in";

% citirea sistemului
load (in_path);

out_path = "./test.out";

% rularea propriu-zisa a algoritmului
tic();
[Q, R] = Householder(A);
x = SST(R, Q' * b);
hh_time = toc();
% afisarea la out
save(out_path, "x");