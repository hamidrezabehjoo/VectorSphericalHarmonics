function  y = Legendre(n,m,theta)
m = abs(m);
x = cos(theta);

if m > n
    y = zeros(size(theta));
else
    P = legendre(n,x);
    y = (-1)^m * P(m+1,:);
end

end