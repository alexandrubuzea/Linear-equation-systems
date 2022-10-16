clc; close all; clear;
load "parameters.mat";
fid = fopen("myfile.txt", "wt");

fprintf(fid, "\\hline\n");

fprintf(fid, "NR CRT & Dimensiune & GPP(10^{-15}) & GPPS(10^{-15}) & Householder(10^{-15}) & Conjugate Gradient \\\\ \n");
fprintf(fid, "\\hline\n");

times = error_second_type;
for i=1:50
  if (i < 31)
    fdisp(fid, [num2str(i), ' & ', num2str(sizes_array(i)), ' & ', num2str(times(1,i)), ' & ', num2str(times(2,i)), ' & ', num2str(times(3,i)), ' & - \\']);
  else
   fdisp(fid, [num2str(i), ' & ', num2str(sizes_array(i)), ' & ', num2str(times(1,i)), ' & ', num2str(times(2,i)), ' & ', num2str(times(3,i)), ' & ', num2str(times(4,i)), ' \\']);
  endif
  fprintf(fid, "\\hline\n");
endfor

fclose(fid);
