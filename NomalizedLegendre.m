function  y = NomalizedLegendre(n,m,theta)
m = abs(m);
x = cos(theta);

if m > n
    y = zeros(1,length(theta));
else
    P = legendre(n,x,'norm');
    y = P(m+1,:);
end

end