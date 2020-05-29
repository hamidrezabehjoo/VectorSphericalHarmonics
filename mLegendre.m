function y = mLegendre(n,m,theta)
%m = abs(m);
if abs(m) > n || m ==0
        yy = zeros(1,length(theta));
        normalizationfactor = 0;
else
    
yy = (0.5*cos(theta)) .*...
    ( (n-abs(m)+1)*(n+abs(m)) * Legendre(n,abs(m)-1,theta) + Legendre(n,abs(m)+1,theta) )...
     + abs(m) * sin(theta).* Legendre(n,abs(m),theta);
 
  normalizationfactor = sign(m) * sqrt( ((2*n+1)/2)*(factorial(n-abs(m)))/(factorial(n+abs(m))) );

end

    y = yy*normalizationfactor;
end
