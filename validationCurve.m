function [All_lambda, error_train, error_CV] = validationCurve(X, y, X_CV, y_CV)
All_lambda = [0.0001 0.0005 0.001 0.005 0.01 0.05 0.1 0.5 0 1 5 10 50 100 150 200]';

error_train = zeros(length(All_lambda), 1);
error_CV = zeros(length(All_lambda), 1);



for i = 1:length(All_lambda)
    lambda = All_lambda(i);
    theta          = trainLinearReg(X, y, lambda);
    error_train(i) = costFunctionReg(theta,X, y, 0);
    error_CV(i)   = costFunctionReg( theta,X_CV, y_CV , 0);
end
% =========================================================================

end