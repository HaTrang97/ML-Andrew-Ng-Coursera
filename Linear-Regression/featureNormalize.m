function [X_norm, mu, sigma] = featureNormalize(X)
% featureNormalize(X) returns a normalized version of X where the mean value of each
% feature is 0 and the standard deviation is 1. This is often a good preprocessing step 
% to do when working with learning algorithms.

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% compute the mean of the feature and subtract it from the dataset
mu = mean(X); 
% compute the standard deviation of each feature an divide each feature by it's standard deviation
sigma = std(X); 
X_norm = (X-mu)./sigma;

end
