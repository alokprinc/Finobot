function [J, grad] = costFunctionReg(theta, X, y, lambda)


% Initialize some useful values
m = length(y); % number of training examples


J = 0;
grad = zeros(size(theta));

% =============================================================
% h = X * theta; % hypothesis function (Theta' * x = theta_0 + theta_1 * x_1)
% err = (h - y) .^ 2;
% J = (1 / (2 * m)) * (sum(err) + (lambda/(2*m)) * sum(theta(2:end).^2));
% grad(1) = (sum((h-y).*X(:,1)))./m;
% 
% for i = 2:length(theta)
%     grad(i) = ((sum((h-y).*X(:,i)))./m) + ((lambda/m).*theta(i));
% end

h = X * theta;
theta_reg = [0;theta(2:end, :);];
J = (1/(2*m)) * sum((h - y).^2) + (lambda/(2*m)) * (theta_reg' * theta_reg);
grad = (1/m) * X' * (h - y) + (lambda/m) * theta_reg;


grad = grad(:);
% =============================================================

end
