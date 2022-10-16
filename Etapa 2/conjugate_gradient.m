% copyright: Wikipedia: https://en.wikipedia.org/wiki/Conjugate_gradient_method

function x = conjugate_gradient(A, b, x0)
  
    % restul dat de solutia initiala (reprezinta una dintre
    % directiile de cautare)

    r = b - A * x0;
    p = r;
    rsold = r' * r;
    x = x0;
    
    % cautam doar maxim n pasi, deoarece algoritmul cauta
    % solutia intr-un subspatiu Krylov ce acopera tot R^n

    for i = 1:length(b)
        Ap = A * p;
        alpha = rsold / (p' * Ap);
        x = x + alpha * p;
        r = r - alpha * Ap;
        rsnew = r' * r;
        
        % daca avem deja o aproximatie buna
        if sqrt(rsnew) < 1e-13
              break
        end
        p = r + (rsnew / rsold) * p;
        rsold = rsnew;
    end
end