% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb 

function A_ext = GPP(A, b)
  A_ext = [A, b];
  
  n = length(A);
  
  % parcurgem pivotii (elementele diagonale)

  for i=1:n
    
    % determinam cel mai mare element (cautam pivotul cel mai
    % potrivit)
    
    [max_value index] = max(abs(A_ext(i:n, i)));
    index += (i - 1);

    % interschimbam liniile    
    tmp = A_ext(index, :);
    A_ext(index, :) = A_ext(i, :);
    A_ext(i, :) = tmp;
    
    % eliminarea gaussiana efectiva
    for j=(i+1):n
      scale = A_ext(j, i) / A_ext(i, i);
      A_ext(j, :) -= A_ext(i, :) * scale; 
    endfor

  endfor

endfunction
