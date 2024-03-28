function [Vradial] = radialSpeedElipse(mu,h,ecc,theta)
%theta in degrees
Vradial = (mu/h)*(ecc)*sind(theta);
end