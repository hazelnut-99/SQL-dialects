SELECT *,
       expected=x_roll
FROM
  (SELECT x,
          rowid,
          CASE WHEN x=0 THEN 0
          ELSE x*2-1
          END AS expected,
          SUM(x) OVER (ORDER BY rowid ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS x_roll
   FROM temp) t1(x)
WHERE x BETWEEN 892 AND 902
ORDER BY x;
