function sol = GaussianElimination(A,b)
sol=[];
C=[A b];
[r c]=size(C);
[R, Q] = size(A);

for i=1:r %using 
    for j=i+1:r %changing 
   C(j,:)= C(j,:)-(C(j,i)/C(i,i))*C(i,:);
    end
end
x = zeros(R,1);
    for i = R:-1:1 
        total=0;
        for j=(1+i):Q
            total=total+C(i,j)*x(j);
        end
        x(i)=(C(i,Q+1)-total)/C(i,i);
    end
    sol=[sol,x];
end
