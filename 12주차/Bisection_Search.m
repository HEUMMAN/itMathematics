clc; clear all; close all;

epsilon = 0.00001;
a_k = 0;
b_k = 2;
c_k = (a_k + b_k)/2;
dx = b_k-a_k;
f_diff = (4*(c_k^3)) - (42*(c_k^2)) + (120*(c_k)) - 70;
iteration = 0;


fprintf('iter       a_k          b_k          ck           dx         f(b_k)\n')
fprintf('----   ----------   ----------   ----------   ----------  ----------\n')
fprintf('%3i %12.6f %12.6f %12.6f %12.6f %12.6f\n',iteration,a_k,b_k,c_k,dx,f_diff)

while ( (b_k - a_k) > epsilon )
    
    iteration = iteration + 1;
    

    
    if (f_diff > 0)
       b_k = c_k;
    elseif (f_diff < 0)
       a_k = c_k;
    else
        break;
    end

    c_k = (a_k + b_k)/2;
    f_diff = (4*(c_k^3)) - (42*(c_k^2)) + (120*(c_k)) - 70;
    dx = b_k-a_k;
 
    fprintf('%3i %12.6f %12.6f %12.6f %12.6f %12.6f\n',iteration,a_k,b_k,c_k,dx,f_diff)
end
