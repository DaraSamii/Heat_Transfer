function T = Temprature_q0(x, t, Ti, q0, A, alpha, k)
    X = x/(2 * sqrt(alpha * t));
    ERF = erf(X);
    
    part1 = (2 * q0 * sqrt((alpha * t)/ pi)) / (k * A);
    part2 = exp(-(x^2)/(4 * alpha * t));
    
    part3 = (-q0 * x) / (k * A);
    part4 = 1 - ERF;
    
    T = (part1 * part2) + (part3 * part4) + Ti;
end