clc
clear all


alpha = 5
lambda = 4



%% Empirical PDF & CDF
sample_num = 100000;

X = gamrnd(alpha,1/lambda,1,sample_num);

bin_num = 100;
[counts, bin_centers] = hist(X,bin_num);
dx = bin_centers(2)-bin_centers(1);

Empi_PDF =counts./sample_num./dx;
Empi_CDF = cumsum(Empi_PDF.*dx);
%% Theoretical PDF and CDF

Theo_PDF = (lambda*((lambda*bin_centers).^(alpha-1)).*exp(-lambda*bin_centers))/(factorial((alpha-1)));
Theo_CDF =  1- (exp(-lambda*bin_centers) .*(lambda .* bin_centers).^(alpha))/factorial(alpha)


Empi_AVG = sum(bin_centers.*Empi_PDF.*dx)
Empi_VAR = sum((bin_centers - Empi_AVG).^2.*Empi_PDF.*dx )

Theo_AVG = alpha/lambda
Theo_VAR = alpha/(lambda^2)


%%


figure(1) 

subplot(2,1,1)
bar(bin_centers, Empi_PDF, 'b'); hold on; 
plot(bin_centers, Theo_PDF,'r-','LineWidth',2);
legend('Empirical PDF','Theoretical PDF','Location','Northwest');
grid on;
xlim([-2 10]);
ylim([0 0.8]);
xlabel('x');
ylabel('PDF');

subplot(2,1,2)
bar(bin_centers , Empi_CDF, 'b' ); hold on;
plot(bin_centers  , Theo_CDF, 'r-','LineWidth',2);
legend('Empirical CDF','Theoretical CDF','Location','Northwest');
grid on;
xlim([-2 10]);
ylim([0 1]);
xlabel('x');
ylabel('CDF');
