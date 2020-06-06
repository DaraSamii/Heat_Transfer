clear;
clc;
close all;

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
figure('Position', [10 10 1200 800]);
mesh(time, X, T);
view(145, 45);
colorbar();
title('Temprature acording to x & t & q0');
xlabel('Time(s)');
ylabel('X(m)');
zlabel('Temprature(C)');