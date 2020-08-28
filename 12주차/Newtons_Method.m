clc; clear all; close all;


iteration = 0;
x_k = 0;
x_k_temp = -1;

g_x = (4*(x_k^3)) - (42*(x_k^2)) + (120*(x_k)) - 70;
g_diff = (12*(x_k^2)) - (84*x_k) + 120;
 difference = (x_k - x_k_temp);

fprintf('iter       x_k      x_k - x_k+1     g_x         g_diff\n')
fprintf('----   ----------   ----------   ----------   ----------\n')
fprintf('%3i %12.4f %12.4f %12.4f %12.4f\n',iteration,x_k,difference,g_x,g_diff)

while ( (x_k - x_k_temp) > 0.0002 )
    
    iteration = iteration + 1;
    
    x_k_temp = x_k;
    x_k = x_k - (g_x / g_diff);
    
    g_x = (4*(x_k^3)) - (42*(x_k^2)) + (120*(x_k)) - 70;
    g_diff = (12*(x_k^2)) - (84*x_k) + 120;
    
    difference = (x_k - x_k_temp);
    fprintf('%3i %12.4f %12.4f %12.4f %12.4f\n',iteration,x_k,difference,g_x,g_diff)
end
