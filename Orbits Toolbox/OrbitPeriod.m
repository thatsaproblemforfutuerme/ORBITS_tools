function [T] = OrbitPeriod(MassPlanet,semiMajorAxis)
%T in hours
%mass in [kg]
%semiMajorAxis[km]
G = 6.6742*10^-11;
x = 4*pi^2/(G*MassPlanet);%[s^2/m^3]
x = x*(semiMajorAxis^3)*(1000)^3;%[s^2]
T=sqrt(x)*1/60^2;%[hrs]

end