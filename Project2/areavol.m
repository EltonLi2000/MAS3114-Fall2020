%Creates the function 'areavol'
function D = areavol(A)

% Variable to determine if parallelogram or parallelipiped
isParallelogram = 0; 

% Gets the number of columns to detect different vectors
% If it's 2 then it will be parallelogram, otherwise it's a parallelipiped
if isequal(size(A,2),2) 
    isParallelogram = 1;
end

% Checks if linearly dependent
r = rank(A); % gets the rank
[rows, ~] = size(A); % gets the number of rows

% rows > rank, so these vectors are not independent.
if rows > r 
    if isequal(isParallelogram, 1) % Cannot be built - parallelogram
        disp('Parallelogram cannot be built.');
    else    % Cannot be built - parallelpiped
        disp('Parallelipiped cannot be built.');
    end
        D = 0;    %Assigns empty output to D and terminates program
        return;
end

D = abs(det(A)); % gets the determinant

if isequal(isParallelogram, 1) % if parallelogram, outputs area
    disp('The area of the parallelogram is');
else % if parallelpiped, outputs volume
    disp('The volume of the parallelpiped is');
end

end