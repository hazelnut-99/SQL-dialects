SELECT ts, metric, nonNegativeDerivative(metric, ts, INTERVAL 4 MICROSECOND) OVER (PARTITION BY id>3 ORDER BY ts, metric ASC Rows BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS deriv FROM nnd;
