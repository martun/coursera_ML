function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 0.2;
sigma = 0.063246;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%c_vals = [0.01; 0.03; 0.1; 0.3; 1.0; 3.0; 10.0; 30.0];
%sigma_squares = [0.01; 0.03; 0.1; 0.3; 1.0; 3.0; 10.0; 30.0];

c_vals = [0.2; 0.25; 0.3; 0.35; 0.4];
sigma_squares = [0.004; 0.008; 0.01; 0.015; 0.02];

%min_error = 100000;

%for i = 1 : size(c_vals)
%	for j = 1 : size(sigma_squares)
%		model = svmTrain(X, y, c_vals(i), @(x1, x2) gaussianKernel(x1, x2, sqrt(sigma_squares(j))), 0.001, 10);
%		predictions = svmPredict(model, Xval);
%		error = mean(double(predictions ~= yval));
%		if (error < min_error)
%			min_error = error
%			C = c_vals(i)
%			sigma = sqrt(sigma_squares(j))
%		endif
%	endfor;
%endfor;

%C
%sigma


% =========================================================================

end
