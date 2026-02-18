f = @(a,y) y.*(100-y) - a;

figure();
bifDiag244(f, 0, 4000, 0, 130)

alpha1 = 1500;
y_eq1 = roots([1 -100 alpha1]);  
y_eq1 = y_eq1(imag(y_eq1)==0);   

eqSols1 = length(y_eq1);

stab1 = 100 - 2*y_eq1;
AS1 = sum(stab1 < 0);  
US1 = sum(stab1 > 0);  

alpha2 = 3000;
y_eq2 = roots([1 -100 alpha2]);  
y_eq2 = y_eq2(imag(y_eq2)==0);   

eqSols2 = length(y_eq2);

stab2 = 100 - 2*y_eq2;
AS2 = sum(stab2 < 0);  
US2 = sum(stab2 > 0);

bifPt = 100^2 / 4;





