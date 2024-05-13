SELECT ts, metric, nonNegativeDerivative(metric, ts) OVER (PARTITION BY id>3 ORDER BY ts, metric ASC Rows BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS deriv FROM nnd;
