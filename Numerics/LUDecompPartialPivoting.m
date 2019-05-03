function [P L,U ] = LUP(A)

[r c]=size(A);
L=eye(r);
P=eye(r);

for i=1:r %using 
    [no,pos]=max(abs(A(i:end,i)));
    Extra = A(i,:);
        z= P(i,:);
        A(i,:)=A(pos+i-1,:);
        P(i,:)=P(pos+i-1,:);
        A(pos+i-1,:)= Extra;
        P(pos+i-1,:)=z;
    for j=i+1:r %changing 
        mul =A(j,i)/A(i,i);
        L(j,i)=mul;
   A(j,:)= A(j,:)-mul*A(i,:);
  
    end
    U=A;
end
end
