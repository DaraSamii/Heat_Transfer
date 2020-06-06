function T = Temprature_Ti(x, t, alpha, Ti, T0)
    X = x / (2 * sqrt( alpha * t));
    ERF = erf(X);
    
    T = ((Ti - T0) * ERF) + T0;
end