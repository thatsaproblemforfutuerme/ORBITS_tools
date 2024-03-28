function [E] = bigE(ecc,theta)
%theta in degrees
E = 2*atand(sqrt((1-ecc)/(1+ecc))*tand(theta/2));
end