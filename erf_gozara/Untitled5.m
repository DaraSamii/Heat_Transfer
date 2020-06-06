clear;
clc;
close all;


%% Temprature Ti
%function T = Temprature_Ti(x, t alpha, Ti, T0)
%    X = x / (2 * sqrt( alpha * t));
%    ERF = erf(X);
%    
%    T = ((Ti - T0) * ERF) + T0;
%end
%% Seting Parameters

xl = [0 : 0.01 : 0.2];
tl = [0:0.1:30];
[X, time] = meshgrid(xl, tl);

alpha = 1.4e-5;
Ti = 35;
T0 = 250;

%% Processing Tempratures

T = zeros(size(X,1), size(X,2));

for i = 1:size(X,1)
    for j = 1:size(X,2)
        t = time(i,j);
        x = X(i,j);
        T(i,j) = Temprature_Ti(x, t, alpha, Ti, T0);
        
    end
end

%% Ploting

figure('Position', [1 1 1000 600]);
mesh(time, X, T);
view(135,35);
colorbar();
title('Temprature according to x & t & T1');
xlabel('Time(s)');
ylabel('X(m)');
zlabel('Temprature(C)');


%% 
clear;
clc;
close all;

%% Temprature q0
%%
%function T = Temprature_q0(x, t, Ti, q0, A, alpha, k)
%    X = x/(2 * sqrt(alpha * t));
%    ERF = erf(X);
%   
%    part1 = (2 * q0 * sqrt((alpha * t)/ pi)) / (k * A);
%    part2 = exp(-(x^2)/(4 * alpha * t));
%    
%    part3 = (-q0 * x) / (k * A);
%    part4 = 1 - ERF;
%    
%    T = (part1 * part2) + (part3 * part4) + Ti;
%end


%% Seting Parameters

xl = [0 : 0.01 : 0.1];
tl = [0:0.1:30];
[X, time] = meshgrid(xl, tl);
alpha = 1.4e-5;
Ti = 35;
k = 45;
A = 1;
q0 = 3.25e5;

%% Processing Tempratures

T = zeros(size(X,1), size(X,2));

for i = 1:size(X,1)
    for j = 1:size(X,2)
        t = time(i,j);
        x = X(i,j);
        T(i,j) = Temprature_q0(x,t,Ti,q0, A, alpha, k );
        
    end
end

%% Ploting
figure('Position', [1 1 1000 600]);
mesh(time, X, T);
view(145, 45);
colorbar();
title('Temprature according to x & t & q0');
xlabel('Time(s)');
ylabel('X(m)');
zlabel('Temprature(C)');