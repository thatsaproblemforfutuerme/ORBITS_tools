function [fpAngR] = FlightPathAngleRads(ecc,theta)
%theta in rads 
%flight path in rads 
k1 = ecc*sin(theta);
k2 = 1+ecc*cos(theta);
fpAngR = atan(k1/k2);
end