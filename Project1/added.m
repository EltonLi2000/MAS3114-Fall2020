%Creates the function 'added'
function C = added(A,B)

%First, the function verifies whether matrices A and B have the same size. 
[a1,b1] = size(A);
[a2,b2] = size(B);
C = [];

%If not, 'the matrices are not of the same size and cannot be added', 
%Then assigns an empty matrix to C. After that, the program terminates.
if(a1 ~= a2 || b1 ~= b2)
    disp('the matrices are not of the same size and cannot be added');
    C = [];
    return;
    
%If matrix can be added, calculates sum C of A + B using for loops.
%Outputs and displays C
else
    for i = 1 : a1
    for j = 1 : b1

%Sum C - option 2
C(i,j) = A(i,j) + B(i,j);
    end
    end
end

%Logical “if” statement to verify whether the calculated matrix C matches 
%the output for a built-in MATLAB function A+B. 

M = A + B;
    for i = 1 : a1
    for j = 1 : b1
%If the outputs C and A+B do not match, outputs 'check your code!'
if(M(i,j) ~= C(i,j))
disp('check your code!');
return;
end
    end
    end
end

