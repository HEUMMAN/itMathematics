clc; clear all; close all;

epsilon = 0.00001;
stepsize = (3 - sqrt(5))/2;
a_k = 0;
b_k = 2;
dx = b_k-a_k;
f = b_k^4 - 14*b_k^3 + 60*b_k^2 - 70*b_k;
iteration = 0;

fprintf('iter       a_k          b_k          dx         f(b_k)\n')
fprintf('----   ----------   ----------   ----------  ----------\n')
fprintf('%3i %12.6f %12.6f %12.6f %12.6f\n',iteration,a_k,b_k,dx,f)

while ( (b_k - a_k) > epsilon )
    
    iteration = iteration + 1;
    hat_a_k = a_k + stepsize*(b_k - a_k);
    hat_b_k = b_k - stepsize*(b_k - a_k);
    
    f_a_k = a_k^4 - 14*a_k^3 + 60*a_k^2 - 70*a_k;
    f_b_k = b_k^4 - 14*b_k^3 + 60*b_k^2 - 70*b_k;
    
    f_hat_a_k = hat_a_k^4 - 14*hat_a_k^3 + 60*hat_a_k^2 - 70*hat_a_k;
    f_hat_b_k = hat_b_k^4 - 14*hat_b_k^3 + 60*hat_b_k^2 - 70*hat_b_k;
    
    if (f_hat_a_k < f_hat_b_k)
        check = 1; %% a_k는 유지, hat_b_k를 b_k+1로
    elseif (f_hat_a_k > f_hat_b_k)
        check = 2; %% hat_a_k를 a_k+1로, b_k는 유지
    else
        check = 3; %% hat_a_k를 a_k+1로, hat_b_k를 b_k+1로
    end
    
    switch check
        case 1
            if(f_a_k > f_hat_a_k)
                b_k = hat_b_k;
            else
                b_k = hat_a_k;
            end
            
        case 2
            if(f_hat_b_k < f_b_k)
                a_k = hat_a_k;
            else
                a_k = hat_b_k;
            end
            
        case 3
            a_k = hat_a_k;
            b_k = hat_b_k;
    end
    
    f = b_k^4 - 14*b_k^3 + 60*b_k^2 - 70*b_k;
    dx = b_k-a_k;
    fprintf('%3i %12.6f %12.6f %12.6f %12.6f\n',iteration,a_k,b_k,dx,f)
    
end

     