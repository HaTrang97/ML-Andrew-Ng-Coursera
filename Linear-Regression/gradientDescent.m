function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);
% gradientDescent performs gradient descent to learn theta
% theta = gradientDescent(...) updates theta by taking num_iters gradient steps 
% with learning rate alpha 

m = length(y)
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta = theta - alpha/m * (X' * (X*theta -y));
    J_history(iter) = computeCost(X,y,theta);
end
end
