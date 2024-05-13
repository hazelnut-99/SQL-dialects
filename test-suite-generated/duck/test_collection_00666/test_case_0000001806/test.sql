SELECT empid, January, February, March, April
  FROM monthly_sales
    PIVOT(SUM(amount) FOR MONTH IN ('JAN' AS January, 'FEB' AS February, 'MAR' AS March, 'APR' AS April))
      AS p
  ORDER BY EMPID;
