% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

function [A, b] = parse_system(filename)
  
  % deschidem fisierul de unde trebuie sa parsam input-ul
  fid = fopen(filename, 'r');
  [m, n] = fscanf(fid, "%d%d", "C");
  
  A = zeros(m, n);
  
  % citirea matricei (C-like)
  for i = 1:m
    for j = 1:n
      A(i,j) = fscanf(fid, "%f", "C");
    endfor
  endfor
  
  % citirea vectorului termenilor liberi
  b = zeros(m, 1);
  for i = 1:m
    b(i) = fscanf(fid, "%f", "C");
  endfor
  
  fclose(fid);
endfunction
