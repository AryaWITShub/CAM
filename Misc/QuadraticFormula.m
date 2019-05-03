a = input("a >>> ");
b = input("b >>> ");
c = input("c >>> ");

d = ((b)^2)-(4*a*c);
    
if d == 0
    disp("your equation has one real root:");
    answer=((-b)+sqrt(d))/2*a;
    disp(answer)
    
elseif d>0
    disp("your equation has two real roots");
    answer1=((-b)+sqrt(d))/2*a;
    answer2=((-b)-sqrt(d))/2*a;
    disp(answer1)
    disp(answer2)
    

elseif d < 0
    disp("your equation has no real roots:");
    
else
    disp("idk")
End 
