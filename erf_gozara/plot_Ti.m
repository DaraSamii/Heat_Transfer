clear;
clc;
close all;

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

figure('Position', [10 10 1500 600]);
mesh(time, X, T);
view(135,35);
colorbar();
title('Temprature acording to x & t & T1');
xlabel('Time(s)');
ylabel('X(m)');
zlabel('Temprature(C)');
