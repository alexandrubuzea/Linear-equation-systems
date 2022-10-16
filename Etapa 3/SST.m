% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

function x = SST(A, b)
  [m, n] = size(A);

  x = zeros(n, 1);
  
  % rezolvarea sistemului superior triunghiular prin
  % substitutie inapoi
  for i = n:-1:1
    x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i,i);
  endfor
  
endfunction
