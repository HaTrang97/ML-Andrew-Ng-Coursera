function J = computerCost(X,y, theta)
% ComputerCost: Compute cost for linear regression 
% J = computerCost(X,y,theta) computes the cost of using theta as the 
% parameter for linear regression to fit the data points in X and y 

% Initialize some useful values
m = length(y); % number of training examples 

% You need to return the following variables correctly 
J = 0; 

% Compute the cost of a particular choice of theta. Set J to the cost.

h_x = X*theta; %compute h_theta(x) = theta^T * x = x^T * theta
J = sum((h_x - y) .^2)/2/m;

end
