% Problem 2 Part a
R = 8.314472;
K_o = 273.15;

syms h_0 Q
eqns = [log(150) == log(h_0) + Q / (R * (1527 + K_o)),log(4 * 10^6) == log(h_0) + Q / (R * (727 + K_o))];
sol = solve(eqns,h_0,Q);

h_0 = double(sol.h_0)
Q = double(sol.Q)

% Problem 2 Part b
h = 4908.7;

% Problem 2 Part c
T = Q / (R * (log(h)- log(h_0))) - K_o