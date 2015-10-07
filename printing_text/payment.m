function [ pay ] = payment( loan, term, rate )

n = term*12;
i = rate/1200;
pay = (loan*i)/(1-(1+i)^(-n));

fprintf('The monthly payment is $%.2f\n\n', pay);

fprintf('%s   %s   %s   %s\n', 'Payment', 'Principle', 'Interest',...
        'Balance');
fprintf('-----------------------------------------\n');

balance = loan;

for month = 1:n
    interest = i*balance;
    principle = pay-interest;
    balance = balance-principle;
    fprintf('%4d     %8.2f   %8.2f     %8.2f\n', month, principle,...
            interest, balance);

end

end

