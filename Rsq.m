function r = Rsq(X,y,theta)
m = length(y);
h = X * theta; % hypothesis function (Theta' * x = theta_0 + theta_1 * x_1)
err = (h - y) .^ 2;
rss = sum(err);
yavg = sum(y)/m;
tss = sum((y-yavg).^2);
r= 1-(rss/tss);
end