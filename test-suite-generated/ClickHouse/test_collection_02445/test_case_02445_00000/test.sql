SELECT (
           SELECT
               ts,
               metric,
               nonNegativeDerivative(metric, ts) OVER (PARTITION BY metric ORDER BY ts, metric ASC Rows BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS deriv
           FROM nnd
           LIMIT 5, 1
       ) = (
           SELECT
               ts,
               metric,
               nonNegativeDerivative(metric, ts, toIntervalSecond(1)) OVER (PARTITION BY metric ORDER BY ts ASC Rows BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS deriv
           FROM nnd
           LIMIT 5, 1
       );
