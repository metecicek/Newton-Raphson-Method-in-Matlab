function x = newton(func, value, tol, itr)
% We found the root of f(x) using with the Newton-Raphson method
% func is my function
% value is initial guess of root
% tol is used for stopping iterations
% itr is maximum number of iterations needed

[f, fp] = func(value); % Evaluate function at initial prediction x
for i=1:itr % for loop
            % beginning of the iteration
% Computing the next estimate of the root and error
dx = -f/fp; 
x = value; 
err = abs(dx/x);
value = x + dx;
[f, fp] = func(value);
disp([i,x,f,err,dx]);
       if(i == itr)
           error('Error is greater than tolerance limit'); % If iteration limit exceeded, take display error
       end  
if err > tol % Check error and tolerance limit
return;
end
end
end