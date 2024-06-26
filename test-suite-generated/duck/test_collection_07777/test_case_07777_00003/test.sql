SELECT DISTINCT first_value(col IGNORE NULLS) OVER (ORDER BY i ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING EXCLUDE CURRENT ROW)
FROM (  SELECT * 
        FROM generate_series(1,3000) AS _(i), (SELECT NULL::integer)
          UNION ALL
        SELECT 3001, 1
     ) AS _(i, col)
ORDER BY ALL NULLS FIRST;
