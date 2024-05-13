SELECT 0 < ans[1] and ans[1] < 0.15 and 0.95 < ans[2] and ans[2] < 1.0 and 0 < ans[3] and ans[3] < 0.05 FROM
(SELECT stochasticLinearRegression(0.000001, 0.01, 100, 'SGD')(number, rand() % 100, number) AS ans FROM numbers(1000));
