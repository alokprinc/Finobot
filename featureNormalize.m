function [X_norm, mu, sigma] = featureNormalize(X)

% Hint: You might find the 'mean' and 'std' functions useful.
 % ============================================================    
 mu=mean(X)
 sigma=std(X)
 
 for j=1:1:20
     X_norm(:,j)= (X(:,j)-mu(j))/sigma(j);
 end

% ============================================================

end
