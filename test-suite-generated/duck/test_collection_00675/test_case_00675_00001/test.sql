SELECT year, q1_total, q1_avg, q2_total, q2_avg, q3_total, q3_avg, q4_total, q4_avg
    FROM (SELECT year, quarter, sales FROM sales) AS s
    PIVOT (sum(sales) AS total, avg(sales) AS avg
      FOR quarter
      IN (1 AS q1, 2 AS q2, 3 AS q3, 4 AS q4));
