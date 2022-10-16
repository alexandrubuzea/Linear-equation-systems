% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

function write_system(A, b, filepath)
    [m, n] = size(A);
    
    % deschidem fisierul de input unde trebuie sa scriem
    % matricea
    
    fid = fopen(filepath, 'w');
    fprintf(fid, "%d %d\n", uint32(m), uint32(n));
    
    % scrierea matricei
    for i = 1:m
      for j = 1:n
        if j < n
          fprintf(fid, "%f ", A(i,j));
        else
          fprintf(fid, "%f\n", A(i,j));
        endif
      endfor
    endfor
    
    % scriem vectorul termenilor liberi
    for i=1:m
      fprintf(fid, "%f ", b(i));
    endfor
    
    % inchidem fisierul
    fclose(fid);
endfunction
