SELECT year, q1, q2, q3, q4
  FROM (SELECT year, quarter, sales FROM sales) AS s
  PIVOT (sum(sales)
    FOR quarter
    IN (1 AS q1, 2 AS q2, 3 AS q3, 4 AS q4));
