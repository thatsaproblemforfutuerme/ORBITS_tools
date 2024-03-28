f =@(E) ME - E + ECC*sin(E);%[radians]
fprime=@(E) -1+ECC*cos(E);%[radians]
TOL = 10^-8;
x_0 = ME-(ECC/2);
[Ef, ~, ~, ~, ~] = newtons(f, fprime, x_0, TOL);