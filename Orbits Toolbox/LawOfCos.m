function [c] = LawOfCos(theta,a, b)
%theta in rads
c = sqrt(a^2+b^2-2*a*b*cos(theta));
end