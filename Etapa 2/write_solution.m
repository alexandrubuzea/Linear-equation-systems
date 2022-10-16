% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

function write_solution(x, filepath)
  
  % deschidem fisierul unde trebuie sa scriem solutia
  fid = fopen(filepath, "w");
  
  n = length(x);

  % scriem solutia
  for i=1:n
    fprintf(fid, "%f ", x(i));    
  endfor
  
  % inchidem fisierul
  fclose(fid);
endfunction
