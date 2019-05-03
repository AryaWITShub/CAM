function ans = GaussJordanInverse(MatA)

% Begin Variable Definitions
Iden = eye(length(MatA));
InverseMat = [eye(length(MatA))];
MatA_ones = MatA;
len = length(MatA);
% End Variable Definitions


% Begin Square Matrix Check
[temp1,temp2] = size(MatA);
if temp1 ~= temp2
    disp('Error! Matrix needs to be square!')
    return
end
% End Square Matrix Check


% Begin Diagonal ones

for i=1:length(MatA) %Follow the diagonal and get the multiplier to make it 1
    current_element = MatA(i,i);
    current_multiplier = 1/current_element;
    
    for j=1:length(MatA) %Use the multiplier on the whole row of the matrix and on the identity matrix
        current_nest_element = MatA_ones(i,j);
        MatA_ones(i,j) = current_nest_element*current_multiplier;
        Iden(i,j)=Iden(i,j)*current_multiplier;
    end
    
end

          %disp(MatA_ones) %DEBUG
          %disp(Iden) %DEBUG

% End Diagonal Ones

% Begin converting elements to 0

for i=1:len
    for j=1:len
        current_element = MatA_ones(i,j);
        
    end
end

end
