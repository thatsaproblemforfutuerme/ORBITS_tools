function [ecc] = eccentricity(ra,rp)
ecc = (ra-rp)/(ra+rp);
end