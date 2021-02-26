%Creates the function symmetric
function [] = symmetric(A)

n = size(A,1);      %Creates nxn matrix
p = 7;              %p=7 for closetozeroroundoff function
x = isequal(A,A');  %Checks for symmetry statement

%If not, outputs msg that matrix is not symmetric and terminates program
if x == 0
    fprintf('A is not symmetric')
    return
end

%Constructs an orthogonal diagonalization
[P,D] = eig(A)

%Verifies for orthogonal diagonalization
if closetozeroroundoff(A*P-P*D,p) == zeros(n) & ...
        closetozeroroundoff(inv(P)-P',p) == zeros(n)
    disp('AP = PD and P is orthogonal')
else
    disp('What is wrong?!')
end
end %end of function
