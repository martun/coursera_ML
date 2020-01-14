function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

tmp = X * theta - y;
%size_tmp = size(tmp)
%size_X = size(X)
%size_theta = size(theta)

J = tmp' * tmp / 2 / m + lambda / 2 / m * (theta' * theta - theta(1) * theta(1));
grad = tmp' * X / m;
save = grad(1);
grad += (lambda / m * theta)';
grad(1) = save;

% =========================================================================
grad = grad(:);

end
