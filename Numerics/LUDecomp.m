function sol =LU(A)

%Part 1 : check to see if square matrix
    [m n]=size(A); %get size of inputted matrix
    if (m ~= n ) %if m does not equal n
        disp ( 'error - matrix must be square' );
    return;
    end;

% Part 2 : Decomposition of matrix into L and U
  %two empty matrices for L and U of size m x m
  L=zeros(m,m);
  U=zeros(m,m);
 
  for i=1:m
  % Finding L
    for k=1:i-1
        L(i,k)=A(i,k);
        for j=1:k-1
            L(i,k)= L(i,k)-L(i,j)*U(j,k);
        end
    L(i,k) = L(i,k)/U(k,k);
    end
 
  % Finding U
      for k=i:m
        U(i,k) = A(i,k);
        for j=1:i-1
            U(i,k)= U(i,k)-L(i,j)*U(j,k);
        end
      end
  end
 
  for i=1:m
  L(i,i)=1;
  end
