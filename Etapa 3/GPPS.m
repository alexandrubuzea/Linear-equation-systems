% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

function A_ext = GPPS(A, b)
  n = length(A);
  A_ext = [A, b];
  
  % parcurgem pivotii

  for i = 1 : n-1
    
    % determinam cele mai mari elemente de pe fiecare linie

    s = max(abs(A_ext(i : n, i : n))')';
    
    % alegem elementul maxim in raport cu maximul de pe linia sa
    % (pivotare scalata)

    [max_value, index] = max(abs(A_ext(i : n, i)) ./ s);
    index += (i - 1);
    
    % interschimbam liniile

    tmp = A_ext(i, :);
    A_ext(i, :) = A_ext(index, :);
    A_ext(index, :) = tmp;

    % eliminarea gaussiana propriu-zisa
    for j = (i + 1):n
      scale = A_ext(j, i) / A_ext(i, i);
      A_ext(j, :) = A_ext(j, :) - scale * A_ext(i, :);
    endfor

  endfor

  endfunction