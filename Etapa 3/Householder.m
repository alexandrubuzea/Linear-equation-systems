% Copyright 2021 Buzea Alexandru-Mihai-Iulian 321CAb

function [Q, R] = Householder(A)
  [m, n] = size(A);
  
  dim = min(m-1, n);
  
  % initializam matricea ortogonala de returnat
  Q = eye(m);
  
  for i = 1:dim
    
    % vectorul care se doreste a fi reflectat
    z = A(i:m, i);
    
    % vectorul care genereaza reflectorul elementar Householder

    v = [zeros(i-1, 1); z];
    v(i) += sign(A(i,i)) * norm(z);
    
    % reflectorul elementar efectiv
    H = eye(m) - 2 * v * v' / (v' * v);
    
    % reflectarea vectorului coloana din matricea A si
    % actualizarea lui Q

    A = H * A;
    Q = H * Q;
  endfor
  
  % actualizarile finale
  Q = Q';
  R = A;
endfunction
