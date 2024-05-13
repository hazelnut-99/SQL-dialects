SELECT ts, metric, nonNegativeDerivative(metric, ts, INTERVAL 6 SECOND) OVER (PARTITION BY id>3 ORDER BY ts, metric ASC Rows BETWEEN 1 PRECEDING AND UNBOUNDED FOLLOWING) AS deriv FROM nnd;
