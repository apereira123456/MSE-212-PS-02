% Problem 1 Part a
T_1 = [50 60 70 80 90 100];
h_1 = [0.651 0.585 0.524 0.468 0.426 0.384];

T_2 = (T_1 + 273.15) .^ (-1);
h_2 = log(h_1);

P = polyfit(T_2,h_2,1);
m = P(1);
b = P(2);

y = @(x) m * x + b;

figure
scatter(T_2,h_2)
hold on
title('ln(\eta) vs. 1/T (Initial Data)')
xlabel('1/T (1/K)')
ylabel('ln(\eta)')
fplot(y,[0.0026 0.0032])

R = 8.314472;

Q = R * m
h_0 = exp(b)

T_10 = (T_1 + 273.15);

y2 = @(x2) h_0 * exp(Q/(R * x2));

figure
scatter(T_10,h_1)
hold on
title('\eta vs. T (Initial Data)')
xlabel('T (K)')
ylabel('\eta')
fplot(y2,[310 380])

% Problem 1 Part b
h_40 = exp(m / (40 + 273.15) + b)

% Problem 1 Part c
T_3 = [20 30 40];
h_3 = [0.751 0.713 0.686];

T_4 = (T_3 + 273.15) .^ (-1);
h_4 = log(h_3);

T = [T_4 T_2];
h = [h_4 h_2];

figure
scatter(T,h)
hold on
title('ln(\eta) vs. 1/T (Additional Data)')
xlabel('1/T (1/K)')
ylabel('ln(\eta)')
fplot(y,[0.0026 0.0036])

T_0 = T .^(-1);

y2 = @(x2) h_0 * exp(Q/(R * x2));

figure
scatter(T_0,[h_3 h_1])
hold on
title('\eta vs. T (Additional Data)')
xlabel('T (K)')
ylabel('\eta')
fplot(y2,[280 380])