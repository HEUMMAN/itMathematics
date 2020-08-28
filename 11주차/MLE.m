clc; clear all; close all;

V = [1:0.5:5];
sigma = 1;

X_num = 10^7;

for k=1:length(V)
    
    X = zeros(1,X_num);
    size_of_X = size(X);
    data_X = (0.5*k+0.5)*rand(size_of_X);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Data Generation & Voltage mapping%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    if(find(data_X<(0.5*k+0.5)));
      data_X(data_X<(0.5*k+0.5)) = 0;
    end
    
    if(find(data_X>=(0.5*k+0.5)));
      data_X(data_X>=(0.5*k+0.5)) = 1;
    end
    

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %         BER of receiver         %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    N = sigma.*randn(1, 10^7);
    Y = data_X + N;
    
    if(find(Y<(0.5*k+0.5)));
      Y(Y<((0.5*k+0.5))) = 0;
    end
    
    if(find(Y>=(0.5*k+0.5)));
      Y(Y>=((0.5*k+0.5))) = 1;
    end
    
    error_count = (data_X ~= Y);
    
    error_num = nnz(error_count);
    error_prob(k) = error_num/X_num;
   
 
   
end

%%%%%%%%%%% Theory result %%%%%%%%%%%
V_theo = [1:0.01:5];
theo_err_prob = 1/2*erfc(V_theo/sqrt(2)*sigma);

%%%%%%%%%%%% Plot figure %%%%%%%%%%%%
figure(1)
semilogy(V_theo,theo_err_prob,'b-'); hold on;
semilogy(V,error_prob,'ro'); 

grid on;
title('Error Probability');
ylabel('P_e');
xlabel('V(voltage)');
legend('Theory','Simulation');
