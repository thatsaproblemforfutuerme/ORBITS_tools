function [Me] = MeanAnomaly(ecc,bigE)
%mean anomaly
Me = bigE-ecc*sind(bigE);
end