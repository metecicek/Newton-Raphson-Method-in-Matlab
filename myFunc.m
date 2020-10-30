func = @equa;
value = 1;
tol = 1e-6;
itr = 20;
x = newton(func, value, tol, itr)

% My function
function [f, fp] = equa(x)
f = x.^2 - 6; % Function
fp = 2*x; % Derivative of the function
end