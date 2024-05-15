SELECT *
  FROM monthly_sales
    PIVOT(SUM(amount) FOR MONTH IN (NULL, 'JAN', 'FEB', 'MAR', 'APR'))
      AS p
  ORDER BY EMPID;
