SELECT ts, metric, nonNegativeDerivative(metric, ts, INTERVAL 3 NANOSECOND) OVER (PARTITION BY id>3 ORDER BY ts, metric ASC Rows BETWEEN 2 PRECEDING AND 2 FOLLOWING) AS deriv FROM nnd;
