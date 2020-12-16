function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
% gradientDescentMulti performs gradien descent to learn theta
% theta = gradientDescentMulti(...) updates theta by taking num_iters gradient steps with learning rate alpha

% initialize some useful values 
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta = theta - alpha/m * (X' * (X*theta -y));
    J_history = computeCostMulti(X, y, theta);
end
end
