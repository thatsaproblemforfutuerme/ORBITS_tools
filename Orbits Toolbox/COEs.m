function [h,inc,omega,ecc,w,theta] = COEs(rvec,vvec,mu)
%r [x;y;z]
%v [x;y;z]
%h, specific angular momentum mag
%inc, inclination
%omega,right ascension of ascending node (RAAN)
%ecc, eccentricity
%w, argument of perigee
%theta, true anomaly
hvec = cross(rvec,vvec);
h = norm(hvec);
inc = acosd(hvec(end)/h);%inc in deg * end of hvec is hz
Kvec = [0;0;1];%def k vec
Nvec = cross(Kvec,hvec);
N = norm(Nvec);
Nratio = Nvec(1,1)/N;
if Nvec(2,1) >0
    omega = acosd(Nratio);
elseif Nvec(2,1) <0
    omega = 360-acosd(Nratio);
end
vspeed = norm(vvec);
r = norm(rvec);
eccVec = (1/mu)*(cross(vvec,hvec)-mu*(rvec/r));
ecc = norm(eccVec);
Nedot = dot(Nvec,eccVec);
if eccVec(3)>0
    w = acosd(Nedot/(N*ecc));
elseif eccVec(3)<0
    w = 360-acosd(Nedot/(N*ecc));
end
vradial = (dot(rvec,vvec)/norm(rvec));
r = norm(rvec);
if vradial >= 0
    theta = acosd(dot(eccVec,rvec)/(ecc*r));
elseif vradial <0
    theta = 360-acosd(dot(eccVec,rvec)/(ecc*r));
end

end