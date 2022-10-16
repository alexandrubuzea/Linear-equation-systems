clc; close all; clear;
load "parameters.mat";
fid = fopen("myfile.txt", "wt");

fprintf(fid, "\\hline\n");

fprintf(fid, "Numar test & Dimensiunea sistemului & GPP(ms) & GPPS(ms) & Householder(ms) \\\\ \n");
fprintf(fid, "\\hline\n");

times = elapsed_time(1:3, 1:30) * 1e3;
for i=1:30
  fprintf(fid, "%d & %d & %f & %f & %f \\\\ \n", uint32(i), uint32(sizes_array(i)), times(1, i), times(2, i), times(3, i));
  fprintf(fid, "\\hline\n");
endfor

fprintf(fid, "\n\n\n");
fprintf(fid, "\\hline\n");
fprintf(fid, "Numar test & Dimensiunea sistemului & GPP(ms) & GPPS(ms) & Householder(ms) & Conjugate Gradient(ms) \\\\ \n")
fprintf(fid, "\\hline\n");
times = elapsed_time(:, 31:50) * 1e3;
for i = 31:50
  fprintf(fid, "%d & %d & %f & %f & %f & %f \\\\ \n", uint32(i), uint32(sizes_array(i)), times(1, i-30), times(2, i-30), times(3, i-30), times(4, i-30));
  fprintf(fid, "\\hline\n");
endfor
fclose(fid);
