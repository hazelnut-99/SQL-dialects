SELECT ANS[1] > -1.1 AND ANS[1] < -0.9 AND ANS[2] > 5.9 AND ANS[2] < 6.1 AND ANS[3] > 9.9 AND ANS[3] < 10.1 FROM
(SELECT stochasticLinearRegression(0.05, 0, 1, 'SGD')(target, p1, p2) AS ANS FROM grouptest GROUP BY user_id ORDER BY user_id LIMIT 1, 1);
