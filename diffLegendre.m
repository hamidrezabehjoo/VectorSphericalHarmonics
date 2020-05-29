function y = diffLegendre(n,m,theta)
m = abs(m);

if m > n
    yy = zeros(1,length(theta));
    normalizationfactor = 0;
    
elseif m == 0
    yy = Legendre(n,1,theta);
    normalizationfactor =  sqrt( ((2*n+1)/2) );
else
    yy = 0.5 * ( (n-m+1)*(n+m)* Legendre(n,m-1,theta) - Legendre(n,m+1,theta) ) ;
    normalizationfactor = sqrt( ((2*n+1)/2)*(factorial(n-m))/(factorial(n+m)) );
end

 y = yy*normalizationfactor;
end
