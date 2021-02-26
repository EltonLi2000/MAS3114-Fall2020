%Creates the function 'polint'. Accepts as an input a polynomial P.
function I = polint(P)
% Command 'sym2poly' - Returns numeric coefficients c of input 'P'
c = sym2poly(P);

% Gathers coefficients
c = c(end:-1:1);
A = [];

%'For loop' for integration calculations on 'c' coefficients
    for i = 1:length(c)
        A(i) = c(i)/i;
    end
A = A(end:-1:1);

% Sets arbitrary constant to '3'
A = [A 3];

% Output 'I' is polynomial written in a symbolic form through the 
% standard basis.
I = poly2sym(A);
end