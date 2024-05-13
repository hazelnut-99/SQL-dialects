SELECT ts, metric, nonNegativeDerivative(metric, ts, INTERVAL 7 MINUTE) OVER (PARTITION BY id>3 ORDER BY ts, metric ASC Rows BETWEEN UNBOUNDED PRECEDING AND 2 FOLLOWING) AS deriv FROM nnd;
