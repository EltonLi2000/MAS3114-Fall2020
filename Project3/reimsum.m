function T =reimsum(fun,a,b,n)
format compact
N = length(n);

%Riemann sum calculations
for j = 1:N
    h(j) = (b-a)/n(j);

% initialize sums to zero
Il = 0;
Ir = 0;
Im = 0;
    for i = 1:n(j)
        xl = a + h(j)*(i-1);
        xr = a + h(j)*(i);
        xm = a + h(j)*(2*i-1)/2;

        Il = Il + fun(xl)*h(j);
        Ir = Ir + fun(xr)*h(j);
        Im = Im + fun(xm)*h(j);
    end
% populates vectors L,M and R with Riemann sums
L(j,1) = Il;
M(j,1) = Im;
R(j,1) = Ir;
end

A = [n,L,M,R];
%Converts the N-by-4 array A into an N-by-4 table T with the names 
% of the variables
T = array2table(A,'VariableNames',{'n','Left','Middle','Right'});

end
