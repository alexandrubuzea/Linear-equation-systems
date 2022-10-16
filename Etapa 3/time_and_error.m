clc; close all; clear;

num_tests = 50;

elapsed_time = zeros(4, 50);
error_first_type = zeros(4, 50);
error_second_type = zeros(4, 50);
sizes_array = zeros(1, 50);

for i=1:num_tests
  in_file_path = ['in/test', num2str(i), '.in'];
  load (in_file_path);
  out_file_path = ['out/test', num2str(i), '.out'];
  load (out_file_path);
  x_ref = x;
  
  sizes_array(i) = length(b);
  save("./test.in", "A", "b");
  
  % for gpp
  solve_gpp;
  load ("./test.out");
  x_gpp = x;
  elapsed_time(1, i) = gpp_time;
  error_first_type(1, i) = norm(b - A * x_gpp);
  error_second_type(1, i) = norm(x_gpp - x_ref);
  
  % for gpps
  solve_gpps;
  load ("./test.out");
  x_gpps = x;
  elapsed_time(2, i) = gpps_time;
  error_first_type(2, i) = norm(b - A * x_gpps);
  error_second_type(2, i) = norm(x_gpps - x_ref);
  
  % for hh
  solve_householder;
  load ("./test.out");
  x_hh = x;
  elapsed_time(3, i) = hh_time;
  error_first_type(3, i) = norm(b - A * x_hh);
  error_second_type(3, i) = norm(x_hh - x_ref);
  
  % for cg
  solve_conjugate_gradient;
  load ("./test.out");
  x_cg = x;
  elapsed_time(4, i) = cg_time;
  error_first_type(4, i) = norm(b - A * x_cg);
  error_second_type(4, i) = norm(x_cg - x_ref);
endfor

save "parameters.mat" elapsed_time error_first_type error_second_type sizes_array