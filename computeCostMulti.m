function J = computeCostMulti(X, y, theta)


% Initialize some useful values
m = length(y); % number of training examples


J = 0;



h = X * theta; % hypothesis function (Theta' * x = theta_0 + theta_1 * x_1)
err = (h - y) .^ 2;
J = (1 / (2 * m)) * sum(err);


% =========================================================================

end
