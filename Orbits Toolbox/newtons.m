function [r, count, x, error, errorRatio] = newtons(f, fprime, x_0, TOL)

x_1 = x_0 - f(x_0)/fprime(x_0);

count = 1;
x = [x_0; x_1];

err = abs(x_1 - x_0);
error = err;
errorRatio = 1; %This value is meaningless as we do not yet have the error
                %at the next step to compute a ratio

while err > TOL
    
    x_0 = x_1;
    x_1 = x_0 - f(x_0)/fprime(x_0);
    
    count = count + 1;
    
    errorSquared = err^2;
    err = abs(x_1 - x_0);
    ratio = err/errorSquared;
    
    x = [x; x_1];
    error = [error; err];
    errorRatio = [errorRatio; ratio];
end

r = x(end);