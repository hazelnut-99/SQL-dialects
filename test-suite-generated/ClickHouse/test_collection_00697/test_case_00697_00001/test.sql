SELECT ANS[1] > 1.9 AND ANS[1] < 2.1 AND ANS[2] > 2.9 AND ANS[2] < 3.1 AND ANS[3] > -3.1 AND ANS[3] < -2.9 FROM
(SELECT stochasticLinearRegression(0.05, 0, 1, 'SGD')(target, p1, p2) AS ANS FROM grouptest GROUP BY user_id ORDER BY user_id LIMIT 0, 1);
