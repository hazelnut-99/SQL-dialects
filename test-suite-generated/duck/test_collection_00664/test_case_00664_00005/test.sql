SELECT *
  FROM monthly_sales
    PIVOT(SUM(amount) FOR MONTH IN ('JAN', 'FEB', 'MAR', 'DEC'))
      AS p
  ORDER BY EMPID;
