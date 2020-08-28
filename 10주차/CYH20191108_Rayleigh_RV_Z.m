clc
clear all

sigma = 2


%% Empirical PDF & CDF
sample_num = 100000;

X = sigma*randn(1,sample_num)
Y = sigma*randn(1,sample_num)
Z = sqrt(X.^2 + Y.^2)

bin_num = 100;
[counts, bin_centers] = hist(Z,bin_num);
dx = bin_centers(2)-bin_centers(1);

Empi_PDF = counts./sample_num./dx;
Empi_CDF = cumsum(Empi_PDF.*dx);
%% Theoretical PDF and CDF

Theo_PDF = bin_centers/sigma^2 .* exp(-bin_centers.^2/(2*sigma^2));
Theo_CDF = 1-exp(-bin_centers.^2./(2*sigma.^2));

Empi_AVG = sum(bin_centers.*Empi_PDF.*dx);
Empi_VAR = sum((bin_centers - Empi_AVG).^2.*Empi_PDF.*dx );

Theo_AVG = 0;
Theo_VAR = sigma^2;


%%


figure(1) 

subplot(2,1,1)
bar(bin_centers, Empi_PDF, 'b'); hold on; 
plot(bin_centers, Theo_PDF,'r-','LineWidth',2);
legend('Empirical PDF','Theoretical PDF','Location','Northwest');
grid on;
xlim([0 5]);
ylim([0 0.8]);
xlabel('x');
ylabel('PDF');

subplot(2,1,2)
bar(bin_centers , Empi_CDF, 'b' ); hold on;
plot(bin_centers  , Theo_CDF, 'r-','LineWidth',2);
legend('Empirical CDF','Theoretical CDF','Location','Northwest');
grid on;
xlim([0 5]);
ylim([0 1]);
xlabel('x');
ylabel('CDF');
