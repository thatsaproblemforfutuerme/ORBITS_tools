function [Vtangental] = tangentalSpeedElipse(mu,h,ecc,theta)
%theta in degrees
Vtangental = (mu/h)*(1+(ecc)*cosd(theta));
end