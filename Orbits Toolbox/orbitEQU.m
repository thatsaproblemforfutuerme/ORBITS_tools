function r = orbitEQU(h,mu,ecc,theta)
r = (h^2/mu)*(1/(1+ecc*cos(theta)));
end