SELECT ts, metric, nonNegativeDerivative(metric, ts, INTERVAL 9 DAY) OVER (PARTITION BY id>3 ORDER BY ts, metric ASC Rows BETWEEN 3 PRECEDING AND 3 FOLLOWING) AS deriv FROM nnd;
