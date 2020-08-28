clc
clear all


a = -10;
b = 10;
sigma = sqrt(4.5)
mu = 5
%n*p = mean = 5 = mu
%np(1-p) = var = 4.5 = sigma^2

Theo_AVG = mu
Theo_VAR = sigma^2
%% Empirical PDF & CDF
sample_num = 100000;
X = sigma* randn(1,sample_num)+mu;
bin_num = 100;
[counts, bin_centers] = hist(X,bin_num);
dx = bin_centers(2)-bin_centers(1);


Empi_PDF = counts./sample_num./dx;
Empi_CDF = cumsum(Empi_PDF.*dx);

Empi_AVG = sum(bin_centers.*Empi_PDF.*dx)
Empi_VAR = sum((bin_centers - Empi_AVG).^2.*Empi_PDF.*dx )

%% Theoretical PDF and CDF

Theo_PDF = 1/(sqrt(2*pi)*sigma) * exp(-(bin_centers-mu).^2./(2*(sigma^2)));


Theo_CDF = (1/2)*(1+erf((bin_centers-mu)/(sigma*sqrt(2))));
%%


figure(1) 

subplot(2,1,1)
bar(bin_centers, Empi_PDF, 'b'); hold on; 
plot(bin_centers, Theo_PDF,'r-','LineWidth',2);
legend('Empirical PDF','Theoretical PDF','Location','Northwest');
grid on;
xlim([-15 10]);
ylim([0 0.3]);
xlabel('x');
ylabel('PDF');

subplot(2,1,2)
bar(bin_centers , Empi_CDF, 'b' ); hold on;
plot(bin_centers  , Theo_CDF, 'r-','LineWidth',2);
legend('Empirical CDF','Theoretical CDF','Location','Northwest');
grid on;
xlim([-15 10]);
ylim([0 1]);
xlabel('x');
ylabel('CDF');
